#include <stdio.h>
#include <string.h>

#include "freertos/FreeRTOS.h"
#include "freertos/task.h"
#include "driver/gpio.h"
#include "driver/spi_master.h"
#include "sdkconfig.h"
#include "rom/ets_sys.h"
#include "stpm10.h"

#define ms 10

#define GPIO_SYN GPIO_NUM_13
#define GPIO_SCS GPIO_NUM_27
#define GPIO_SCK GPIO_NUM_14
#define GPIO_SDA GPIO_NUM_25

spi_device_handle_t spi;

void app_main()
{
    stpm10_spi_config_t config = {
        .SCS = GPIO_SCS,
        .SYN = GPIO_SYN,
        .SCK = GPIO_SCK,
        .SDA = GPIO_SDA,
        .spi = spi
    };

    stpm10_init(config, WRITE);
    stpm10_write(47, 1);
    stpm10_write(46, 1);

    stpm10_enter_read_mode();

    uint32_t stpm10_data[8];

    for (;;)
    {
        stpm10_read(stpm10_data, 8);

        for (int i = 0; i < 8; i++) {
            printf("%#.8X\n", stpm10_data[i]);
        }
        
        printf("uRMS: %f\n", stpm10_read_vrms(stpm10_data));
        printf("\n");

        vTaskDelay(1000 / ms);
    }
}
