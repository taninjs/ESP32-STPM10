#include "driver/spi_master.h"

#ifndef STPM10_H_
#define STPM10_H_


// STPM10 Registers
#define DAP 0
#define DRP 1
#define DSP 2
#define DFP 3
#define DEV 4
#define DMV 5
#define CFL 6
#define CFH 7

// STPM10 Configuration Bits
#define CHV	24	// 8 bit data (24-31) For voltage channel calibration
#define CHP 32  // 8 bit data (32-39) For primary current channel calibration
#define CHS 40  // 8 bit data (40-47) For secondary current channel calibration

#define VOLTAGE_CHANNEL_GAIN        4
#define VOLTAGE_CALIBRATE   		0.8828
#define VOLTAGE_LEN         		2048    	// RMS Voltage Register Length = 2^11

#define CURRENT_SESITIVITY  		0.00117 	// [V/A]
#define CURRENT_CHANNEL_GAIN		8
#define CURRENT_CALIBRATE			0.875
#define CURRENT_LEN					65536		// RMS Current Register Length 2^16

#define V_REF               		1.23
#define K_VOLTAGE_T         		2       	// for CT
#define K_INT               		0.815   	// for 50 Hz
#define K_INT_CONPENSATE    		1.004
#define K_DIF               		0.6135  	// for 50 Hz

#define Fm							8388608	// 2^23 for 4.194 MHz oscillator
//#define Fm							8000000		// 8e6  for 4 MHz oscillator
#define FREQ_LEN					16384		// Line Frequency Register length 2^14
#define D_INT						65536		// 2^16
#define PI							3.14159

#define __STPM10_GET_ACTIVE_ENERGY(stpm10_data) 		((stpm10_data[DAP] & 0x0FFFFF00) >> 8)
#define __STPM10_GET_REACTIVE_ENERGY(stpm10_data) 		((stpm10_data[DRP] & 0x0FFFFF00) >> 8)
#define __STPM10_GET_APPARENT_ENERGY(stpm10_data) 		((stpm10_data[DSP] & 0x0FFFFF00) >> 8)

typedef struct {
    int SCS;
    int SYN;
    int SCK;
    int SDA;
    spi_device_handle_t spi;
} stpm10_spi_config_t;

typedef enum {
    READ,
    WRITE
} mode;

void stpm10_init(stpm10_spi_config_t cfg, mode m);
void stpm10_enter_write_mode();
void stpm10_enter_read_mode();
void stpm10_write(uint8_t addr, uint8_t val);
void stpm10_read(uint32_t data[], uint8_t len);
int stpm10_parity_check(uint32_t data);
float stpm10_read_vrms(uint32_t data[]);
float stpm10_read_irms(uint32_t data[]);
float stpm10_read_freq(uint32_t data[]);

#endif /* STPM10_H_ */
