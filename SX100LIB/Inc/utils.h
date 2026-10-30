/**
 ******************************************************************************
 * @file        : utils.h
 * @author      : Ivan.Estudiez
 * @brief       : 
 * @date        : 6 jul 2026
 * @version     : 0.
 ******************************************************************************
 */
#ifndef INC_UTILS_H_
#define INC_UTILS_H_

#include <stdint.h>

// Public functions
// ----------------------------------------------------------------------------
int32_t linTrafo(int32_t x, int32_t inMin, int32_t inMax, int32_t outMin, int32_t outMax);
void emaFilter(int32_t input, int32_t *output, uint16_t alpha);
void quickSort(uint16_t *arr, const int16_t left, const int16_t right);
uint32_t genRandom(void);

#endif /* INC_UTILS_H_ */
