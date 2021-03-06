#include <stdio.h>
#include <string.h>

#include "freertos/FreeRTOS.h"
#include "freertos/task.h"
#include "driver/gpio.h"
#include "driver/spi_master.h"
#include "sdkconfig.h"
#include "esp32/rom/ets_sys.h"
#include "stpm10.h"
#include "http.h"
#include "wifi.h"
#include "nvs_flash.h"
#include "driver/timer.h"
#include "sd.h"
#include "driver/uart.h"

#define STPM10_SYN GPIO_NUM_13
#define STPM10_SCK GPIO_NUM_14
#define STPM10_SDA GPIO_NUM_25
#define STPM10_SCS GPIO_NUM_27

#define SDHC_D8_CS   5
#define SDHC_D5_SCK  18
#define SDHC_D6_MISO 19
#define SDHC_D7_MOSI 23

#define UART_TX GPIO_NUM_17
#define UART_RX GPIO_NUM_16

#define STPM10_ENERGY_CALIBRATOR 5.7837e-6 // K_AW active energy [unit] Whr/digit
// #define STPM10_ENERGY_CALIBRATOR 5.82566e-6 

spi_device_handle_t spi;
uint32_t stpm10_data[8];
uint64_t stpm10_type0_energy_counter = 0;

typedef struct {
	long new;
	long old;   // previous energy value
	double total;	// Wh
} ENERGY;

ENERGY active_energy   = { .new = 0, .old = 0, .total = 0 };
ENERGY reactive_energy = { .new = 0, .old = 0, .total = 0 };
ENERGY apparent_energy = { .new = 0, .old = 0, .total = 0 };
double P, Q, S;		// Active Power (P), Reactive Power (Q), Apparent Power (S)
double pf;			// power factors
int apptime = 0;
unsigned long long energy_counter = 0;

void meter_task(void *pvParameter) {
	stpm10_spi_config_t stpm10_cfg = {
		.SCS = STPM10_SCS,
		.SYN = STPM10_SYN,
		.SCK = STPM10_SCK,
		.SDA = STPM10_SDA,
		.spi = spi
	};

	stpm10_init(stpm10_cfg, WRITE);
	vTaskDelay(1000 / portTICK_PERIOD_MS);

	stpm10_write(47, 1);
	stpm10_write(47, 1);

	/* Write STPM10 current calibration bits */
	for (int i = 0; i < 8; i++) {
		stpm10_write(CHP + i, (0x90 >> i) & 0x01);
	}

	/* Write STPM10 voltage calibration bits */
	for (int i = 0; i < 8; i++) {
		stpm10_write(CHV + i, (0x8F >> i) & 0x01);
	}
	

	stpm10_enter_read_mode();
	vTaskDelay(1000 / portTICK_PERIOD_MS);

	// start timer
	timer_config_t timer00_cfg = {
		.divider = 80,
		.counter_dir = TIMER_COUNT_UP,
		.counter_en = TIMER_PAUSE,
		.auto_reload = 0,
	};
	timer_init(TIMER_GROUP_0, TIMER_0, &timer00_cfg);
	timer_set_counter_value(TIMER_GROUP_0, TIMER_0, 0x00000000ULL);
	timer_start(TIMER_GROUP_0, TIMER_0);

	for (;;) {
		double dt = 0;
		// Re-read until pass parity check
		do {
			stpm10_read(stpm10_data, 8);

			// get timer interval and scale unit to hr
			// dt [unit]s * 1 [unit]hr / 3600.0 [unit]s => dt [unit]hr
			timer_get_counter_time_sec(TIMER_GROUP_0, TIMER_0, &dt);
			dt = dt / 3600.0;
		} while (!(
			stpm10_parity_check(stpm10_data[0]) && stpm10_parity_check(stpm10_data[1]) &&
			stpm10_parity_check(stpm10_data[2]) && stpm10_parity_check(stpm10_data[3]) &&
			stpm10_parity_check(stpm10_data[4]) && stpm10_parity_check(stpm10_data[5]) &&
			stpm10_parity_check(stpm10_data[6]) && stpm10_parity_check(stpm10_data[7])
		));

		// reset timer
		timer_set_counter_value(TIMER_GROUP_0, TIMER_0, 0x00000000ULL);

		int x_i_rms = (stpm10_data[DEV] & 0xFFFF);
		if (!__STPM10_IS_NO_LOAD(stpm10_data) && x_i_rms > 10) {

			active_energy.new = __STPM10_GET_ACTIVE_ENERGY(stpm10_data);
			reactive_energy.new = __STPM10_GET_REACTIVE_ENERGY(stpm10_data);
			apparent_energy.new = __STPM10_GET_APPARENT_ENERGY(stpm10_data);

			double dEa = 0;
			if (active_energy.new > active_energy.old){
				dEa = ((active_energy.new   - active_energy.old  ) & 0x000FFFFF) * STPM10_ENERGY_CALIBRATOR; // [unit]Watt-hr
			}
			double dEr = ((reactive_energy.new - reactive_energy.old) & 0x000FFFFF) * STPM10_ENERGY_CALIBRATOR * 2; // [unit]VAR-hr
			double dEs = ((apparent_energy.new - apparent_energy.old) & 0x000FFFFF) * STPM10_ENERGY_CALIBRATOR; // [unit]VA-hr

			energy_counter += ((active_energy.new   - active_energy.old) & 0x000FFFFF);

			P = dEa/dt; // [unit]Watt
			Q = dEr/dt; // [unit]Watt
			S = dEs/dt; // [unit]Watt
			pf = P/S;

			active_energy.total +=  dEa;
			reactive_energy.total += dEr;
			apparent_energy.total += dEs;
			stpm10_type0_energy_counter += __STPM10_GET_ACTIVE_ENERGY(stpm10_data);

			active_energy.old = active_energy.new;
			reactive_energy.old = reactive_energy.new;
			apparent_energy.old = apparent_energy.new;
		} else {
			P = 0.0;
			Q = 0.0;
			S = 0.0;
		}

		vTaskDelay(20 / portTICK_PERIOD_MS);
	}
}

void print_task(void *pvParameter)
{
	for(;;) {
		for (int i = 0; i < 8; i++) printf("%#.8x\n", stpm10_data[i]);

		int x_u_rms = (stpm10_data[DEV] >> 16) & 0x7FF;
		int x_i_rms = (stpm10_data[DEV] & 0xFFFF);

		printf("config bits: %.7x%.7x\n", stpm10_data[CFH] & 0x0FFFFFFF, stpm10_data[CFL] & 0x0FFFFFFF);
		printf("uRMS: %d (digital), %f V\n", x_u_rms, stpm10_read_vrms(stpm10_data));
		printf("iRMS: %d (digital), %f A\n", x_i_rms, stpm10_read_irms(stpm10_data));
		printf("freq: %f Hz\n", stpm10_read_freq(stpm10_data));

		printf("Active Energy: %f Wh\n", active_energy.total);
		printf("Active Energy: %llu (digital)", stpm10_type0_energy_counter);
		printf("Reactive Energy: %f Wh\n", reactive_energy.total);
		printf("Apparent Energy: %f Wh\n", apparent_energy.total);

		printf("P: %.4f, Q: %.4f, S: %.4f\n", P, Q, S);
		printf("pf: %.2f\n\n", pf);

		printf("time: %d, energy_counter: %llu, active_energy: %.5f\n", apptime, energy_counter, active_energy.total / 1000.0);
		vTaskDelay(3000 / portTICK_PERIOD_MS);
	}
}

void http_task(void *pvParameter)
{
	app_wifi_wait_connected();
	ESP_LOGI("MAIN", "Connected to AP, begin HTTP example");

	for(;;) {
		float vrms = stpm10_read_vrms(stpm10_data);
		float irms = stpm10_read_irms(stpm10_data);

		http_post(active_energy.total, vrms, irms, P, Q, S, pf, __STPM10_IS_NO_LOAD(stpm10_data));
		vTaskDelay(3000 / portTICK_PERIOD_MS);
	}
}

void sd_task(void *pvParameter)
{
	sd_config_t sd_cfg = {
		.MISO = SDHC_D6_MISO,
		.MOSI = SDHC_D7_MOSI,
		.SCK = SDHC_D5_SCK,
		.CS = SDHC_D8_CS
	};

	sd_init(sd_cfg);
	sd_clear_energy_record();
	active_energy.total = sd_read_total_energy(ACTIVE);
	reactive_energy.total = sd_read_total_energy(REACTIVE);
	apparent_energy.total = sd_read_total_energy(APPARENT);

	for (;;) {
		sd_save_total_energy(apparent_energy.total, reactive_energy.total, apparent_energy.total);
		sd_save_energy_record(apptime, energy_counter, active_energy.total);
		vTaskDelay(1000 / portTICK_PERIOD_MS);
		apptime += 1;
	}
}

void uart_task(void *pvParameter)
{
	uart_config_t config = {
		.baud_rate = 9600,
		.data_bits = UART_DATA_8_BITS,
		.parity    = UART_PARITY_DISABLE,
		.stop_bits = UART_STOP_BITS_1,
		.flow_ctrl = UART_HW_FLOWCTRL_DISABLE
	};

	uart_param_config(UART_NUM_1, &config);
	uart_set_pin(UART_NUM_1, UART_TX, UART_RX, UART_PIN_NO_CHANGE, UART_PIN_NO_CHANGE);
	uart_driver_install(UART_NUM_1, 2048, 0, 0, NULL, 0);

	for (;;) {
		char msg[80];
		sprintf(msg, "%.2f;%.2f;%.2f;%.2f;%.2f;%.2f;%.2f;\n",
				stpm10_read_vrms(stpm10_data),
				stpm10_read_irms(stpm10_data),
				stpm10_read_freq(stpm10_data),
				S,
				P,
				Q,
				active_energy.total
		);
		// sprintf(msg, "%.2f;%.2f;%.2f;%.2f;%.2f;%.2f;%.2f;\n",
		// 		1.00,
		// 		2.00,
		// 		3.00,
		// 		5.00,
		// 		4.00,
		// 		6.00,
		// 		7.00
		// );
		uart_write_bytes(UART_NUM_1, msg, strlen(msg));
		vTaskDelay(1500 / portTICK_PERIOD_MS);
	}
}

void app_main() {
	/* Initialize Non-Volatile Flash */
	esp_err_t ret = nvs_flash_init();
	if (ret == ESP_ERR_NVS_NO_FREE_PAGES || ret == ESP_ERR_NVS_NEW_VERSION_FOUND) {
	  ESP_ERROR_CHECK(nvs_flash_erase());
	  ret = nvs_flash_init();
	}
	ESP_ERROR_CHECK(ret);

	/* Initialize WIFI connection */
	app_wifi_initialise();

	/* Initialize Tasks */
	xTaskCreate(&sd_task, "sd_task", 4096, NULL, 4, NULL);
	xTaskCreate(&meter_task, "meter_task", 4096, NULL, 5, NULL);
	xTaskCreate(&print_task, "print_task", 2048, NULL, 3, NULL);
	xTaskCreate(&http_task, "http_task", 8192, NULL, 4, NULL);
	xTaskCreate(&uart_task, "uart_task", 2048, NULL, 3, NULL);
}