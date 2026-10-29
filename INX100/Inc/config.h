/**
 ******************************************************************************
 * @file        : config.h
 * @author      : Ivan.Estudiez
 * @brief       : Configuration file
 * @date        : 21 sept 2026
 * @version     : 1.0
 ******************************************************************************
 */
#ifndef CONFIG_H_
#define CONFIG_H_

// System
// ----------------------------------------------------------------------------
#define CONFIG_TEMP_ERR_VALUE				(60)
#define CONFIG_SENSOR_ERR_VALUE				(260)
#define CONFIG_VOLTAGE_MIN_VALUE			(11000)
#define CONFIG_VOLTAGE_MAX_VALUE			(16000)
#define CONFIG_OVERCURRENT_ERR_VALUE		(6000)

// Application
// ----------------------------------------------------------------------------
#define CONFIG_CALIBRATION_REV				(20U)
#define CONFIG_CALIBRATION_PWM				(250U)
#define CONFIG_MOTOR_PULSES					(24)
#define CONFIG_MIN_SPEED					(35)
#define CONFIG_FURROW_WIDTH					(50)
#define CONFIG_CALIB_VALUE					(350)

#define CONFIG_DOSE_PRESET1					(25)
#define CONFIG_DOSE_PRESET2					(50)
#define CONFIG_DOSE_PRESET3					(100)
#define CONFIG_DOSE_PRESET4					(150)
#define CONFIG_DOSE_PRESET5					(200)

// PID
// ----------------------------------------------------------------------------
#define CONFIG_PID_KP						(1000)
#define CONFIG_PID_KI						(60)
#define CONFIG_PID_KD						(50)
#define CONFIG_PID_MAX_INT					(500)
#define CONFIG_PID_OUT_MIN					(150)
#define CONFIG_PID_OUT_MAX					(1000)
#define CONFIG_PID_DERV_TIME				(5)
#define CONFIG_PID_ERR_TIME					(200)
#define CONFIG_PID_P_DIVIDER				(10000)
#define CONFIG_PID_I_DIVIDER				(10000)
#define CONFIG_PID_D_DIVIDER				(1000)
#define CONFIG_PID_ALLOWED_ERR				(5)

#endif /* CONFIG_H_ */
