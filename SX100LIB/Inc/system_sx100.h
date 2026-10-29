/**
 ******************************************************************************
 * @file        : system_sx100.h
 * @author      : Estudiez, Ivan
 * @brief       : SX100 System functions and hardware initialization
 * @date        : 09/10/2026
 * @version     : 1.0
 ******************************************************************************
 * Change control:
 * 1.0 - (09/10/2026) Release version
 *
 *
 *
 ******************************************************************************
 */

#ifndef SYSTEM_CX100_H_
#define SYSTEM_CX100_H_

#include <stm32f4xx.h>
#include <stdbool.h>
#include <stdint.h>
#include "rcc.h"
#include "tim.h"
#include "gpio.h"

// ----------------------------------------------------------------------------
// LEDs section
// ----------------------------------------------------------------------------

// Green LED
#define SYSTEM_PWRLED_GPIO				GPIOB
#define SYSTEM_PWRLED_PIN				(2U)

// Blue LED
#define SYSTEM_MSGLED_GPIO				GPIOA
#define SYSTEM_MSGLED_PIN				(4U)

// Red LED
#define SYSTEM_ERRLED_GPIO				GPIOC
#define SYSTEM_ERRLED_PIN				(13U)

// ----------------------------------------------------------------------------
// Digital outputs section
// ----------------------------------------------------------------------------

// NPN power supply enable
#define SYSTEM_NPN_PWR_GPIO				GPIOB
#define SYSTEM_NPN_PWR_PIN				(5U)

// External sensor power supply
#define SYSTEM_EXT_SENSOR_PWR_GPIO		GPIOB
#define SYSTEM_EXT_SENSOR_PWR_PIN		(9U)

// Buzzer low
#define SYSTEM_BUZZ_LOW_GPIO			GPIOC
#define SYSTEM_BUZZ_LOW_PIN				(14U)

// Buzzer high
#define SYSTEM_BUZZ_HIGH_GPIO			GPIOC
#define SYSTEM_BUZZ_HIGH_PIN			(15U)

// Current loop AIN0 enable
#define SYSTEM_CREN_AIN0_GPIO			GPIOD
#define SYSTEM_CREN_AIN0_PIN			(2U)

// Current loop AIN1 enable
#define SYSTEM_CREN_AIN1_GPIO			GPIOB
#define SYSTEM_CREN_AIN1_PIN			(4U)

// ----------------------------------------------------------------------------
// Timers section
// ----------------------------------------------------------------------------

// Debug timer
#define SYSTEM_DEBUG_TIMER				TIM9
#define SYSTEM_DEBUG_TIM_APB_CLK		RCC_APB2_TIM_CLK

// Delay timer
#define SYSTEM_DELAY_TIMER				TIM10
#define SYSTEM_DELAY_TIM_APB_CLK		RCC_APB2_TIM_CLK

// ----------------------------------------------------------------------------
// Display section
// ----------------------------------------------------------------------------

// Display backlight
#define SYSTEM_LCD_RED_GPIO				GPIOB
#define SYSTEM_LCD_RED_PIN				(10U)
#define SYSTEM_LCD_GREEN_GPIO			GPIOB
#define SYSTEM_LCD_GREEN_PIN			(11U)
#define SYSTEM_LCD_BLUE_GPIO			GPIOB
#define SYSTEM_LCD_BLUE_PIN				(12U)

// Display chip select
#define SYSTEM_LCD_CS_GPIO				GPIOB
#define SYSTEM_LCD_CS_PIN				(1U)

// Display reset
#define SYSTEM_LCD_RESET_GPIO			GPIOC
#define SYSTEM_LCD_RESET_PIN			(4U)

// Display Register select / A0
#define SYSTEM_LCD_A0_GPIO				GPIOC
#define SYSTEM_LCD_A0_PIN				(5U)

// Eeprom chip select
#define SYSTEM_EPROM_CS_GPIO			GPIOB
#define SYSTEM_EPROM_CS_PIN				(0U)

// ----------------------------------------------------------------------------
// SPI modules section
// ----------------------------------------------------------------------------

// SPI1 Configuration
#define SYSTEM_SPI1_SCLK_GPIO			GPIOA
#define SYSTEM_SPI1_SCLK_PIN			(5U)
#define SYSTEM_SPI1_MISO_GPIO			GPIOA
#define SYSTEM_SPI1_MISO_PIN			(6U)
#define SYSTEM_SPI1_MOSI_GPIO			GPIOA
#define SYSTEM_SPI1_MOSI_PIN			(7U)

// SPI2 Configuration
#define SYSTEM_SPI2_SCLK_GPIO			GPIOB
#define SYSTEM_SPI2_SCLK_PIN			(13U)
#define SYSTEM_SPI2_MISO_GPIO			GPIOC
#define SYSTEM_SPI2_MISO_PIN			(2U)
#define SYSTEM_SPI2_MOSI_GPIO			GPIOC
#define SYSTEM_SPI2_MOSI_PIN			(3U)

// ADC chip select
#define SYSTEM_ADC_CS_GPIO				GPIOC
#define SYSTEM_ADC_CS_PIN				(0U)

// Power monitor chip select
#define SYSTEM_PWRMON_CS_GPIO			GPIOC
#define SYSTEM_PWRMON_CS_PIN			(1U)

// ----------------------------------------------------------------------------
// UART1 Configuration
// ----------------------------------------------------------------------------

// UART1 - RX
#define SYSTEM_UART1_RX_GPIO			GPIOB
#define SYSTEM_UART1_RX_PIN				(7U)

// UART1 - TX
#define SYSTEM_UART1_TX_GPIO			GPIOB
#define SYSTEM_UART1_TX_PIN				(6U)

// ----------------------------------------------------------------------------
// UART2 Configuration
// ----------------------------------------------------------------------------

// UART2 - RX
#define SYSTEM_UART2_RX_GPIO			GPIOA
#define SYSTEM_UART2_RX_PIN				(3U)

// UART2 - TX
#define SYSTEM_UART2_TX_GPIO			GPIOA
#define SYSTEM_UART2_TX_PIN				(2U)

// ----------------------------------------------------------------------------
// CAN Configuration
// ----------------------------------------------------------------------------

// CAN RX
#define SYSTEM_CAN_RX_GPIO				GPIOB
#define SYSTEM_CAN_RX_PIN				(8U)

// CAN TX
#define SYSTEM_CAN_TX_GPIO				GPIOA
#define SYSTEM_CAN_TX_PIN				(12U)

// ----------------------------------------------------------------------------
// Digital Inputs Section
// ----------------------------------------------------------------------------
// Number of digital inputs on the board
#define SYSTEM_NUMBER_OF_DIN			(4U)

// Digital inputs enumeration
typedef enum DigitalInput_e
{
	SYSTEM_DIN_0 = 0,
	SYSTEM_DIN_1 = 1,
	SYSTEM_DIN_2 = 2,
	SYSTEM_DIN_3 = 3
} DigitalInput_e;

// Digital input operating mode
typedef enum DinMode_e
{
	SYSTEM_DIN_COUNTER_MODE = 0,
	SYSTEM_DIN_FREQUENCY_MODE = 1,
	SYSTEM_DIN_INPUT_MODE = 2
} DinMode_e;

// Digital input configuration structure
typedef struct DinConfig_t
{
	TIM_TypeDef *tim;			// Timer Selection
	GPIO_TypeDef *gpio;			// GPIO Selection
	uint8_t pin;				// Pin Number
	DinMode_e mode;				// Input Mode
	AF_e af;					// Pin Alternate Function
	TS_e ts;					// Timer Trigger Selection
} DinConfig_t;

// ----------------------------------------------------------------------------
// Public functions
// ----------------------------------------------------------------------------
void SYSTEM_Init();
void SYSTEM_PwrLed(bool enable);
void SYSTEM_MsgLed(bool enable);
void SYSTEM_ErrLed(bool enable);
void SYSTEM_LcdGreen(bool enable);
void SYSTEM_LcdRed(bool enable);
void SYSTEM_LcdBlue(bool enable);
void SYSTEM_DelayUs(uint16_t delay);
void SYSTEM_DelayMs(uint16_t delay);
void SYSTEM_FreqInConfig(DigitalInput_e din, DinMode_e mode);

// ----------------------------------------------------------------------------
// Public variables
// ----------------------------------------------------------------------------
extern DinConfig_t DinConf[SYSTEM_NUMBER_OF_DIN];

#endif /* SYSTEM_CX100_H_ */
