#include <string.h>

#include "stpm10.h"
#include "driver/gpio.h"
#include "driver/spi_master.h"

stpm10_spi_config_t stpm10;

void stpm10_init(stpm10_spi_config_t cfg, mode m) {
    stpm10 = cfg;

    gpio_pad_select_gpio(stpm10.SCS);
    gpio_set_direction(stpm10.SCS, GPIO_MODE_OUTPUT);
    gpio_pad_select_gpio(stpm10.SYN); 
    gpio_set_direction(stpm10.SYN, GPIO_MODE_OUTPUT);

    // Idle state, SYN = 1, SCS = 1
    gpio_set_level(stpm10.SCS, 1);
    gpio_set_level(stpm10.SYN, 1);

    if (m == READ) {
        stpm10_enter_read_mode();
    }
    
    if (m == WRITE) {
        stpm10_enter_write_mode();
    }
}

void stpm10_enter_write_mode() {
    spi_bus_remove_device(stpm10.spi);
    spi_bus_free(HSPI_HOST);
    
    gpio_pad_select_gpio(stpm10.SDA); 
    gpio_set_direction(stpm10.SDA, GPIO_MODE_OUTPUT);
    gpio_pad_select_gpio(stpm10.SCK); 
    gpio_set_direction(stpm10.SCK, GPIO_MODE_OUTPUT);
}

void stpm10_enter_read_mode() {
    spi_bus_config_t bus_config = {
        .miso_io_num = stpm10.SDA,
        .mosi_io_num = -1,    // mosi is not used
        .sclk_io_num = stpm10.SCK,
        .quadwp_io_num = -1,  // quadwp is not used
        .quadhd_io_num = -1,  // quadhd is not used
        .max_transfer_sz = 32 // byte
    };

    spi_device_interface_config_t device_config = {
        .clock_speed_hz = 1 * 1000 * 1000,
        .mode = 3,          
        .spics_io_num = -1,
        .queue_size = 1
    };

    esp_err_t status;
    status = spi_bus_initialize(HSPI_HOST, &bus_config, 1);
    ESP_ERROR_CHECK(status);

    status = spi_bus_add_device(HSPI_HOST, &device_config, &stpm10.spi);
    ESP_ERROR_CHECK(status);
}

void stpm10_write(uint8_t addr, uint8_t val)
{   
    // Enter idle state before start writing
    gpio_set_level(stpm10.SCS, 1);
    gpio_set_level(stpm10.SYN, 1);

    // start writing
    gpio_set_level(stpm10.SCS, 0);
    gpio_set_level(stpm10.SYN, 0);

    // prepare data to send
    //
    // val = 1, addr = 47 (0010 1111)
    // val  << 7  = 1000 0000
    // addr << 1  = 0101 1110
    // -------------------------------------
    // (val << 7) | (addr << 1) = 1101 1110
    val = (val << 7) | (addr << 1);

    for (int i = 0; i < 8; i++)
    {
        ets_delay_us(10);
        gpio_set_level(stpm10.SCK, 0);

        gpio_set_level(stpm10.SDA, (val & 0x80) ? 1 : 0);

        ets_delay_us(10);
        gpio_set_level(stpm10.SCK, 1);
        val = val << 1;
    }
}

void stpm10_read(uint32_t data[], uint8_t len)
{
    // Enter idle state before reading
    gpio_set_level(stpm10.SCS, 1);
    gpio_set_level(stpm10.SYN, 1);

    // Enter latching phase
    gpio_set_level(stpm10.SYN, 0);
    
    // Enter shifting phase
    gpio_set_level(stpm10.SCS, 0);

    // Enter read mode
    gpio_set_level(stpm10.SYN, 1);

    spi_transaction_t t; memset(&t, 0, sizeof(t)); // create empty transaction
    t.flags = SPI_TRANS_USE_RXDATA;
    t.length = 32; // bits

    for (int i = 0; i < len; i++) {
        esp_err_t status = spi_device_transmit(stpm10.spi, &t);
        assert( status == ESP_OK );

        uint32_t val = t.rx_data[0];
        val |= (uint32_t) t.rx_data[1] << 8;
        val |= (uint32_t) t.rx_data[2] << 16;
        val |= (uint32_t) t.rx_data[3] << 24;

        data[i] = val;
    }
}


float stpm10_read_vrms(uint32_t data[]) {
    int x_u_rms = (data[DEV] >> 16) & 0x7FF;
    return x_u_rms * V_REF / (VOLTAGE_GAIN * VOLTAGE_CALIBRATE * K_INT_CONPENSATE * K_INT * K_DIF * VOLTAGE_LEN * K_VOLTAGE_T);
}