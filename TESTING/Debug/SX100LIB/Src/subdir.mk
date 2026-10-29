################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (14.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
C:/OneDrive/SRC/ST/SX100_SRC/SX100LIB/Src/adc.c \
C:/OneDrive/SRC/ST/SX100_SRC/SX100LIB/Src/adc78h90.c \
C:/OneDrive/SRC/ST/SX100_SRC/SX100LIB/Src/ads8688a.c \
C:/OneDrive/SRC/ST/SX100_SRC/SX100LIB/Src/can.c \
C:/OneDrive/SRC/ST/SX100_SRC/SX100LIB/Src/debug.c \
C:/OneDrive/SRC/ST/SX100_SRC/SX100LIB/Src/dma.c \
C:/OneDrive/SRC/ST/SX100_SRC/SX100LIB/Src/eeprom.c \
C:/OneDrive/SRC/ST/SX100_SRC/SX100LIB/Src/fonts.c \
C:/OneDrive/SRC/ST/SX100_SRC/SX100LIB/Src/glcd.c \
C:/OneDrive/SRC/ST/SX100_SRC/SX100LIB/Src/global.c \
C:/OneDrive/SRC/ST/SX100_SRC/SX100LIB/Src/gnss.c \
C:/OneDrive/SRC/ST/SX100_SRC/SX100LIB/Src/gpio.c \
C:/OneDrive/SRC/ST/SX100_SRC/SX100LIB/Src/ina239.c \
C:/OneDrive/SRC/ST/SX100_SRC/SX100LIB/Src/indicators.c \
C:/OneDrive/SRC/ST/SX100_SRC/SX100LIB/Src/keyboard.c \
C:/OneDrive/SRC/ST/SX100_SRC/SX100LIB/Src/lcd.c \
C:/OneDrive/SRC/ST/SX100_SRC/SX100LIB/Src/pid.c \
C:/OneDrive/SRC/ST/SX100_SRC/SX100LIB/Src/rcc.c \
C:/OneDrive/SRC/ST/SX100_SRC/SX100LIB/Src/scheduler.c \
C:/OneDrive/SRC/ST/SX100_SRC/SX100LIB/Src/spi.c \
C:/OneDrive/SRC/ST/SX100_SRC/SX100LIB/Src/sx100board.c \
C:/OneDrive/SRC/ST/SX100_SRC/SX100LIB/Src/system_sx100.c \
C:/OneDrive/SRC/ST/SX100_SRC/SX100LIB/Src/systick.c \
C:/OneDrive/SRC/ST/SX100_SRC/SX100LIB/Src/tim.c \
C:/OneDrive/SRC/ST/SX100_SRC/SX100LIB/Src/uart.c \
C:/OneDrive/SRC/ST/SX100_SRC/SX100LIB/Src/utils.c 

OBJS += \
./SX100LIB/Src/adc.o \
./SX100LIB/Src/adc78h90.o \
./SX100LIB/Src/ads8688a.o \
./SX100LIB/Src/can.o \
./SX100LIB/Src/debug.o \
./SX100LIB/Src/dma.o \
./SX100LIB/Src/eeprom.o \
./SX100LIB/Src/fonts.o \
./SX100LIB/Src/glcd.o \
./SX100LIB/Src/global.o \
./SX100LIB/Src/gnss.o \
./SX100LIB/Src/gpio.o \
./SX100LIB/Src/ina239.o \
./SX100LIB/Src/indicators.o \
./SX100LIB/Src/keyboard.o \
./SX100LIB/Src/lcd.o \
./SX100LIB/Src/pid.o \
./SX100LIB/Src/rcc.o \
./SX100LIB/Src/scheduler.o \
./SX100LIB/Src/spi.o \
./SX100LIB/Src/sx100board.o \
./SX100LIB/Src/system_sx100.o \
./SX100LIB/Src/systick.o \
./SX100LIB/Src/tim.o \
./SX100LIB/Src/uart.o \
./SX100LIB/Src/utils.o 

C_DEPS += \
./SX100LIB/Src/adc.d \
./SX100LIB/Src/adc78h90.d \
./SX100LIB/Src/ads8688a.d \
./SX100LIB/Src/can.d \
./SX100LIB/Src/debug.d \
./SX100LIB/Src/dma.d \
./SX100LIB/Src/eeprom.d \
./SX100LIB/Src/fonts.d \
./SX100LIB/Src/glcd.d \
./SX100LIB/Src/global.d \
./SX100LIB/Src/gnss.d \
./SX100LIB/Src/gpio.d \
./SX100LIB/Src/ina239.d \
./SX100LIB/Src/indicators.d \
./SX100LIB/Src/keyboard.d \
./SX100LIB/Src/lcd.d \
./SX100LIB/Src/pid.d \
./SX100LIB/Src/rcc.d \
./SX100LIB/Src/scheduler.d \
./SX100LIB/Src/spi.d \
./SX100LIB/Src/sx100board.d \
./SX100LIB/Src/system_sx100.d \
./SX100LIB/Src/systick.d \
./SX100LIB/Src/tim.d \
./SX100LIB/Src/uart.d \
./SX100LIB/Src/utils.d 


# Each subdirectory must supply rules for building sources it contributes
SX100LIB/Src/adc.o: C:/OneDrive/SRC/ST/SX100_SRC/SX100LIB/Src/adc.c SX100LIB/Src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DSTM32 -DSTM32F4 -DSTM32F405xx -c -I"C:/OneDrive/SRC/ST/SX100_SRC/TESTING/Inc" -I"C:/OneDrive/SRC/ST/SX100_SRC/Chip_Headers/CMSIS/Include" -I"C:/OneDrive/SRC/ST/SX100_SRC/Chip_Headers/CMSIS/Device/ST/STM32F4xx/Include" -I"C:/OneDrive/SRC/ST/SX100_SRC/SX100LIB/Inc" -I"C:/OneDrive/SRC/ST/SX100_SRC/SX100LIB/GUI/Inc" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
SX100LIB/Src/adc78h90.o: C:/OneDrive/SRC/ST/SX100_SRC/SX100LIB/Src/adc78h90.c SX100LIB/Src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DSTM32 -DSTM32F4 -DSTM32F405xx -c -I"C:/OneDrive/SRC/ST/SX100_SRC/TESTING/Inc" -I"C:/OneDrive/SRC/ST/SX100_SRC/Chip_Headers/CMSIS/Include" -I"C:/OneDrive/SRC/ST/SX100_SRC/Chip_Headers/CMSIS/Device/ST/STM32F4xx/Include" -I"C:/OneDrive/SRC/ST/SX100_SRC/SX100LIB/Inc" -I"C:/OneDrive/SRC/ST/SX100_SRC/SX100LIB/GUI/Inc" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
SX100LIB/Src/ads8688a.o: C:/OneDrive/SRC/ST/SX100_SRC/SX100LIB/Src/ads8688a.c SX100LIB/Src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DSTM32 -DSTM32F4 -DSTM32F405xx -c -I"C:/OneDrive/SRC/ST/SX100_SRC/TESTING/Inc" -I"C:/OneDrive/SRC/ST/SX100_SRC/Chip_Headers/CMSIS/Include" -I"C:/OneDrive/SRC/ST/SX100_SRC/Chip_Headers/CMSIS/Device/ST/STM32F4xx/Include" -I"C:/OneDrive/SRC/ST/SX100_SRC/SX100LIB/Inc" -I"C:/OneDrive/SRC/ST/SX100_SRC/SX100LIB/GUI/Inc" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
SX100LIB/Src/can.o: C:/OneDrive/SRC/ST/SX100_SRC/SX100LIB/Src/can.c SX100LIB/Src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DSTM32 -DSTM32F4 -DSTM32F405xx -c -I"C:/OneDrive/SRC/ST/SX100_SRC/TESTING/Inc" -I"C:/OneDrive/SRC/ST/SX100_SRC/Chip_Headers/CMSIS/Include" -I"C:/OneDrive/SRC/ST/SX100_SRC/Chip_Headers/CMSIS/Device/ST/STM32F4xx/Include" -I"C:/OneDrive/SRC/ST/SX100_SRC/SX100LIB/Inc" -I"C:/OneDrive/SRC/ST/SX100_SRC/SX100LIB/GUI/Inc" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
SX100LIB/Src/debug.o: C:/OneDrive/SRC/ST/SX100_SRC/SX100LIB/Src/debug.c SX100LIB/Src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DSTM32 -DSTM32F4 -DSTM32F405xx -c -I"C:/OneDrive/SRC/ST/SX100_SRC/TESTING/Inc" -I"C:/OneDrive/SRC/ST/SX100_SRC/Chip_Headers/CMSIS/Include" -I"C:/OneDrive/SRC/ST/SX100_SRC/Chip_Headers/CMSIS/Device/ST/STM32F4xx/Include" -I"C:/OneDrive/SRC/ST/SX100_SRC/SX100LIB/Inc" -I"C:/OneDrive/SRC/ST/SX100_SRC/SX100LIB/GUI/Inc" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
SX100LIB/Src/dma.o: C:/OneDrive/SRC/ST/SX100_SRC/SX100LIB/Src/dma.c SX100LIB/Src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DSTM32 -DSTM32F4 -DSTM32F405xx -c -I"C:/OneDrive/SRC/ST/SX100_SRC/TESTING/Inc" -I"C:/OneDrive/SRC/ST/SX100_SRC/Chip_Headers/CMSIS/Include" -I"C:/OneDrive/SRC/ST/SX100_SRC/Chip_Headers/CMSIS/Device/ST/STM32F4xx/Include" -I"C:/OneDrive/SRC/ST/SX100_SRC/SX100LIB/Inc" -I"C:/OneDrive/SRC/ST/SX100_SRC/SX100LIB/GUI/Inc" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
SX100LIB/Src/eeprom.o: C:/OneDrive/SRC/ST/SX100_SRC/SX100LIB/Src/eeprom.c SX100LIB/Src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DSTM32 -DSTM32F4 -DSTM32F405xx -c -I"C:/OneDrive/SRC/ST/SX100_SRC/TESTING/Inc" -I"C:/OneDrive/SRC/ST/SX100_SRC/Chip_Headers/CMSIS/Include" -I"C:/OneDrive/SRC/ST/SX100_SRC/Chip_Headers/CMSIS/Device/ST/STM32F4xx/Include" -I"C:/OneDrive/SRC/ST/SX100_SRC/SX100LIB/Inc" -I"C:/OneDrive/SRC/ST/SX100_SRC/SX100LIB/GUI/Inc" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
SX100LIB/Src/fonts.o: C:/OneDrive/SRC/ST/SX100_SRC/SX100LIB/Src/fonts.c SX100LIB/Src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DSTM32 -DSTM32F4 -DSTM32F405xx -c -I"C:/OneDrive/SRC/ST/SX100_SRC/TESTING/Inc" -I"C:/OneDrive/SRC/ST/SX100_SRC/Chip_Headers/CMSIS/Include" -I"C:/OneDrive/SRC/ST/SX100_SRC/Chip_Headers/CMSIS/Device/ST/STM32F4xx/Include" -I"C:/OneDrive/SRC/ST/SX100_SRC/SX100LIB/Inc" -I"C:/OneDrive/SRC/ST/SX100_SRC/SX100LIB/GUI/Inc" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
SX100LIB/Src/glcd.o: C:/OneDrive/SRC/ST/SX100_SRC/SX100LIB/Src/glcd.c SX100LIB/Src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DSTM32 -DSTM32F4 -DSTM32F405xx -c -I"C:/OneDrive/SRC/ST/SX100_SRC/TESTING/Inc" -I"C:/OneDrive/SRC/ST/SX100_SRC/Chip_Headers/CMSIS/Include" -I"C:/OneDrive/SRC/ST/SX100_SRC/Chip_Headers/CMSIS/Device/ST/STM32F4xx/Include" -I"C:/OneDrive/SRC/ST/SX100_SRC/SX100LIB/Inc" -I"C:/OneDrive/SRC/ST/SX100_SRC/SX100LIB/GUI/Inc" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
SX100LIB/Src/global.o: C:/OneDrive/SRC/ST/SX100_SRC/SX100LIB/Src/global.c SX100LIB/Src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DSTM32 -DSTM32F4 -DSTM32F405xx -c -I"C:/OneDrive/SRC/ST/SX100_SRC/TESTING/Inc" -I"C:/OneDrive/SRC/ST/SX100_SRC/Chip_Headers/CMSIS/Include" -I"C:/OneDrive/SRC/ST/SX100_SRC/Chip_Headers/CMSIS/Device/ST/STM32F4xx/Include" -I"C:/OneDrive/SRC/ST/SX100_SRC/SX100LIB/Inc" -I"C:/OneDrive/SRC/ST/SX100_SRC/SX100LIB/GUI/Inc" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
SX100LIB/Src/gnss.o: C:/OneDrive/SRC/ST/SX100_SRC/SX100LIB/Src/gnss.c SX100LIB/Src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DSTM32 -DSTM32F4 -DSTM32F405xx -c -I"C:/OneDrive/SRC/ST/SX100_SRC/TESTING/Inc" -I"C:/OneDrive/SRC/ST/SX100_SRC/Chip_Headers/CMSIS/Include" -I"C:/OneDrive/SRC/ST/SX100_SRC/Chip_Headers/CMSIS/Device/ST/STM32F4xx/Include" -I"C:/OneDrive/SRC/ST/SX100_SRC/SX100LIB/Inc" -I"C:/OneDrive/SRC/ST/SX100_SRC/SX100LIB/GUI/Inc" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
SX100LIB/Src/gpio.o: C:/OneDrive/SRC/ST/SX100_SRC/SX100LIB/Src/gpio.c SX100LIB/Src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DSTM32 -DSTM32F4 -DSTM32F405xx -c -I"C:/OneDrive/SRC/ST/SX100_SRC/TESTING/Inc" -I"C:/OneDrive/SRC/ST/SX100_SRC/Chip_Headers/CMSIS/Include" -I"C:/OneDrive/SRC/ST/SX100_SRC/Chip_Headers/CMSIS/Device/ST/STM32F4xx/Include" -I"C:/OneDrive/SRC/ST/SX100_SRC/SX100LIB/Inc" -I"C:/OneDrive/SRC/ST/SX100_SRC/SX100LIB/GUI/Inc" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
SX100LIB/Src/ina239.o: C:/OneDrive/SRC/ST/SX100_SRC/SX100LIB/Src/ina239.c SX100LIB/Src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DSTM32 -DSTM32F4 -DSTM32F405xx -c -I"C:/OneDrive/SRC/ST/SX100_SRC/TESTING/Inc" -I"C:/OneDrive/SRC/ST/SX100_SRC/Chip_Headers/CMSIS/Include" -I"C:/OneDrive/SRC/ST/SX100_SRC/Chip_Headers/CMSIS/Device/ST/STM32F4xx/Include" -I"C:/OneDrive/SRC/ST/SX100_SRC/SX100LIB/Inc" -I"C:/OneDrive/SRC/ST/SX100_SRC/SX100LIB/GUI/Inc" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
SX100LIB/Src/indicators.o: C:/OneDrive/SRC/ST/SX100_SRC/SX100LIB/Src/indicators.c SX100LIB/Src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DSTM32 -DSTM32F4 -DSTM32F405xx -c -I"C:/OneDrive/SRC/ST/SX100_SRC/TESTING/Inc" -I"C:/OneDrive/SRC/ST/SX100_SRC/Chip_Headers/CMSIS/Include" -I"C:/OneDrive/SRC/ST/SX100_SRC/Chip_Headers/CMSIS/Device/ST/STM32F4xx/Include" -I"C:/OneDrive/SRC/ST/SX100_SRC/SX100LIB/Inc" -I"C:/OneDrive/SRC/ST/SX100_SRC/SX100LIB/GUI/Inc" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
SX100LIB/Src/keyboard.o: C:/OneDrive/SRC/ST/SX100_SRC/SX100LIB/Src/keyboard.c SX100LIB/Src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DSTM32 -DSTM32F4 -DSTM32F405xx -c -I"C:/OneDrive/SRC/ST/SX100_SRC/TESTING/Inc" -I"C:/OneDrive/SRC/ST/SX100_SRC/Chip_Headers/CMSIS/Include" -I"C:/OneDrive/SRC/ST/SX100_SRC/Chip_Headers/CMSIS/Device/ST/STM32F4xx/Include" -I"C:/OneDrive/SRC/ST/SX100_SRC/SX100LIB/Inc" -I"C:/OneDrive/SRC/ST/SX100_SRC/SX100LIB/GUI/Inc" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
SX100LIB/Src/lcd.o: C:/OneDrive/SRC/ST/SX100_SRC/SX100LIB/Src/lcd.c SX100LIB/Src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DSTM32 -DSTM32F4 -DSTM32F405xx -c -I"C:/OneDrive/SRC/ST/SX100_SRC/TESTING/Inc" -I"C:/OneDrive/SRC/ST/SX100_SRC/Chip_Headers/CMSIS/Include" -I"C:/OneDrive/SRC/ST/SX100_SRC/Chip_Headers/CMSIS/Device/ST/STM32F4xx/Include" -I"C:/OneDrive/SRC/ST/SX100_SRC/SX100LIB/Inc" -I"C:/OneDrive/SRC/ST/SX100_SRC/SX100LIB/GUI/Inc" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
SX100LIB/Src/pid.o: C:/OneDrive/SRC/ST/SX100_SRC/SX100LIB/Src/pid.c SX100LIB/Src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DSTM32 -DSTM32F4 -DSTM32F405xx -c -I"C:/OneDrive/SRC/ST/SX100_SRC/TESTING/Inc" -I"C:/OneDrive/SRC/ST/SX100_SRC/Chip_Headers/CMSIS/Include" -I"C:/OneDrive/SRC/ST/SX100_SRC/Chip_Headers/CMSIS/Device/ST/STM32F4xx/Include" -I"C:/OneDrive/SRC/ST/SX100_SRC/SX100LIB/Inc" -I"C:/OneDrive/SRC/ST/SX100_SRC/SX100LIB/GUI/Inc" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
SX100LIB/Src/rcc.o: C:/OneDrive/SRC/ST/SX100_SRC/SX100LIB/Src/rcc.c SX100LIB/Src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DSTM32 -DSTM32F4 -DSTM32F405xx -c -I"C:/OneDrive/SRC/ST/SX100_SRC/TESTING/Inc" -I"C:/OneDrive/SRC/ST/SX100_SRC/Chip_Headers/CMSIS/Include" -I"C:/OneDrive/SRC/ST/SX100_SRC/Chip_Headers/CMSIS/Device/ST/STM32F4xx/Include" -I"C:/OneDrive/SRC/ST/SX100_SRC/SX100LIB/Inc" -I"C:/OneDrive/SRC/ST/SX100_SRC/SX100LIB/GUI/Inc" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
SX100LIB/Src/scheduler.o: C:/OneDrive/SRC/ST/SX100_SRC/SX100LIB/Src/scheduler.c SX100LIB/Src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DSTM32 -DSTM32F4 -DSTM32F405xx -c -I"C:/OneDrive/SRC/ST/SX100_SRC/TESTING/Inc" -I"C:/OneDrive/SRC/ST/SX100_SRC/Chip_Headers/CMSIS/Include" -I"C:/OneDrive/SRC/ST/SX100_SRC/Chip_Headers/CMSIS/Device/ST/STM32F4xx/Include" -I"C:/OneDrive/SRC/ST/SX100_SRC/SX100LIB/Inc" -I"C:/OneDrive/SRC/ST/SX100_SRC/SX100LIB/GUI/Inc" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
SX100LIB/Src/spi.o: C:/OneDrive/SRC/ST/SX100_SRC/SX100LIB/Src/spi.c SX100LIB/Src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DSTM32 -DSTM32F4 -DSTM32F405xx -c -I"C:/OneDrive/SRC/ST/SX100_SRC/TESTING/Inc" -I"C:/OneDrive/SRC/ST/SX100_SRC/Chip_Headers/CMSIS/Include" -I"C:/OneDrive/SRC/ST/SX100_SRC/Chip_Headers/CMSIS/Device/ST/STM32F4xx/Include" -I"C:/OneDrive/SRC/ST/SX100_SRC/SX100LIB/Inc" -I"C:/OneDrive/SRC/ST/SX100_SRC/SX100LIB/GUI/Inc" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
SX100LIB/Src/sx100board.o: C:/OneDrive/SRC/ST/SX100_SRC/SX100LIB/Src/sx100board.c SX100LIB/Src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DSTM32 -DSTM32F4 -DSTM32F405xx -c -I"C:/OneDrive/SRC/ST/SX100_SRC/TESTING/Inc" -I"C:/OneDrive/SRC/ST/SX100_SRC/Chip_Headers/CMSIS/Include" -I"C:/OneDrive/SRC/ST/SX100_SRC/Chip_Headers/CMSIS/Device/ST/STM32F4xx/Include" -I"C:/OneDrive/SRC/ST/SX100_SRC/SX100LIB/Inc" -I"C:/OneDrive/SRC/ST/SX100_SRC/SX100LIB/GUI/Inc" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
SX100LIB/Src/system_sx100.o: C:/OneDrive/SRC/ST/SX100_SRC/SX100LIB/Src/system_sx100.c SX100LIB/Src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DSTM32 -DSTM32F4 -DSTM32F405xx -c -I"C:/OneDrive/SRC/ST/SX100_SRC/TESTING/Inc" -I"C:/OneDrive/SRC/ST/SX100_SRC/Chip_Headers/CMSIS/Include" -I"C:/OneDrive/SRC/ST/SX100_SRC/Chip_Headers/CMSIS/Device/ST/STM32F4xx/Include" -I"C:/OneDrive/SRC/ST/SX100_SRC/SX100LIB/Inc" -I"C:/OneDrive/SRC/ST/SX100_SRC/SX100LIB/GUI/Inc" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
SX100LIB/Src/systick.o: C:/OneDrive/SRC/ST/SX100_SRC/SX100LIB/Src/systick.c SX100LIB/Src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DSTM32 -DSTM32F4 -DSTM32F405xx -c -I"C:/OneDrive/SRC/ST/SX100_SRC/TESTING/Inc" -I"C:/OneDrive/SRC/ST/SX100_SRC/Chip_Headers/CMSIS/Include" -I"C:/OneDrive/SRC/ST/SX100_SRC/Chip_Headers/CMSIS/Device/ST/STM32F4xx/Include" -I"C:/OneDrive/SRC/ST/SX100_SRC/SX100LIB/Inc" -I"C:/OneDrive/SRC/ST/SX100_SRC/SX100LIB/GUI/Inc" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
SX100LIB/Src/tim.o: C:/OneDrive/SRC/ST/SX100_SRC/SX100LIB/Src/tim.c SX100LIB/Src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DSTM32 -DSTM32F4 -DSTM32F405xx -c -I"C:/OneDrive/SRC/ST/SX100_SRC/TESTING/Inc" -I"C:/OneDrive/SRC/ST/SX100_SRC/Chip_Headers/CMSIS/Include" -I"C:/OneDrive/SRC/ST/SX100_SRC/Chip_Headers/CMSIS/Device/ST/STM32F4xx/Include" -I"C:/OneDrive/SRC/ST/SX100_SRC/SX100LIB/Inc" -I"C:/OneDrive/SRC/ST/SX100_SRC/SX100LIB/GUI/Inc" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
SX100LIB/Src/uart.o: C:/OneDrive/SRC/ST/SX100_SRC/SX100LIB/Src/uart.c SX100LIB/Src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DSTM32 -DSTM32F4 -DSTM32F405xx -c -I"C:/OneDrive/SRC/ST/SX100_SRC/TESTING/Inc" -I"C:/OneDrive/SRC/ST/SX100_SRC/Chip_Headers/CMSIS/Include" -I"C:/OneDrive/SRC/ST/SX100_SRC/Chip_Headers/CMSIS/Device/ST/STM32F4xx/Include" -I"C:/OneDrive/SRC/ST/SX100_SRC/SX100LIB/Inc" -I"C:/OneDrive/SRC/ST/SX100_SRC/SX100LIB/GUI/Inc" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
SX100LIB/Src/utils.o: C:/OneDrive/SRC/ST/SX100_SRC/SX100LIB/Src/utils.c SX100LIB/Src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DSTM32 -DSTM32F4 -DSTM32F405xx -c -I"C:/OneDrive/SRC/ST/SX100_SRC/TESTING/Inc" -I"C:/OneDrive/SRC/ST/SX100_SRC/Chip_Headers/CMSIS/Include" -I"C:/OneDrive/SRC/ST/SX100_SRC/Chip_Headers/CMSIS/Device/ST/STM32F4xx/Include" -I"C:/OneDrive/SRC/ST/SX100_SRC/SX100LIB/Inc" -I"C:/OneDrive/SRC/ST/SX100_SRC/SX100LIB/GUI/Inc" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-SX100LIB-2f-Src

clean-SX100LIB-2f-Src:
	-$(RM) ./SX100LIB/Src/adc.cyclo ./SX100LIB/Src/adc.d ./SX100LIB/Src/adc.o ./SX100LIB/Src/adc.su ./SX100LIB/Src/adc78h90.cyclo ./SX100LIB/Src/adc78h90.d ./SX100LIB/Src/adc78h90.o ./SX100LIB/Src/adc78h90.su ./SX100LIB/Src/ads8688a.cyclo ./SX100LIB/Src/ads8688a.d ./SX100LIB/Src/ads8688a.o ./SX100LIB/Src/ads8688a.su ./SX100LIB/Src/can.cyclo ./SX100LIB/Src/can.d ./SX100LIB/Src/can.o ./SX100LIB/Src/can.su ./SX100LIB/Src/debug.cyclo ./SX100LIB/Src/debug.d ./SX100LIB/Src/debug.o ./SX100LIB/Src/debug.su ./SX100LIB/Src/dma.cyclo ./SX100LIB/Src/dma.d ./SX100LIB/Src/dma.o ./SX100LIB/Src/dma.su ./SX100LIB/Src/eeprom.cyclo ./SX100LIB/Src/eeprom.d ./SX100LIB/Src/eeprom.o ./SX100LIB/Src/eeprom.su ./SX100LIB/Src/fonts.cyclo ./SX100LIB/Src/fonts.d ./SX100LIB/Src/fonts.o ./SX100LIB/Src/fonts.su ./SX100LIB/Src/glcd.cyclo ./SX100LIB/Src/glcd.d ./SX100LIB/Src/glcd.o ./SX100LIB/Src/glcd.su ./SX100LIB/Src/global.cyclo ./SX100LIB/Src/global.d ./SX100LIB/Src/global.o ./SX100LIB/Src/global.su ./SX100LIB/Src/gnss.cyclo ./SX100LIB/Src/gnss.d ./SX100LIB/Src/gnss.o ./SX100LIB/Src/gnss.su ./SX100LIB/Src/gpio.cyclo ./SX100LIB/Src/gpio.d ./SX100LIB/Src/gpio.o ./SX100LIB/Src/gpio.su ./SX100LIB/Src/ina239.cyclo ./SX100LIB/Src/ina239.d ./SX100LIB/Src/ina239.o ./SX100LIB/Src/ina239.su ./SX100LIB/Src/indicators.cyclo ./SX100LIB/Src/indicators.d ./SX100LIB/Src/indicators.o ./SX100LIB/Src/indicators.su ./SX100LIB/Src/keyboard.cyclo ./SX100LIB/Src/keyboard.d ./SX100LIB/Src/keyboard.o ./SX100LIB/Src/keyboard.su ./SX100LIB/Src/lcd.cyclo ./SX100LIB/Src/lcd.d ./SX100LIB/Src/lcd.o ./SX100LIB/Src/lcd.su ./SX100LIB/Src/pid.cyclo ./SX100LIB/Src/pid.d ./SX100LIB/Src/pid.o ./SX100LIB/Src/pid.su ./SX100LIB/Src/rcc.cyclo ./SX100LIB/Src/rcc.d ./SX100LIB/Src/rcc.o ./SX100LIB/Src/rcc.su ./SX100LIB/Src/scheduler.cyclo ./SX100LIB/Src/scheduler.d ./SX100LIB/Src/scheduler.o ./SX100LIB/Src/scheduler.su ./SX100LIB/Src/spi.cyclo ./SX100LIB/Src/spi.d ./SX100LIB/Src/spi.o ./SX100LIB/Src/spi.su ./SX100LIB/Src/sx100board.cyclo ./SX100LIB/Src/sx100board.d ./SX100LIB/Src/sx100board.o ./SX100LIB/Src/sx100board.su ./SX100LIB/Src/system_sx100.cyclo ./SX100LIB/Src/system_sx100.d ./SX100LIB/Src/system_sx100.o ./SX100LIB/Src/system_sx100.su ./SX100LIB/Src/systick.cyclo ./SX100LIB/Src/systick.d ./SX100LIB/Src/systick.o ./SX100LIB/Src/systick.su ./SX100LIB/Src/tim.cyclo ./SX100LIB/Src/tim.d ./SX100LIB/Src/tim.o ./SX100LIB/Src/tim.su ./SX100LIB/Src/uart.cyclo ./SX100LIB/Src/uart.d ./SX100LIB/Src/uart.o ./SX100LIB/Src/uart.su ./SX100LIB/Src/utils.cyclo ./SX100LIB/Src/utils.d ./SX100LIB/Src/utils.o ./SX100LIB/Src/utils.su

.PHONY: clean-SX100LIB-2f-Src

