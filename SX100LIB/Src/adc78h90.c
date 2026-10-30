/**
 ******************************************************************************
 * @file        : adc78h90.c
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

#include "adc78h90.h"
#include "spi.h"
#include "system_sx100.h"
#include <string.h>
#include "utils.h"

// Definitions
//------------------------------------------------------------------------------
#define ADC_EMA_FILTER_ALPHA		(500)

// Public variables
//------------------------------------------------------------------------------

// Prototypes
//------------------------------------------------------------------------------

// Private variables
//------------------------------------------------------------------------------
uint8_t ADC_Channel[ADC78H90_NUMBER_CH] = { ADC_AIN1, ADC_AIN2, ADC_AIN3, ADC_AIN4, ADC_AIN7, ADC_AIN8 };
uint16_t ADC_Samples[ADC78H90_NUMBER_CH];
uint16_t ADC_AvgBuffer[ADC78H90_ISEN_N_CH][ADC78H90_ISEN_N_SAMPL];
uint16_t ADC_AinBuffer[ADC78H90_AIN_N_CH][ADC78H90_AIN_N_SAMPL];
uint16_t ADC_SortBuffer[ADC78H90_AIN_N_SAMPL];
uint16_t ADC_AvgCh[ADC78H90_NUMBER_CH];

/**
 * ------------------------------------------------------------------------------
 * @brief	ADC sample acquisition
 * ------------------------------------------------------------------------------
 */
void ADC78H90_Update(void)
{
	uint16_t dummy __attribute__ ((unused));

	if (ADC78H90_SetupComm())
		return;

	// Enable ADC78H90 CS pin
	GPIO_Write(ADC78H90_CS_GPIO, ADC78H90_CS_PIN, 0);

	for (uint8_t i = 0; i < ADC78H90_NUMBER_CH; i++)
	{
		// In hardware testing, two consecutive readings on a channel
		// were required to obtain correct results.
		for (uint8_t pass = 0; pass < 2; pass++)
		{
			// Wait until TXE is set
			while (!(ADC78H90_SPI->SR & (SPI_SR_TXE)))
				;

			// Select channel to be sampled
			ADC78H90_SPI->DR = (ADC_Channel[i] << 8U);

			// Wait for RXNE flag to be set
			while (!(ADC78H90_SPI->SR & (SPI_SR_RXNE)))
				;

			// Read data from data register
			if (pass == 1)
				ADC_Samples[i] = (uint16_t) ADC78H90_SPI->DR;
			else
				dummy = ADC78H90_SPI->DR;
		}
	}

	// Disable ADC78H90 CS pin
	GPIO_Write(ADC78H90_CS_GPIO, ADC78H90_CS_PIN, 1);

	return;
}

/**
 * ------------------------------------------------------------------------------
 * @brief	ADC78H90 SPI communication setup
 * ------------------------------------------------------------------------------
 * @return	Error code
 * ------------------------------------------------------------------------------
 */
uint8_t ADC78H90_SetupComm(void)
{
	// Exit if SPI2 peripheral is busy
	if (ADC78H90_SPI->SR & SPI_SR_BSY)
		return 1;

	SPI_Disable(ADC78H90_SPI);

	// Configure CPOL and CPHA
	ADC78H90_SPI->CR1 &= ~(0x03);
	ADC78H90_SPI->CR1 |= (ADC78H90_CPOL << SPI_CR1_CPOL_Pos);
	ADC78H90_SPI->CR1 |= (ADC78H90_CPHA << SPI_CR1_CPHA_Pos);

	// 16-bit Mode
	ADC78H90_SPI->CR1 |= (SPI_CR1_DFF);

	SPI_Enable(ADC78H90_SPI);
	return 0;
}

/**
 * ------------------------------------------------------------------------------
 * @brief	Add samples to the buffer
 * ------------------------------------------------------------------------------
 */
void ADC78H90_AddSamples(void)
{
	// ---------------------------------------------------------------------
	// Add ISEN channel samples
	// ---------------------------------------------------------------------
	for (uint8_t ch = 0; ch < ADC78H90_ISEN_N_CH; ch++)
	{
		// Move samples from the end of the buffer to the beginning
		for (uint8_t smpl = 0; smpl < ADC78H90_ISEN_N_SAMPL - 1; smpl++)
			ADC_AvgBuffer[ch][smpl] = ADC_AvgBuffer[ch][smpl + 1];

		// Add the new sample
		ADC_AvgBuffer[ch][ADC78H90_ISEN_N_SAMPL - 1] = ADC_Samples[ch];
	}

	// ---------------------------------------------------------------------
	// Add AIN channel samples
	// ---------------------------------------------------------------------
	for (uint8_t ch = 0; ch < ADC78H90_AIN_N_CH; ch++)
	{

		// Move samples from the end of the buffer to the beginning
		for (uint8_t smpl = 0; smpl < ADC78H90_AIN_N_SAMPL - 1; smpl++)
			ADC_AinBuffer[ch][smpl] = ADC_AinBuffer[ch][smpl + 1];

		// Add the new sample
		ADC_AinBuffer[ch][ADC78H90_AIN_N_SAMPL - 1] = ADC_Samples[ch + ADC78H90_ISEN_N_CH];
	}
}

/**
 * ------------------------------------------------------------------------------
 * @brief	Complete the array of average values
 * ------------------------------------------------------------------------------
 */
void ADC78H90_AverageChannels(void)
{
	uint32_t sum;
	static int32_t sample_CH0;
	static int32_t sample_CH1;

	// ---------------------------------------------------------------------
	// Average ISEN channels
	// ---------------------------------------------------------------------
	for (uint8_t ch = 0; ch < ADC78H90_ISEN_N_CH; ch++)
	{
		// Reset accumulator
		sum = 0;

		// Perform the summation
		for (uint8_t smpl = 0; smpl < ADC78H90_ISEN_N_SAMPL; smpl++)
			sum += ADC_AvgBuffer[ch][smpl];

		// Calculate the average
		ADC_AvgCh[ch] = (uint16_t) (sum / ADC78H90_ISEN_N_SAMPL);
	}

	// ---------------------------------------------------------------------
	// Average AIN channels
	// ---------------------------------------------------------------------
	memcpy(ADC_SortBuffer, &ADC_AinBuffer[0][0], ADC78H90_AIN_N_SAMPL * sizeof(uint16_t));
	quickSort(ADC_SortBuffer, 0, ADC78H90_AIN_N_SAMPL - 1);
	emaFilter(ADC_SortBuffer[ADC78H90_AIN_N_SAMPL / 2 - 1], &sample_CH0, ADC_EMA_FILTER_ALPHA);
	ADC_AvgCh[ADC78H90_ISEN_N_CH] = (uint16_t) sample_CH0;

	memcpy(ADC_SortBuffer, &ADC_AinBuffer[1][0], ADC78H90_AIN_N_SAMPL * sizeof(uint16_t));
	quickSort(ADC_SortBuffer, 0, ADC78H90_AIN_N_SAMPL - 1);
	emaFilter(ADC_SortBuffer[ADC78H90_AIN_N_SAMPL / 2 - 1], &sample_CH1, ADC_EMA_FILTER_ALPHA);
	ADC_AvgCh[ADC78H90_ISEN_N_CH + 1] = (uint16_t) sample_CH1;
}
