#include "driver/spi_master.h"

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
#define CHP 32  // 16 bit data (32-47) For current channel calibration



#define VOLTAGE_CHANNEL_GAIN        4
#define VOLTAGE_CALIBRATE   		0.875
#define VOLTAGE_LEN         		2048    // RMS Voltage Register Length = 2^11

#define CURRENT_SESITIVITY  		1 		// [V/A]
#define CURRENT_CHANNEL_GAIN		8
#define CURRENT_CALIBRATE			0.875
#define CURRENT_LEN					65536

#define V_REF               		1.23
#define K_VOLTAGE_T         		2       // for CT
#define K_INT               		0.815   // for 50 Hz
#define K_INT_CONPENSATE    		1.004
#define K_DIF               		0.6135  // for 50 Hz

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
float stpm10_read_vrms(uint32_t data[]);
float stpm10_read_irms(uint32_t data[]);
