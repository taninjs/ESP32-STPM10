/*
 * sdhc.c
 *
 *  Created on: Mar 9, 2019
 *      Author: taninjs
 */
#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include "sd.h"
#include "driver/sdspi_host.h"
#include "driver/sdmmc_host.h"
#include "esp_vfs_fat.h"
#include "sdmmc_cmd.h"


static const char *TAG = "SD";

void sd_init(sd_config_t cfg) {

	// Initializes the slot without card detect (CD) and write protect (WP) signals.
	sdmmc_host_t host = SDSPI_HOST_DEFAULT();
	sdspi_slot_config_t slot_config = SDSPI_SLOT_CONFIG_DEFAULT();
	slot_config.gpio_miso = cfg.MISO;
	slot_config.gpio_mosi = cfg.MOSI;
	slot_config.gpio_sck  = cfg.SCK;
	slot_config.gpio_cs   = cfg.CS;

	esp_vfs_fat_sdmmc_mount_config_t mount_config = {
		.format_if_mount_failed = false,
		.max_files = 5,
		.allocation_unit_size = 16 * 1024
	};

	// Use settings defined above to initialize SD card and mount FAT filesystem.
	// Note: esp_vfs_fat_sdmmc_mount is an all-in-one convenience function.
	// Please check its source code and implement error recovery when developing
	// production applications.
	sdmmc_card_t* card;
	esp_err_t ret = esp_vfs_fat_sdmmc_mount("/sdcard", &host, &slot_config, &mount_config, &card);

	if (ret != ESP_OK) {
		if (ret == ESP_FAIL) {
			ESP_LOGE(TAG, "Failed to mount filesystem. "
				"If you want the card to be formatted, set format_if_mount_failed = true.");
		} else {
			ESP_LOGE(TAG, "Failed to initialize the card (%s). "
				"Make sure SD card lines have pull-up resistors in place.", esp_err_to_name(ret));
		}
		return;
	}

    // Card has been initialized, print its properties
    sdmmc_card_print_info(stdout, card);
}

void sd_save_total_energy(double active_energy, double reactive_energy, double apparent_energy, uint64_t energy)
{
	FILE* f = fopen("/sdcard/total.txt", "w");

	if (f == NULL) {
		ESP_LOGE(TAG, "Failed to open file for writing");
		return;
	}

	fprintf(f, "active_energy=%.6f\n", active_energy);
	fprintf(f, "reactive_energy=%.6f\n", reactive_energy);
	fprintf(f, "apparent_energy=%.6f\n", apparent_energy);
	fprintf(f, "energy_counter=%llu\n", energy);
	fclose(f);
	ESP_LOGI(TAG, "File written");
}

double sd_read_total_energy(energy_type type)
{
	char *selected_type = "\0";

	switch (type) {
	case ACTIVE:
		selected_type = "active_energy";
		break;
	case REACTIVE:
		selected_type = "reactive_energy";
		break;
	case APPARENT:
		selected_type = "apparent_energy";
		break;
	};

	FILE* f = fopen("/sdcard/total.txt", "r");
	if (f == NULL) {
		ESP_LOGE(TAG, "Failed to open file for reading !! returning 0 !!");
		return -1;
	}

	char line[64];
	while(fgets(line, sizeof(line), f) != NULL) {
		char *key = strtok(line, "=");
		char *val = strtok(NULL, "=");

		if (strcmp(key, selected_type) == 0) {
			fclose(f);
			return atof(val);
		}
	}
	fclose(f);

	ESP_LOGE(TAG, "Failed to find key");
	return -1;
}
