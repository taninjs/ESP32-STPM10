/*
 * sdhc.h
 *
 *  Created on: Mar 9, 2019
 *      Author: taninjs
 */

#ifndef MAIN_INCLUDE_SD_H_
#define MAIN_INCLUDE_SD_H_

#include <stdint.h>

#define __SD_GET_ENERGY_TYPE_TEXT(type, out) \
	switch (type) {\
	case ACTIVE:\
		out = "active_energy";\
		break;\
	case REACTIVE:\
		out = "reactive_energy";\
		break;\
	case APPARENT:\
		out = "apparent_energy";\
		break;\
	}\


typedef struct {
    int MISO;
    int MOSI;
    int SCK;
    int CS;
} sd_config_t;

typedef enum {
    ACTIVE,
    REACTIVE,
	APPARENT,
} energy_type;

void sd_init(sd_config_t cfg);
double sd_read_total_energy(energy_type type);
void sd_clear_energy_record();
void sd_save_energy_record(int time, unsigned long long energy_counter, double energy_active);
void sd_save_total_energy(double active_energy, double reactive_energy, double apparent_energy);

#endif /* MAIN_INCLUDE_SD_H_ */
