/**
 ******************************************************************************
 * @file        : adc78h90.h
 * @author      : Estudiez, Ivan
 * @brief       : ADC78H90 Driver
 * @date        : 19/08/2025
 * @version     : 1.0
 ******************************************************************************
 * Change control:
 * 1.0 - (19/08/2025) Release version
 *
 *
 *
 ******************************************************************************
 */

#ifndef INC_ADC78H90_H_
#define INC_ADC78H90_H_

#include <stdint.h>
#include <stdbool.h>
#include <stm32f4xx.h>

//=============================================================================
// Device definitions
//=============================================================================
#define ADC78H90_SPI			SPI2					// ADC78H90 SPI peripheral
#define ADC78H90_CS_GPIO		SYSTEM_ADC_CS_GPIO		// ADC78H90 CS GPIO
#define ADC78H90_CS_PIN			SYSTEM_ADC_CS_PIN		// ADC78H90 CS PIN
#define ADC78H90_CPOL			(1U)					// ADC78H90 CPOL
#define ADC78H90_CPHA			(1U)					// ADC78H90 CPHA
#define ADC78H90_NUMBER_CH		(6U)					// Number of channels
#define ADC78H90_ISEN_N_CH		(4U)					// Number of ISEN channels
#define ADC78H90_AIN_N_CH		(2U)					// Number of analog inputs
#define ADC78H90_ISEN_N_SAMPL	(10)					// Number of samples per channel
#define ADC78H90_AIN_N_SAMPL	(12)					// Number of samples analog inputs

// Register definitions
// -----------------------------------------------------------------------------
#define ADC_AIN1			0x81
#define ADC_AIN2			0x89
#define ADC_AIN3			0x91
#define ADC_AIN4			0x99
#define ADC_AIN5			0xA1
#define ADC_AIN6			0xA9
#define ADC_AIN7			0xB1
#define ADC_AIN8			0xB9

// Function prototypes
// -----------------------------------------------------------------------------
void ADC78H90_Update(void);
void ADC78H90_AverageChannels(void);
void ADC78H90_AddSamples(void);
uint8_t ADC78H90_SetupComm(void);

// Public variables
// -----------------------------------------------------------------------------
extern uint16_t ADC_AvgCh[ADC78H90_NUMBER_CH];

#endif /* INC_ADC78H90_H_ */
