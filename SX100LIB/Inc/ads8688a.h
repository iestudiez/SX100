/**
 ******************************************************************************
 * @file        : ads8688a.h
 * @author      : Estudiez, Ivan
 * @brief       : ASD8688A Driver
 * @date        : 20/10/2026
 * @version     : 1.0
 ******************************************************************************
 * Change control:
 * 1.0 - (20/10/2026) Release version
 *
 *
 *
 ******************************************************************************
 */

#ifndef INC_ADS8688A_H_
#define INC_ADS8688A_H_

#include "stm32f4xx.h"
#include "system_sx100.h"
#include "spi.h"

// Device definitions
// ----------------------------------------------------------------------------
#define ADS8688A_SPI			SPI2					// ADS8688A SPI peripheral
#define ADS8688A_CS_GPIO		SYSTEM_ADC_CS_GPIO		// ADS8688A CS GPIO
#define ADS8688A_CS_PIN			SYSTEM_ADC_CS_PIN		// ADS8688A CS PIN
#define ADS8688A_CPOL			(0U)					// ADS8688A CPOL
#define ADS8688A_CPHA			(1U)					// ADS8688A CPHA

// ADS8688 Commands
// ----------------------------------------------------------------------------
#define ADC_CMD_NOOP			0x00		// Continue operation in previous mode
#define ADC_CMD_STBY 			0x82		// device is placed into standby mode
#define ADC_CMD_PWDN 			0x83		// device is powered down
#define ADC_CMD_RST 			0x85		// program register is reset to default
#define ADC_CMD_AUTO_RST 		0xA0		// Auto mode enabled following a reset
#define ADC_CMD_MAN_CH0         0xC0		// Channel 0 manual input selected
#define ADC_CMD_MAN_CH1         0xC4		// Channel 1 manual input selected
#define ADC_CMD_MAN_CH2         0xC8		// Channel 2 manual input selected
#define ADC_CMD_MAN_CH3         0xCC		// Channel 3 manual input selected
#define ADC_CMD_MAN_CH4         0xD0		// Channel 4 manual input selected
#define ADC_CMD_MAN_CH5         0xD4		// Channel 5 manual input selected
#define ADC_CMD_MAN_CH6         0xD8		// Channel 6 manual input selected
#define ADC_CMD_MAN_CH7         0xDC		// Channel 7 manual input selected

// ADS8688 Range configuration registers
// ----------------------------------------------------------------------------
#define ADC_REG_AUTO_SEQ  		0x01   		// Enable channels in Auto-Scan
#define ADC_REG_DIS_CH			0x02		// Channel power down
#define ADC_DEVICE_CONF			0x03		// Device features selection control
#define ADC_REG_CH0_RANGE 		0x05		// Channel 0 range register
#define ADC_REG_CH1_RANGE 		0x06		// Channel 1 range register
#define ADC_REG_CH2_RANGE 		0x07		// Channel 2 range register
#define ADC_REG_CH3_RANGE 		0x08		// Channel 3 range register
#define ADC_REG_CH4_RANGE 		0x09		// Channel 4 range register
#define ADC_REG_CH5_RANGE 		0x0A		// Channel 5 range register
#define ADC_REG_CH6_RANGE 		0x0B		// Channel 6 range register
#define ADC_REG_CH7_RANGE 		0x0C		// Channel 7 range register

// ADS8688 Voltage range selection
// ----------------------------------------------------------------------------
#define ADC_RANGE_UNI_10V24  	0x05  		// 0V to 10.24V
#define ADC_RANGE_UNI_5V12   	0x06  		// 0V to 5.12V
#define ADC_RANGE_UNI_2V56   	0x07  		// 0V to 2.56V

// Public functions
// ----------------------------------------------------------------------------
void ADS8688A_Init(void);
uint8_t ADS8688A_SpiInit(void);
uint8_t ADS8688A_WriteRegister(uint8_t reg, uint8_t data);
uint8_t ADS8688A_ReadRegister(uint8_t reg);

// Only for test purposes (change to private later)
void ADS8688A_Enable(void);
void ADS8688A_Disable(void);
uint8_t ADS8688A_Transfer(uint8_t data);

#endif /* INC_ADS8688A_H_ */
