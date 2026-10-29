/**
 ******************************************************************************
 * @file        : pid.h
 * @author      : Estudiez, Ivan
 * @brief       : PID Library
 * @date        : 01/08/2024
 * @version     : 1.0
 ******************************************************************************
 *
 *
 *
 *
 *
 ******************************************************************************
 */

#ifndef PID_H_
#define PID_H_

#include "stdbool.h"
#include "stdint.h"

typedef struct
{
	int32_t error;
	int32_t accumError;
	int32_t prevFeedback;
	int32_t propTerm;
	int32_t intgTerm;
	int32_t dervTerm;
} PID_Private_t;

typedef struct PID1000_t
{
	uint32_t *pSetpoint;
	uint32_t *pFeedback;
	uint16_t *pOutput;
	uint32_t outputMin;
	uint32_t outputMax;
	uint32_t Kp;
	uint32_t Ki;
	uint32_t Kd;
	int32_t kpDiv;			// Proportional divider
	int32_t kiDiv;			// Integral divider
	int32_t kdDiv;			// Derivative divider
	int32_t kdTime;			// Period used to calculate the derivative term
	uint32_t maxIntegral;  	// Maximum percentage of incidence of the integral part on the PWM output (0 to 1000)
	uint8_t allowedErr;		// Allowable error of feedback with respect to the setpoint  (0-30, Max.: 30%)
	uint32_t err;			// When the setpoint value cannot be reached this variable is incremented
	bool *pEnable;
	PID_Private_t priv;
} PID1000_t;

typedef struct PID_Position_t
{
	int32_t *pSetpoint;
	int32_t *pFeedback;
	uint16_t *pOutA;
	uint16_t *pOutB;
	uint32_t offset;
	uint32_t Kp;
	uint32_t Ki;
	uint32_t Kd;
	int32_t kpDiv;			// Proportional divider
	int32_t kiDiv;			// Integral divider
	int32_t kdDiv;			// Derivative divider
	uint32_t maxIntegral;  	// Maximum percentage of incidence of the integral part on the PWM output (0 to 1000)
	uint8_t allowedErr;		// Allowable error of feedback with respect to the setpoint  (0-30, Max.: 30%)
	uint32_t err;			// When the setpoint value cannot be reached this variable is incremented
	bool *pEnable;
	PID_Private_t priv;
} PID_Position_t;

void PID_Pwm1000(PID1000_t *pid);
void PID_Position(PID_Position_t *pid);
void PID_Callback();
void PID_SetCallback(void (*user_api)());

#endif /* PID_H_ */
