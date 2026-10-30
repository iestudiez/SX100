/**
 ******************************************************************************
 * @file        : pid.c
 * @author      : Estudiez, Ivan
 * @brief       : PID Library
 * @date        : 01/08/2024
 * @version     : 1.0
 ******************************************************************************
 */

#include "pid.h"
#include "utils.h"
#include <stddef.h>
#include <stdlib.h>

// Defines
// ----------------------------------------------------------------------------
#define PID_MAX_ALLOWED_SETPOINT_ERROR			(30) 		// 30 %
#define PID_POSTION_MAX_INTEGRAL_ERROR			(500)		// 50 %
#define PID_POSTION_MAX_OFFSET_VALUE			(500)		// 50 %
#define PID_POSTION_OFFSET_THRESHOLD			(20)		// 2 %
#define PID_DERV_SAMPLE_PERIOD					(5)			// 100 ms

// Private variables
// ----------------------------------------------------------------------------
void (*pidCallback)();

/**
 * ----------------------------------------------------------------------------
 * @brief 		PID algorithm for speed control with PWM_1000 output
 * ----------------------------------------------------------------------------
 * @param pid	Pointer to structure with PID variables
 * ----------------------------------------------------------------------------
 */
void PID_Pwm1000(PID1000_t *pid)
{
	int32_t output;
	int32_t maxAccumErr;
	int32_t errorTolerance;
	static uint8_t dvPeriodCnt = 0;

	if (*pid->pSetpoint == 0 || !*pid->pEnable)
	{
		pid->priv.error = 0;
		pid->priv.accumError = 0;
		pid->priv.propTerm = 0;
		pid->priv.intgTerm = 0;
		pid->priv.dervTerm = 0;
		pid->err = 0;
		*pid->pOutput = 0;
		return;
	}

	// Check maximum admissible value
	if (pid->maxIntegral > 1000)
		pid->maxIntegral = 1000;

	// Calculate maximum allowable cumulative error
	if (pid->Ki > 0)
		maxAccumErr = (pid->maxIntegral * pid->kiDiv) / pid->Ki;
	else
		maxAccumErr = 0;

	// Variable error calculation
	pid->priv.error = *pid->pSetpoint - *pid->pFeedback;

	// Cumulative error used for the calculation of the integral term
	pid->priv.accumError += pid->priv.error;

	if (pid->priv.accumError > maxAccumErr)
		pid->priv.accumError = maxAccumErr;

	// Proportional term
	pid->priv.propTerm = (int32_t) (pid->Kp * pid->priv.error) / pid->kpDiv;

	// Integral term
	pid->priv.intgTerm = (int32_t) (pid->Ki * pid->priv.accumError) / pid->kiDiv;

	// Derivative term
	if (dvPeriodCnt == 0)
		pid->priv.prevFeedback = *pid->pFeedback;

	dvPeriodCnt++;

	if (dvPeriodCnt >= pid->kdTime)
	{
		pid->priv.dervTerm = (int32_t) (pid->Kd * (pid->priv.prevFeedback - *pid->pFeedback)) / pid->kdDiv;
		dvPeriodCnt = 0;
	}

	// Output = proportional term + integral term + derivative term
	output = pid->priv.propTerm + pid->priv.intgTerm + pid->priv.dervTerm;

	// Check output admissible values
	if (output > 1000)
		output = 1000;

	if (output < 0)
		output = 0;

	// Linearize and assign the result to the output
	*pid->pOutput = (uint16_t) linTrafo(output, 0, 1000, pid->outputMin, pid->outputMax);

	// Checking the limits of the variable
	if (pid->allowedErr > PID_MAX_ALLOWED_SETPOINT_ERROR)
		pid->allowedErr = PID_MAX_ALLOWED_SETPOINT_ERROR;

	// Deviation value allowed with respect to the setpoint
	errorTolerance = (*pid->pSetpoint * pid->allowedErr) / 100;

	// Increments the error variable if the setpoint value cannot be reached
	if (abs(pid->priv.error) > errorTolerance)
		pid->err++;
	else
		pid->err = 0;
}

/**
 * ----------------------------------------------------------------------------
 * @brief 		PID algorithm for position control
 * ----------------------------------------------------------------------------
 * @param pid	Pointer to structure with PID variables
 * ----------------------------------------------------------------------------
 */
void PID_Position(PID_Position_t *pid)
{
	int32_t output;
	int32_t maxAccumErr;
	int32_t errorTolerance;
	static bool isActive;
	static uint8_t dvPeriodCnt = 0;

	// Switch to the deactivated state and exit the routine
	if (*pid->pEnable == false)
	{
		if (isActive)
		{
			pid->priv.error = 0;
			pid->priv.accumError = 0;
			pid->priv.intgTerm = 0;
			pid->priv.propTerm = 0;
			pid->priv.dervTerm = 0;
			pid->err = 0;
			*pid->pOutA = 0;
			*pid->pOutB = 0;
			isActive = false;
		}
		return;
	}

	// Enable PID
	isActive = true;

	// Check maximum admissible value
	if (pid->maxIntegral > PID_POSTION_MAX_INTEGRAL_ERROR)
		pid->maxIntegral = PID_POSTION_MAX_INTEGRAL_ERROR;

	// Check dividers value
	if (pid->kpDiv <= 0)
		pid->kpDiv = 1;

	if (pid->kiDiv <= 0)
		pid->kiDiv = 1;

	if (pid->kdDiv <= 0)
		pid->kdDiv = 1;

	// Calculate maximum allowable cumulative error
	if (pid->Ki > 0)
		maxAccumErr = (pid->maxIntegral * pid->kiDiv) / pid->Ki;
	else
		maxAccumErr = 0;

	// Variable error calculation
	pid->priv.error = *pid->pSetpoint - *pid->pFeedback;

	// Cumulative error used for the calculation of the integral term
	pid->priv.accumError += pid->priv.error;

	if (abs(pid->priv.accumError) > maxAccumErr)
	{
		if (pid->priv.accumError < 0)
			pid->priv.accumError = -maxAccumErr;
		else
			pid->priv.accumError = maxAccumErr;
	}

	// Proportional term
	pid->priv.propTerm = (int32_t) (pid->Kp * pid->priv.error) / pid->kpDiv;

	// Integral term
	pid->priv.intgTerm = (int32_t) (pid->Ki * pid->priv.accumError) / pid->kiDiv;

	// Derivative term
	if (dvPeriodCnt == 0)
		pid->priv.prevFeedback = *pid->pFeedback;

	dvPeriodCnt++;

	if (dvPeriodCnt >= PID_DERV_SAMPLE_PERIOD)
	{
		pid->priv.dervTerm = (int32_t) (pid->Kd * (pid->priv.prevFeedback - *pid->pFeedback)) / pid->kdDiv;
		dvPeriodCnt = 0;
	}

	// Output = proportional term + integral term + derivative term
	output = pid->priv.propTerm + pid->priv.intgTerm + pid->priv.dervTerm;

	// Offset max value
	if (pid->offset > PID_POSTION_MAX_OFFSET_VALUE)
		pid->offset = PID_POSTION_MAX_OFFSET_VALUE;

	// Adding offset to output
	if (abs(output) > PID_POSTION_OFFSET_THRESHOLD)
	{
		if (output > 0)
			output += pid->offset;
		else
			output -= pid->offset;
	}

	// Check output limit values
	if (output > 1000)
		output = 1000;
	if (output < -1000)
		output = -1000;

	// Assign result to outputs
	if (output > 0)
	{
		*pid->pOutA = (uint16_t) output;
		*pid->pOutB = 0;
	}
	else
	{
		*pid->pOutB = (uint16_t) abs(output);
		*pid->pOutA = 0;
	}

	// Checking the limits of the variable
	if (pid->allowedErr > PID_MAX_ALLOWED_SETPOINT_ERROR)
		pid->allowedErr = PID_MAX_ALLOWED_SETPOINT_ERROR;

	// Deviation value allowed with respect to the setpoint
	errorTolerance = (*pid->pSetpoint * pid->allowedErr) / 100;

	// Increase the error warning variable if the setpoint value cannot be reached
	if (abs(pid->priv.error) > errorTolerance)
		pid->err++;
	else
		pid->err = 0;
}

/**
 * ----------------------------------------------------------------------------
 * @brief 			PID Set callback routine
 * ----------------------------------------------------------------------------
 * @param user_api 	Pointer to user API routine
 * ----------------------------------------------------------------------------
 */
void PID_SetCallback(void (*user_api)())
{
	pidCallback = user_api;
}

/**
 * ----------------------------------------------------------------------------
 * @brief 			PID Callback
 * ----------------------------------------------------------------------------
 */
void PID_Callback()
{
	if (pidCallback != NULL)
		pidCallback();
}
