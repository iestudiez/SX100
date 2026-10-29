/**
 ******************************************************************************
 * @file        : system_sx100.c
 * @author      : Estudiez, Ivan
 * @brief       : CX100 System functions and hardware initialization
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

#include <system_sx100.h>
#include "adc.h"
#include "dma.h"
#include "spi.h"
#include "can.h"
#include "lcd.h"
#include "uart.h"
#include "rcc.h"
#include "keyboard.h"

// Definitions
// ----------------------------------------------------------------------------

// Private variables
// ----------------------------------------------------------------------------
GPIO_Config_t gpioConf;
TIM_Config_t timerConf;
ADC_Config_t adcConf;
DMA_Config_t dmaConf;
SPI_Config_t spiConf;
CAN_Config_t canConf;
UART_Config_t uartConf;
DinConfig_t DinConf[4];

void SYSTEM_Init()
{
	// ************************************************************************
	// * RCC Configuration		                                    		  *
	// ************************************************************************
	RCC_SystemClockConfig();

	// ************************************************************************
	// * FPU Section			                                    		  *
	// ************************************************************************

	// Set CP10 and CP11 Full Access
	SCB->CPACR |= ((3UL << 20U) | (3UL << 22U));

	//*************************************************************************
	//* Digital Control Outputs												  *
	//* SX100 Compatibility: OK												  *
	//*************************************************************************

	// NPN Sensors Power Supply
	GPIO_Config_Reset(&gpioConf);
	gpioConf.port = SYSTEM_NPN_PWR_GPIO;
	gpioConf.pin = SYSTEM_NPN_PWR_PIN;
	gpioConf.mode = OUTPUT;
	gpioConf.otype = PUSH_PULL;
	GPIO_Init(gpioConf);

	// External Sensor Power Supply
	GPIO_Config_Reset(&gpioConf);
	gpioConf.port = SYSTEM_EXT_SENSOR_PWR_GPIO;
	gpioConf.pin = SYSTEM_EXT_SENSOR_PWR_PIN;
	gpioConf.mode = OUTPUT;
	gpioConf.otype = PUSH_PULL;
	GPIO_Init(gpioConf);

	// Buzzer low
	GPIO_Config_Reset(&gpioConf);
	gpioConf.port = SYSTEM_BUZZ_LOW_GPIO;
	gpioConf.pin = SYSTEM_BUZZ_LOW_PIN;
	gpioConf.mode = OUTPUT;
	gpioConf.otype = PUSH_PULL;
	GPIO_Init(gpioConf);

	// Buzzer High
	GPIO_Config_Reset(&gpioConf);
	gpioConf.port = SYSTEM_BUZZ_HIGH_GPIO;
	gpioConf.pin = SYSTEM_BUZZ_HIGH_PIN;
	gpioConf.mode = OUTPUT;
	gpioConf.otype = PUSH_PULL;
	GPIO_Init(gpioConf);

	// AIN0 Current loop enable
	GPIO_Config_Reset(&gpioConf);
	gpioConf.port = SYSTEM_CREN_AIN0_GPIO;
	gpioConf.pin = SYSTEM_CREN_AIN0_PIN;
	gpioConf.mode = OUTPUT;
	gpioConf.otype = PUSH_PULL;
	GPIO_Init(gpioConf);

	// AIN1 Current loop enable
	GPIO_Config_Reset(&gpioConf);
	gpioConf.port = SYSTEM_CREN_AIN1_GPIO;
	gpioConf.pin = SYSTEM_CREN_AIN1_PIN;
	gpioConf.mode = OUTPUT;
	gpioConf.otype = PUSH_PULL;
	GPIO_Init(gpioConf);

	// ************************************************************************
	// * LEDs Section                                                         *
	// * SX100 Compatibility: OK											  *
	// ************************************************************************

	// Power LED "Green" - Output
	GPIO_Config_Reset(&gpioConf);
	gpioConf.port = SYSTEM_PWRLED_GPIO;
	gpioConf.pin = SYSTEM_PWRLED_PIN;
	gpioConf.mode = OUTPUT;
	gpioConf.otype = PUSH_PULL;
	GPIO_Init(gpioConf);

	// Message LED "Blue" - Output
	GPIO_Config_Reset(&gpioConf);
	gpioConf.port = SYSTEM_MSGLED_GPIO;
	gpioConf.pin = SYSTEM_MSGLED_PIN;
	gpioConf.mode = OUTPUT;
	gpioConf.otype = PUSH_PULL;
	GPIO_Init(gpioConf);

	// Error LED "Red" - Output
	GPIO_Config_Reset(&gpioConf);
	gpioConf.port = SYSTEM_ERRLED_GPIO;
	gpioConf.pin = SYSTEM_ERRLED_PIN;
	gpioConf.mode = OUTPUT;
	gpioConf.otype = PUSH_PULL;
	GPIO_Init(gpioConf);

	//*************************************************************************
	//* Keyboard Configuration Section										  *
	//* SX100 Compatibility: OK												  *
	//*************************************************************************

	// COLUMN1 - Output
	GPIO_Config_Reset(&gpioConf);
	gpioConf.port = KEYPAD_COL1_GPIO;
	gpioConf.pin = KEYPAD_COL1_PIN;
	gpioConf.mode = OUTPUT;
	gpioConf.otype = PUSH_PULL;
	GPIO_Init(gpioConf);

	// COLUMN2 - Output
	GPIO_Config_Reset(&gpioConf);
	gpioConf.port = KEYPAD_COL2_GPIO;
	gpioConf.pin = KEYPAD_COL2_PIN;
	gpioConf.mode = OUTPUT;
	gpioConf.otype = PUSH_PULL;
	GPIO_Init(gpioConf);

	// COLUMN3 - Output
	GPIO_Config_Reset(&gpioConf);
	gpioConf.port = KEYPAD_COL3_GPIO;
	gpioConf.pin = KEYPAD_COL3_PIN;
	gpioConf.mode = OUTPUT;
	gpioConf.otype = PUSH_PULL;
	GPIO_Init(gpioConf);

	// ROW1 - Input Pull Down
	GPIO_Config_Reset(&gpioConf);
	gpioConf.port = KEYPAD_ROW1_GPIO;
	gpioConf.pin = KEYPAD_ROW1_PIN;
	gpioConf.mode = INPUT;
	gpioConf.pupd = PULL_DOWN_RESISTOR;
	GPIO_Init(gpioConf);

	// ROW2 - Input Pull Down
	GPIO_Config_Reset(&gpioConf);
	gpioConf.port = KEYPAD_ROW2_GPIO;
	gpioConf.pin = KEYPAD_ROW2_PIN;
	gpioConf.mode = INPUT;
	gpioConf.pupd = PULL_DOWN_RESISTOR;
	GPIO_Init(gpioConf);

	// ROW3 - Input Pull Down
	GPIO_Config_Reset(&gpioConf);
	gpioConf.port = KEYPAD_ROW3_GPIO;
	gpioConf.pin = KEYPAD_ROW3_PIN;
	gpioConf.mode = INPUT;
	gpioConf.pupd = PULL_DOWN_RESISTOR;
	GPIO_Init(gpioConf);

	// ROW4 - Input Pull Down
	GPIO_Config_Reset(&gpioConf);
	gpioConf.port = KEYPAD_ROW4_GPIO;
	gpioConf.pin = KEYPAD_ROW4_PIN;
	gpioConf.mode = INPUT;
	gpioConf.pupd = PULL_DOWN_RESISTOR;
	GPIO_Init(gpioConf);

	// ROW5 - Input Pull Down
	GPIO_Config_Reset(&gpioConf);
	gpioConf.port = KEYPAD_ROW5_GPIO;
	gpioConf.pin = KEYPAD_ROW5_PIN;
	gpioConf.mode = INPUT;
	gpioConf.pupd = PULL_DOWN_RESISTOR;
	GPIO_Init(gpioConf);

	// ************************************************************************
	// * Display Section													  *
	// * SX100 Compatibility: OK											  *
	// ************************************************************************

	// Red Backlight - Output
	GPIO_Config_Reset(&gpioConf);
	gpioConf.port = SYSTEM_LCD_RED_GPIO;
	gpioConf.pin = SYSTEM_LCD_RED_PIN;
	gpioConf.mode = OUTPUT;
	gpioConf.otype = PUSH_PULL;
	GPIO_Init(gpioConf);

	// Green Backlight - Output
	GPIO_Config_Reset(&gpioConf);
	gpioConf.port = SYSTEM_LCD_GREEN_GPIO;
	gpioConf.pin = SYSTEM_LCD_GREEN_PIN;
	gpioConf.mode = OUTPUT;
	gpioConf.otype = PUSH_PULL;
	GPIO_Init(gpioConf);

	// Blue Backlight - Output
	GPIO_Config_Reset(&gpioConf);
	gpioConf.port = SYSTEM_LCD_BLUE_GPIO;
	gpioConf.pin = SYSTEM_LCD_BLUE_PIN;
	gpioConf.mode = OUTPUT;
	gpioConf.otype = PUSH_PULL;
	GPIO_Init(gpioConf);

	// Display Chip Select - Output
	GPIO_Config_Reset(&gpioConf);
	gpioConf.port = SYSTEM_LCD_CS_GPIO;
	gpioConf.pin = SYSTEM_LCD_CS_PIN;
	gpioConf.mode = OUTPUT;
	gpioConf.otype = OPEN_DRAIN;
	gpioConf.pupd = PULL_UP_RESISTOR;
	GPIO_Init(gpioConf);

	// Display Reset - Output
	GPIO_Config_Reset(&gpioConf);
	gpioConf.port = SYSTEM_LCD_RESET_GPIO;
	gpioConf.pin = SYSTEM_LCD_RESET_PIN;
	gpioConf.mode = OUTPUT;
	gpioConf.otype = PUSH_PULL;
	GPIO_Init(gpioConf);

	// Display Register Select /A0 - Output
	GPIO_Config_Reset(&gpioConf);
	gpioConf.port = SYSTEM_LCD_A0_GPIO;
	gpioConf.pin = SYSTEM_LCD_A0_PIN;
	gpioConf.mode = OUTPUT;
	gpioConf.otype = PUSH_PULL;
	GPIO_Init(gpioConf);

	// ************************************************************************
	// * EEPROM Chip Select													  *
	// * SX100 Compatibility: OK											  *
	// ************************************************************************

	// Microchip 25LC640A Chip Select Pin - Output
	GPIO_Config_Reset(&gpioConf);
	gpioConf.port = SYSTEM_EPROM_CS_GPIO;
	gpioConf.pin = SYSTEM_EPROM_CS_PIN;
	gpioConf.mode = OUTPUT;
	gpioConf.otype = OPEN_DRAIN;
	gpioConf.pupd = PULL_UP_RESISTOR;
	GPIO_Init(gpioConf);

	// ************************************************************************
	// * SPI1 Initialization                                                  *
	// * SX100 Compatibility: OK											  *
	// ************************************************************************

	// Initialize Chip Select Pins (CS)
	// -----------------------------------------------------------------------
	// In open-drain mode, a "0" in the output register activates
	// the NMOS transistor.
	// -----------------------------------------------------------------------
	GPIO_Write(SYSTEM_EPROM_CS_GPIO, SYSTEM_EPROM_CS_PIN, 1);
	GPIO_Write(SYSTEM_LCD_CS_GPIO, SYSTEM_LCD_CS_PIN, 1);

	// PA5 SPI1_SCK (Alternate Function SPI clock)
	GPIO_Config_Reset(&gpioConf);
	gpioConf.port = SYSTEM_SPI1_SCLK_GPIO;
	gpioConf.pin = SYSTEM_SPI1_SCLK_PIN;
	gpioConf.mode = AFUNCTION;
	gpioConf.af = AF5;
	GPIO_Init(gpioConf);

	// PA6 SPI1_MISO (Alternate Function SPI Serial Input)
	GPIO_Config_Reset(&gpioConf);
	gpioConf.port = SYSTEM_SPI1_MISO_GPIO;
	gpioConf.pin = SYSTEM_SPI1_MISO_PIN;
	gpioConf.mode = AFUNCTION;
	gpioConf.af = AF5;
	GPIO_Init(gpioConf);

	// PA7 SPI1_MOSI (Alternate Function SPI Serial Output)
	GPIO_Config_Reset(&gpioConf);
	gpioConf.port = SYSTEM_SPI1_MOSI_GPIO;
	gpioConf.pin = SYSTEM_SPI1_MOSI_PIN;
	gpioConf.mode = AFUNCTION;
	gpioConf.af = AF5;
	GPIO_Init(gpioConf);

	// SPI1 Module
	SPI_Config_Reset(&spiConf);
	spiConf.module = SPI1;
	spiConf.br = CLK_DIV_4;
	spiConf.cpol = true;
	spiConf.cpha = true;
	spiConf.rxonly = false;
	spiConf.lsbfrst = false;
	spiConf.mstr = true;	// 8-bit data format
	spiConf.dff = false;	// Slave Select Mode (Software management ssm-bit=1)
	spiConf.ssm = true;
	spiConf.ssi = true;
	spiConf.txdma = true;
	SPI_Init(spiConf);
	SPI_Enable(SPI1);

	// ************************************************************************
	// * DMA2 for SPI1 Initialization                                         *
	// * SX100 Compatibility: OK.											  *
	// ************************************************************************

	// Configure DMA2 Stream3 - Channel 3 (TX)
	// ---------------------------------------
	DMA_Config_Reset(&dmaConf);

	dmaConf.stream = DMA2_Stream3;
	dmaConf.ch = 3;
	dmaConf.par = (uint32_t) (&(SPI1->DR));
	dmaConf.msize = MSIZE_BYTE;
	dmaConf.dir = MEM_TO_PERIPH;
	dmaConf.ndtr = LCD_SCREEN_WIDTH;
	dmaConf.minc = true;
	dmaConf.circ = false;
	dmaConf.tcie = false;
	DMA_Init(dmaConf);

	// Enable DMA2_Stream3
	DMA_Stream_Enable(DMA2_Stream3);

	// ************************************************************************
	// * SPI2 Initialization                                                  *
	// * SX100 Compatibility: OK											  *
	// ************************************************************************

	// SPI2 Chip Select 1
	GPIO_Config_Reset(&gpioConf);
	gpioConf.port = SYSTEM_PWRMON_CS_GPIO;
	gpioConf.pin = SYSTEM_PWRMON_CS_PIN;
	gpioConf.mode = OUTPUT;
	gpioConf.otype = OPEN_DRAIN;
	gpioConf.pupd = PULL_UP_RESISTOR;
	GPIO_Init(gpioConf);

	// SPI2 Chip Select 2
	GPIO_Config_Reset(&gpioConf);
	gpioConf.port = SYSTEM_ADC_CS_GPIO;
	gpioConf.pin = SYSTEM_ADC_CS_PIN;
	gpioConf.mode = OUTPUT;
	gpioConf.otype = OPEN_DRAIN;
	gpioConf.pupd = PULL_UP_RESISTOR;
	GPIO_Init(gpioConf);

	// Initialize SPI2 chip select pins
	GPIO_Write(SYSTEM_PWRMON_CS_GPIO, SYSTEM_PWRMON_CS_PIN, 1);
	GPIO_Write(SYSTEM_ADC_CS_GPIO, SYSTEM_ADC_CS_PIN, 1);

	// PB13 SPI2_SCK (Alternate Function SPI clock)
	GPIO_Config_Reset(&gpioConf);
	gpioConf.port = SYSTEM_SPI2_SCLK_GPIO;
	gpioConf.pin = SYSTEM_SPI2_SCLK_PIN;
	gpioConf.mode = AFUNCTION;
	gpioConf.af = AF5;
	GPIO_Init(gpioConf);

	// PC2 SPI2_MISO (Alternate Function SPI Serial Input)
	GPIO_Config_Reset(&gpioConf);
	gpioConf.port = SYSTEM_SPI2_MISO_GPIO;
	gpioConf.pin = SYSTEM_SPI2_MISO_PIN;
	gpioConf.mode = AFUNCTION;
	gpioConf.af = AF5;
	GPIO_Init(gpioConf);

	// PC3 SPI2_MOSI (Alternate Function SPI Serial Output)
	GPIO_Config_Reset(&gpioConf);
	gpioConf.port = SYSTEM_SPI2_MOSI_GPIO;
	gpioConf.pin = SYSTEM_SPI2_MOSI_PIN;
	gpioConf.mode = AFUNCTION;
	gpioConf.af = AF5;
	GPIO_Init(gpioConf);

	// SPI2 Module
	SPI_Config_Reset(&spiConf);
	spiConf.module = SPI2;
	spiConf.br = CLK_DIV_8;
	spiConf.cpol = 0;
	spiConf.cpha = 0;
	spiConf.rxonly = false;
	spiConf.lsbfrst = false;
	spiConf.mstr = true;
	spiConf.dff = false;
	spiConf.ssm = true;
	spiConf.ssi = true;
	spiConf.txdma = true;
	SPI_Init(spiConf);
	SPI_Enable(SPI2);

	// ************************************************************************
	// * UART1 Initialization                                                 *
	// ************************************************************************

	// UART1_RX (Alternate Function UART1 RX)
	// ------------------------------------------
	GPIO_Config_Reset(&gpioConf);
	gpioConf.port = SYSTEM_UART1_RX_GPIO;
	gpioConf.pin = SYSTEM_UART1_RX_PIN;
	gpioConf.mode = AFUNCTION;
	gpioConf.af = AF7;
	GPIO_Init(gpioConf);

	// UART1_TX (Alternate Function UART1 TX)
	// ------------------------------------------
	GPIO_Config_Reset(&gpioConf);
	gpioConf.port = SYSTEM_UART1_TX_GPIO;
	gpioConf.pin = SYSTEM_UART1_TX_PIN;
	gpioConf.mode = AFUNCTION;
	gpioConf.af = AF7;
	GPIO_Init(gpioConf);

	// UART1 Module
	UART_Config_Reset(&uartConf);
	uartConf.module = USART1;
	uartConf.periph_clk = (uint32_t) RCC_APB2_CLK;
	uartConf.baudrate = BR_9600;
	uartConf.dir_tx = true;
	uartConf.dir_rx = true;
	uartConf.rxneie = false;
	uartConf.tcie = false;
	uartConf.idleie = false;
	UART_Init(uartConf);

	// Enable Module
	// -------------
	UART_Enable(USART1);

	// ************************************************************************
	// * UART2 Initialization                                                 *
	// ************************************************************************

	// PA2 UART2_RX (Alternate Function UART2 RX)
	// -----------------------------------------
	GPIO_Config_Reset(&gpioConf);
	gpioConf.port = SYSTEM_UART2_RX_GPIO;
	gpioConf.pin = SYSTEM_UART2_RX_PIN;
	gpioConf.mode = AFUNCTION;
	gpioConf.af = AF7;
	GPIO_Init(gpioConf);

	// PA3 UART2_TX (Alternate Function UART2 TX)
	// ----------------------------------------
	GPIO_Config_Reset(&gpioConf);
	gpioConf.port = SYSTEM_UART2_TX_GPIO;
	gpioConf.pin = SYSTEM_UART2_TX_PIN;
	gpioConf.mode = AFUNCTION;
	gpioConf.af = AF7;
	GPIO_Init(gpioConf);

	// UART2 Module
	UART_Config_Reset(&uartConf);
	uartConf.module = USART2;
	uartConf.periph_clk = (uint32_t) RCC_APB1_CLK;
	uartConf.baudrate = BR_9600;
	uartConf.dir_tx = true;
	uartConf.dir_rx = true;
	uartConf.dma_tx = true;
	uartConf.dma_rx = true;
	uartConf.rxneie = false;
	uartConf.tcie = false;
	uartConf.idleie = false;
	UART_Init(uartConf);

	// Enable Module
	// -------------
	// Enable the module in the GNSS section
	// UART_Enable(USART2);

	// ************************************************************************
	// * DMA1 for USART2 Initialization										  *
	// * SX100 Compatibility: OK											  *
	// ************************************************************************

	// Configure DMA1 Stream5 - Channel 4 (RX)
	// ---------------------------------------
	DMA_Config_Reset(&dmaConf);
	dmaConf.stream = DMA1_Stream5;
	dmaConf.ch = 4;
	dmaConf.par = (uint32_t) (&(USART2->DR));
	dmaConf.m0ar = (uint32_t) &UART_RxBuffer;
	dmaConf.msize = MSIZE_BYTE;
	dmaConf.dir = PERIPH_TO_MEM;
	dmaConf.ndtr = UART_RX_BUFFER_SIZE;
	dmaConf.minc = true;
	dmaConf.circ = true;
	dmaConf.tcie = false;
	DMA_Init(dmaConf);

	// Enable DMA1_Stream5
	DMA_Stream_Enable(DMA1_Stream5);

	// Configure DMA1 Stream6 - Channel 4 (TX)
	// ---------------------------------------
	DMA_Config_Reset(&dmaConf);
	dmaConf.stream = DMA1_Stream6;
	dmaConf.ch = 4;
	dmaConf.par = (uint32_t) (&(USART2->DR));
	dmaConf.m0ar = (uint32_t) &UART_TxBuffer;
	dmaConf.msize = MSIZE_BYTE;
	dmaConf.dir = MEM_TO_PERIPH;
	dmaConf.ndtr = UART_TX_BUFFER_SIZE;
	dmaConf.minc = true;
	dmaConf.circ = false;
	dmaConf.tcie = false;
	DMA_Init(dmaConf);

	// Enable DMA1_Stream6
	// DMA transfer is enabled whenever a transmission is needed.
	// DMA_Stream_Enable(DMA1_Stream6);

	// ************************************************************************
	// * DMA2: Memory to memory transfer									  *
	// * SX100 Compatibility: OK											  *
	// ************************************************************************

	// Configure DMA2 Stream0
	// ---------------------------------------
	DMA_Config_Reset(&dmaConf);

	dmaConf.stream = DMA2_Stream0;
	dmaConf.ch = 0;
	dmaConf.par = (uint32_t) LCD_Buffer;
	dmaConf.msize = MSIZE_BYTE;
	dmaConf.psize = MSIZE_BYTE;
	dmaConf.dir = MEM_TO_MEM;
	dmaConf.dmdis = true;
	dmaConf.fth = FIFO_FULL;
	dmaConf.minc = true;
	dmaConf.pinc = true;
	dmaConf.circ = false;
	dmaConf.tcie = false;
	DMA_Init(dmaConf);

	// ************************************************************************
	// * CAN1 Initialization                                                  *
	// * SX100 Compatibility: OK											  *
	// ************************************************************************

	// PB8 CAN_RX (Alternate Function CAN RX)
	GPIO_Config_Reset(&gpioConf);
	gpioConf.port = SYSTEM_CAN_RX_GPIO;
	gpioConf.pin = SYSTEM_CAN_RX_PIN;
	gpioConf.mode = AFUNCTION;
	gpioConf.af = AF9;
	GPIO_Init(gpioConf);

	// PA12 CAN_TX (Alternate Function CAN TX)
	GPIO_Config_Reset(&gpioConf);
	gpioConf.port = SYSTEM_CAN_TX_GPIO;
	gpioConf.pin = SYSTEM_CAN_TX_PIN;
	gpioConf.mode = AFUNCTION;
	gpioConf.af = AF9;
	GPIO_Init(gpioConf);

	// CAN Configuration
	// -----------------
	// CAN1 Module
	CAN_Config_Reset(&canConf);
	canConf.module = CAN1;
	canConf.nart = true;
	canConf.baudrate = CAN_BR_250K;
	canConf.fmpie0 = false;
	CAN_Init(canConf);

	// ************************************************************************
	// * Frequency Inputs Section                                             *
	// * SX100 Compatibility: OK											  *
	// ************************************************************************

	// PC7 (FREQ IN1 - Alternate Function Input Capture)
	// TIM8_CH2 - TI2FP2
	DinConf[SYSTEM_DIN_0].tim = TIM8;
	DinConf[SYSTEM_DIN_0].gpio = GPIOC;
	DinConf[SYSTEM_DIN_0].pin = 7;
	DinConf[SYSTEM_DIN_0].af = AF3;
	DinConf[SYSTEM_DIN_0].ts = TS_TI2FP2;

	// PC6 (FREQ IN2 - Alternate Function Input Capture)
	// TIM3_CH1 - TI1FP1
	DinConf[SYSTEM_DIN_1].tim = TIM3;
	DinConf[SYSTEM_DIN_1].gpio = GPIOC;
	DinConf[SYSTEM_DIN_1].pin = 6;
	DinConf[SYSTEM_DIN_1].af = AF2;
	DinConf[SYSTEM_DIN_1].ts = TS_TI1FP1;

	// PA0 (FREQ IN3 - Alternate Function Input Capture)
	// TIM5_CH1 - TI1FP1
	DinConf[SYSTEM_DIN_2].tim = TIM5;
	DinConf[SYSTEM_DIN_2].gpio = GPIOA;
	DinConf[SYSTEM_DIN_2].pin = 0;
	DinConf[SYSTEM_DIN_2].af = AF2;
	DinConf[SYSTEM_DIN_2].ts = TS_TI1FP1;

	// PA1 (FREQ IN4 - Alternate Function Input Capture)
	// TIM2_CH2 - TI2FP2
	DinConf[SYSTEM_DIN_3].tim = TIM2;
	DinConf[SYSTEM_DIN_3].gpio = GPIOA;
	DinConf[SYSTEM_DIN_3].pin = 1;
	DinConf[SYSTEM_DIN_3].af = AF1;
	DinConf[SYSTEM_DIN_3].ts = TS_TI2FP2;

	// Configure all digital inputs
	SYSTEM_FreqInConfig(SYSTEM_DIN_0, SYSTEM_DIN_COUNTER_MODE);
	SYSTEM_FreqInConfig(SYSTEM_DIN_1, SYSTEM_DIN_COUNTER_MODE);
	SYSTEM_FreqInConfig(SYSTEM_DIN_2, SYSTEM_DIN_COUNTER_MODE);
	SYSTEM_FreqInConfig(SYSTEM_DIN_3, SYSTEM_DIN_COUNTER_MODE);

	// ************************************************************************
	// * Power Outputs Section (PWM)                                          *
	// * SX100 Compatibility: OK											  *
	// ************************************************************************

	// GPIOs Configuration
	// -------------------
	// PA8 TIM1_CH1
	// PWM Group 4 (PG4)
	GPIO_Config_Reset(&gpioConf);
	gpioConf.port = GPIOA;
	gpioConf.pin = 8;
	gpioConf.mode = AFUNCTION;
	gpioConf.af = AF1;
	GPIO_Init(gpioConf);

	// PA9 TIM1_CH2
	// PWM Group 3 (PG3)
	GPIO_Config_Reset(&gpioConf);
	gpioConf.port = GPIOA;
	gpioConf.pin = 9;
	gpioConf.mode = AFUNCTION;
	gpioConf.af = AF1;
	GPIO_Init(gpioConf);

	// PA10 TIM1_CH3
	// PWM Group 2 (PG2)
	GPIO_Config_Reset(&gpioConf);
	gpioConf.port = GPIOA;
	gpioConf.pin = 10;
	gpioConf.mode = AFUNCTION;
	gpioConf.af = AF1;
	GPIO_Init(gpioConf);

	// PA11 TIM1_CH4
	// PWM Group 1 (PG1)
	GPIO_Config_Reset(&gpioConf);
	gpioConf.port = GPIOA;
	gpioConf.pin = 11;
	gpioConf.mode = AFUNCTION;
	gpioConf.af = AF1;
	GPIO_Init(gpioConf);

	// Timer Configuration
	// -------------------
	// Timer 1 (PWM 1000 - 100 Hz)
	TIM_Config_Reset(&timerConf);
	timerConf.module = TIM1;
	timerConf.arpe = true;
	timerConf.psc = (RCC_APB2_TIM_CLK / 100000) - 1;
	timerConf.arr = 1000 - 1;
	timerConf.oc1Mode = OCM_PWM1;
	timerConf.oc2Mode = OCM_PWM1;
	timerConf.oc3Mode = OCM_PWM1;
	timerConf.oc4Mode = OCM_PWM1;
	// Necessary for TIM1 and TIM8 to activate their outputs
	timerConf.masterOutputEnable = true;
	TIM_Init(timerConf);

	// Timer Enable
	TIM_Enable(TIM1);

	// ************************************************************************
	// * Scheduler and Dispatcher Timer Section                               *
	// * SX100 Compatibility:   											  *
	// ************************************************************************

	// TIM7
	// Update event each millisecond
	TIM_Config_Reset(&timerConf);
	timerConf.module = TIM7;
	timerConf.arpe = false;
	timerConf.psc = (RCC_APB1_TIM_CLK / 100000U) - 1;
	timerConf.arr = 100 - 1;
	timerConf.uiEnable = true;
	TIM_Init(timerConf);

	// Enable interruptions
	NVIC_EnableIRQ(TIM7_IRQn);

	// ************************************************************************
	// * Debug Timer Section				                                  *
	// * SX100 Compatibility:   											  *
	// ************************************************************************

	// Debug Timer (defined in SYSTEM_DEBUG_TIMER)
	// -------------------------------------------
	// Counter in micro-seconds
	TIM_Config_Reset(&timerConf);
	timerConf.module = SYSTEM_DEBUG_TIMER;
	timerConf.arpe = true;
	timerConf.psc = (SYSTEM_DEBUG_TIM_APB_CLK / 1000000U) - 1;
	timerConf.arr = 0xFFFFFFFF;
	TIM_Init(timerConf);

	// ************************************************************************
	// * Delay Timer Section			                               		  *
	// * SX100 Compatibility:   											  *
	// ************************************************************************
	// Delay Timer (defined in SYSTEM_DELAY_TIMER)
	// -------------------------------------------
	// Counter in micro-seconds
	TIM_Config_Reset(&timerConf);
	timerConf.module = SYSTEM_DELAY_TIMER;
	timerConf.arpe = true;
	timerConf.psc = (SYSTEM_DELAY_TIM_APB_CLK / 1000000U) - 1;
	TIM_Init(timerConf);
}

// ****************************************************************************
// * LEDs Section                                                             *
// * SX100 Compatibility:													  *
// ****************************************************************************

/**
 * ----------------------------------------------------------------------------
 * @brief 			Power LED (Green)
 * ----------------------------------------------------------------------------
 * @param enable	Turn LED on/off
 * ----------------------------------------------------------------------------
 */
void SYSTEM_PwrLed(bool enable)
{
	if (enable)
		SYSTEM_PWRLED_GPIO->ODR |= (1U << SYSTEM_PWRLED_PIN);
	else
		SYSTEM_PWRLED_GPIO->ODR &= ~(1U << SYSTEM_PWRLED_PIN);
}

/**
 * ----------------------------------------------------------------------------
 * @brief 			Message LED (Blue)
 * ----------------------------------------------------------------------------
 * @param enable	Turn LED on/off
 * ----------------------------------------------------------------------------
 */
void SYSTEM_MsgLed(bool enable)
{
	if (enable)
		SYSTEM_MSGLED_GPIO->ODR |= (1U << SYSTEM_MSGLED_PIN);
	else
		SYSTEM_MSGLED_GPIO->ODR &= ~(1U << SYSTEM_MSGLED_PIN);
}

/**
 * ----------------------------------------------------------------------------
 * @brief 			Error LED (Red)
 * ----------------------------------------------------------------------------
 * @param enable	Turn LED on/off
 * ----------------------------------------------------------------------------
 */
void SYSTEM_ErrLed(bool enable)
{
	if (enable)
		SYSTEM_ERRLED_GPIO->ODR |= (1U << SYSTEM_ERRLED_PIN);
	else
		SYSTEM_ERRLED_GPIO->ODR &= ~(1U << SYSTEM_ERRLED_PIN);
}

// ****************************************************************************
// * Display Section                                                     	  *
// * SX100 Compatibility:													  *
// ****************************************************************************

/**
 * ----------------------------------------------------------------------------
 * @brief 			Green backlight of the LCD screen
 * ----------------------------------------------------------------------------
 * @param enable	Enable backlight
 * ----------------------------------------------------------------------------
 */
void SYSTEM_LcdGreen(bool enable)
{
	if (enable)
		SYSTEM_LCD_GREEN_GPIO->ODR |= (1U << SYSTEM_LCD_GREEN_PIN);
	else
		SYSTEM_LCD_GREEN_GPIO->ODR &= ~(1U << SYSTEM_LCD_GREEN_PIN);
}

/**
 * ----------------------------------------------------------------------------
 * @brief 			Red backlight of the LCD screen
 * ----------------------------------------------------------------------------
 * @param enable	Enable backlight
 * ----------------------------------------------------------------------------
 */
void SYSTEM_LcdRed(bool enable)
{
	if (enable)
		SYSTEM_LCD_RED_GPIO->ODR |= (1U << SYSTEM_LCD_RED_PIN);
	else
		SYSTEM_LCD_RED_GPIO->ODR &= ~(1U << SYSTEM_LCD_RED_PIN);
}

/**
 * ----------------------------------------------------------------------------
 * @brief 			Blue backlight of the LCD screen
 * ----------------------------------------------------------------------------
 * @param enable	Enable backlight
 * ----------------------------------------------------------------------------
 */
void SYSTEM_LcdBlue(bool enable)
{
	if (enable)
		SYSTEM_LCD_BLUE_GPIO->ODR |= (1U << SYSTEM_LCD_BLUE_PIN);
	else
		SYSTEM_LCD_BLUE_GPIO->ODR &= ~(1U << SYSTEM_LCD_BLUE_PIN);
}

// ****************************************************************************
// * Delay Timer Section                                                      *
// * SX100 Compatibility:													  *
// ****************************************************************************

/**
 * ----------------------------------------------------------------------------
 * @brief 			Generates a delay with blocking code
 * ----------------------------------------------------------------------------
 * @param delay		Delay in micro-seconds
 * ----------------------------------------------------------------------------
 */
void SYSTEM_DelayUs(uint16_t delay)
{
	if (delay == 0)
		return;

	SYSTEM_DELAY_TIMER->ARR = delay - 1;
	SYSTEM_DELAY_TIMER->CNT = 0;

	// Generate a update event after load ARR register
	SYSTEM_DELAY_TIMER->EGR |= TIM_EGR_UG;

	// Clear update interruption flag (UIF)
	SYSTEM_DELAY_TIMER->SR &= ~TIM_SR_UIF;

	TIM_Enable(SYSTEM_DELAY_TIMER);

	while (!(SYSTEM_DELAY_TIMER->SR & TIM_SR_UIF))
		;

	TIM_Disable(SYSTEM_DELAY_TIMER);
}

/**
 * ----------------------------------------------------------------------------
 * @brief 			Generates a delay with blocking code
 * ----------------------------------------------------------------------------
 * @param delay		Delay in milli-seconds
 * ----------------------------------------------------------------------------
 */
void SYSTEM_DelayMs(uint16_t delay)
{
	for (uint16_t i = 0; i < delay; i++)
		SYSTEM_DelayUs(1000);
}

// ****************************************************************************
// * Digital Inputs Configuration Section                                     *
// * SX100 Compatibility: OK												  *
// ****************************************************************************

/**
 * ----------------------------------------------------------------------------
 * @brief			Configure the operating mode of the digital input
 * ----------------------------------------------------------------------------
 * @param din		Digital input to configure
 * * ----------------------------------------------------------------------------
 */
void SYSTEM_FreqInConfig(DigitalInput_e din, DinMode_e mode)
{
	// Disable Timer
	TIM_Disable(DinConf[din].tim);

	// Timer Configuration
	// -------------------
	TIM_Config_Reset(&timerConf);
	timerConf.module = DinConf[din].tim;

	// GPIO Configuration
	GPIO_Config_Reset(&gpioConf);

	// Auto Reload Register Value
	timerConf.arr = 0xFFFF;

	// Select Input Mode
	// ------------------------------------------------------------------------
	switch (mode)
	{
	case SYSTEM_DIN_COUNTER_MODE:

		// Set mode
		DinConf[din].mode = mode;

		// Prescaler division = 1
		timerConf.psc = 0;

		// Reset counter register
		timerConf.module->CNT = 0;

		// Slave Mode Selection
		timerConf.slaveModeSelection = SMS_EXTCLOCK_MODE;
		break;

	case SYSTEM_DIN_FREQUENCY_MODE:

		// Set mode
		DinConf[din].mode = mode;

		// PSC = RCC_APB1_TIM_CLK / 65536 ~= 65536 counts per second
		timerConf.psc = (uint16_t) (RCC_APB1_TIM_CLK / 0xFFFF) - 1;

		// Slave Mode Selection
		timerConf.slaveModeSelection = SMS_RESET_MODE;
		break;

	case SYSTEM_DIN_INPUT_MODE:

		// Set mode
		DinConf[din].mode = mode;

		// GPIO configuration (Input)
		gpioConf.port = DinConf[din].gpio;
		gpioConf.pin = DinConf[din].pin;
		gpioConf.mode = INPUT;
		gpioConf.pupd = PULL_DOWN_RESISTOR;
		GPIO_Init(gpioConf);
		break;
	}

	// Configuration is complete here if it is a digital input.
	if(mode == SYSTEM_DIN_INPUT_MODE)
		return;

	// GPIO configuration (Alternate Function Input Capture)
	gpioConf.port = DinConf[din].gpio;
	gpioConf.pin = DinConf[din].pin;
	gpioConf.mode = AFUNCTION;
	gpioConf.af = DinConf[din].af;
	GPIO_Init(gpioConf);

	// Trigger Selection
	// ------------------------------------------------------------------------
	switch (DinConf[din].ts)
	{
	case TS_TI1FP1:
		timerConf.cc1Selection = CCS_INPUT_FIRST_TI;
		timerConf.cc1p = false;
		timerConf.cc1np = false;
		timerConf.triggerSelection = TS_TI1FP1;
		break;

	case TS_TI2FP2:
		timerConf.cc2Selection = CCS_INPUT_FIRST_TI;
		timerConf.cc2p = false;
		timerConf.cc2np = false;
		timerConf.triggerSelection = TS_TI2FP2;
		break;

	default:
		break;
	}

	// Perform Timer Configuration
	TIM_Init(timerConf);

	// Enable timer
	TIM_Enable(DinConf[din].tim);

	// Generate an update event
	timerConf.module->EGR |= TIM_EGR_UG;
}
