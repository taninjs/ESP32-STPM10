#include <stdio.h>
#include <string.h>

#include "freertos/FreeRTOS.h"
#include "freertos/task.h"
#include "driver/gpio.h"
#include "driver/spi_master.h"
#include "sdkconfig.h"
#include "rom/ets_sys.h"
#include "stpm10.h"
#include "http.h"
#include "wifi.h"
#include "nvs_flash.h"
#include "driver/timer.h"
#include "sd.h"


#define STPM10_SYN GPIO_NUM_13
#define STPM10_SCS GPIO_NUM_27
#define STPM10_SCK GPIO_NUM_14
#define STPM10_SDA GPIO_NUM_25

#define SDHC_D5_SCK  18
#define SDHC_D6_MISO 19
#define SDHC_D7_MOSI 23
#define SDHC_D8_CS   5

#define STPM10_ENERGY_CALIBRATOR 5.8128e-6 // K_AW active energy

spi_device_handle_t spi;
uint32_t stpm10_data[8];

typedef struct {
	uint32_t new;
	uint32_t old;   // previous energy value
	double total;	// Wh
} ENERGY;

ENERGY active_energy   = { .new = 0, .old = 0, .total = 0 };
ENERGY reactive_energy = { .new = 0, .old = 0, .total = 0 };
ENERGY apparent_energy = { .new = 0, .old = 0, .total = 0 };
double P, Q, S;		// Active Power (P), Reactive Power (Q), Apparent Power (S)
double pf;			// power factors

void meter_task(void *pvParameter) {
	stpm10_spi_config_t stpm10_cfg = {
		.SCS = STPM10_SCS,
		.SYN = STPM10_SYN,
		.SCK = STPM10_SCK,
		.SDA = STPM10_SDA,
		.spi = spi
	};

	stpm10_init(stpm10_cfg, WRITE);

	stpm10_write(47, 1);
	stpm10_write(47, 1);

	/* Write STPM10 current calibration bits */
	for (int i = 0; i < 8; i++) {
		stpm10_write(CHP + i, (0xFF >> i) & 0x01);
	}

	/* Write STPM10 voltage calibration bits */
	for (int i = 0; i < 8; i++) {
		stpm10_write(CHV + i, (0x8C >> i) & 0x01);
	}

	stpm10_enter_read_mode();
	vTaskDelay(2000 / portTICK_PERIOD_MS);

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

		active_energy.new = __STPM10_GET_ACTIVE_ENERGY(stpm10_data);
		reactive_energy.new = __STPM10_GET_REACTIVE_ENERGY(stpm10_data);
		apparent_energy.new = __STPM10_GET_APPARENT_ENERGY(stpm10_data);

		double dEa = ((active_energy.new   - active_energy.old  ) & 0x000FFFFF) * STPM10_ENERGY_CALIBRATOR; // [unit]Watt-hr
		double dEr = ((reactive_energy.new - reactive_energy.old) & 0x000FFFFF) * STPM10_ENERGY_CALIBRATOR * 2; // [unit]VAR-hr
		double dEs = ((apparent_energy.new - apparent_energy.old) & 0x000FFFFF) * STPM10_ENERGY_CALIBRATOR; // [unit]VA-hr

		P = dEa/dt; // [unit]Watt
		Q = dEr/dt; // [unit]Watt
		S = dEs/dt; // [unit]Watt
		pf = P/S;

		active_energy.total +=  dEa;
		reactive_energy.total += dEr;
		apparent_energy.total += dEs;

		active_energy.old = active_energy.new;
		reactive_energy.old = reactive_energy.new;
		apparent_energy.old = apparent_energy.new;

		vTaskDelay(20 / portTICK_PERIOD_MS);
	}
}

void print_task(void *pvParameter)
{
	int time = 0;

	for(;;) {
//		for (int i = 0; i < 8; i++) printf("%#.8x\n", stpm10_data[i]);

		int x_u_rms = (stpm10_data[DEV] >> 16) & 0x7FF;
		int x_i_rms = (stpm10_data[DEV] & 0xFFFF);

		printf("config bits: %.7x%.7x\n", stpm10_data[CFH] & 0x0FFFFFFF, stpm10_data[CFL] & 0x0FFFFFFF);
		printf("uRMS: %d (digital), %f V\n", x_u_rms, stpm10_read_vrms(stpm10_data));
		printf("iRMS: %d (digital), %f A\n", x_i_rms, stpm10_read_irms(stpm10_data));
		printf("freq: %f Hz\n", stpm10_read_freq(stpm10_data));

		printf("Active Energy: %f Wh\n", active_energy.total);
		printf("Reactive Energy: %f Wh\n", reactive_energy.total);
		printf("Apparent Energy: %f Wh\n", apparent_energy.total);

		printf("P: %.4f, Q: %.4f, S: %.4f\n", P, Q, S);
		printf("pf: %.2f\n\n", pf);
		printf("time: %d\n\n", time);

		time += 1;
		vTaskDelay(1000 / portTICK_PERIOD_MS);
	}
}

void http_task(void *pvParameter)
{
	app_wifi_wait_connected();
	ESP_LOGI("MAIN", "Connected to AP, begin HTTP example");

	for(;;) {
		float vrms = stpm10_read_vrms(stpm10_data);
		float irms = stpm10_read_irms(stpm10_data);

		http_post(0, active_energy.total, vrms, irms, P, pf);
		vTaskDelay(5000 / portTICK_PERIOD_MS);
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
	active_energy.total = sd_read_total_energy(ACTIVE);
	reactive_energy.total = sd_read_total_energy(REACTIVE);
	apparent_energy.total = sd_read_total_energy(APPARENT);

	for (;;) {
		sd_save_total_energy(apparent_energy.total, reactive_energy.total, apparent_energy.total);
		vTaskDelay(1000 / portTICK_PERIOD_MS);
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
	xTaskCreate(&sd_task, "sd_task", 2048, NULL, 4, NULL);
	xTaskCreate(&meter_task, "meter_task", 4096, NULL, 5, NULL);
	xTaskCreate(&print_task, "print_task", 2048, NULL, 3, NULL);
	xTaskCreate(&http_task, "http_task", 8192, NULL, 4, NULL);
}
