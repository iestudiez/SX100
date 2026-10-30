################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (14.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
C:/OneDrive/SRC/ST/SX100_SRC/SX100LIB/GUI/Src/gui_utils.c \
C:/OneDrive/SRC/ST/SX100_SRC/SX100LIB/GUI/Src/input_box.c \
C:/OneDrive/SRC/ST/SX100_SRC/SX100LIB/GUI/Src/input_box_bmp.c \
C:/OneDrive/SRC/ST/SX100_SRC/SX100LIB/GUI/Src/list_box.c \
C:/OneDrive/SRC/ST/SX100_SRC/SX100LIB/GUI/Src/list_box_bmp.c \
C:/OneDrive/SRC/ST/SX100_SRC/SX100LIB/GUI/Src/menu_list.c \
C:/OneDrive/SRC/ST/SX100_SRC/SX100LIB/GUI/Src/menu_list_bmp.c \
C:/OneDrive/SRC/ST/SX100_SRC/SX100LIB/GUI/Src/msgbox.c \
C:/OneDrive/SRC/ST/SX100_SRC/SX100LIB/GUI/Src/msgbox_bmp.c \
C:/OneDrive/SRC/ST/SX100_SRC/SX100LIB/GUI/Src/symbols_bmp.c 

OBJS += \
./SX100LIB/GUI/Src/gui_utils.o \
./SX100LIB/GUI/Src/input_box.o \
./SX100LIB/GUI/Src/input_box_bmp.o \
./SX100LIB/GUI/Src/list_box.o \
./SX100LIB/GUI/Src/list_box_bmp.o \
./SX100LIB/GUI/Src/menu_list.o \
./SX100LIB/GUI/Src/menu_list_bmp.o \
./SX100LIB/GUI/Src/msgbox.o \
./SX100LIB/GUI/Src/msgbox_bmp.o \
./SX100LIB/GUI/Src/symbols_bmp.o 

C_DEPS += \
./SX100LIB/GUI/Src/gui_utils.d \
./SX100LIB/GUI/Src/input_box.d \
./SX100LIB/GUI/Src/input_box_bmp.d \
./SX100LIB/GUI/Src/list_box.d \
./SX100LIB/GUI/Src/list_box_bmp.d \
./SX100LIB/GUI/Src/menu_list.d \
./SX100LIB/GUI/Src/menu_list_bmp.d \
./SX100LIB/GUI/Src/msgbox.d \
./SX100LIB/GUI/Src/msgbox_bmp.d \
./SX100LIB/GUI/Src/symbols_bmp.d 


# Each subdirectory must supply rules for building sources it contributes
SX100LIB/GUI/Src/gui_utils.o: C:/OneDrive/SRC/ST/SX100_SRC/SX100LIB/GUI/Src/gui_utils.c SX100LIB/GUI/Src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DSTM32 -DSTM32F4 -DSTM32F405xx -c -I"C:/Src/STM32/SX100_SRC/TESTING/Inc" -I"C:/Src/STM32/SX100_SRC/Chip_Headers/CMSIS/Include" -I"C:/Src/STM32/SX100_SRC/Chip_Headers/CMSIS/Device/ST/STM32F4xx/Include" -I"C:/OneDrive/SRC/ST/SX100_SRC/SX100LIB/Inc" -I"C:/Src/STM32/SX100_SRC/SX100LIB/GUI/Inc" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
SX100LIB/GUI/Src/input_box.o: C:/OneDrive/SRC/ST/SX100_SRC/SX100LIB/GUI/Src/input_box.c SX100LIB/GUI/Src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DSTM32 -DSTM32F4 -DSTM32F405xx -c -I"C:/Src/STM32/SX100_SRC/TESTING/Inc" -I"C:/Src/STM32/SX100_SRC/Chip_Headers/CMSIS/Include" -I"C:/Src/STM32/SX100_SRC/Chip_Headers/CMSIS/Device/ST/STM32F4xx/Include" -I"C:/OneDrive/SRC/ST/SX100_SRC/SX100LIB/Inc" -I"C:/Src/STM32/SX100_SRC/SX100LIB/GUI/Inc" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
SX100LIB/GUI/Src/input_box_bmp.o: C:/OneDrive/SRC/ST/SX100_SRC/SX100LIB/GUI/Src/input_box_bmp.c SX100LIB/GUI/Src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DSTM32 -DSTM32F4 -DSTM32F405xx -c -I"C:/Src/STM32/SX100_SRC/TESTING/Inc" -I"C:/Src/STM32/SX100_SRC/Chip_Headers/CMSIS/Include" -I"C:/Src/STM32/SX100_SRC/Chip_Headers/CMSIS/Device/ST/STM32F4xx/Include" -I"C:/OneDrive/SRC/ST/SX100_SRC/SX100LIB/Inc" -I"C:/Src/STM32/SX100_SRC/SX100LIB/GUI/Inc" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
SX100LIB/GUI/Src/list_box.o: C:/OneDrive/SRC/ST/SX100_SRC/SX100LIB/GUI/Src/list_box.c SX100LIB/GUI/Src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DSTM32 -DSTM32F4 -DSTM32F405xx -c -I"C:/Src/STM32/SX100_SRC/TESTING/Inc" -I"C:/Src/STM32/SX100_SRC/Chip_Headers/CMSIS/Include" -I"C:/Src/STM32/SX100_SRC/Chip_Headers/CMSIS/Device/ST/STM32F4xx/Include" -I"C:/OneDrive/SRC/ST/SX100_SRC/SX100LIB/Inc" -I"C:/Src/STM32/SX100_SRC/SX100LIB/GUI/Inc" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
SX100LIB/GUI/Src/list_box_bmp.o: C:/OneDrive/SRC/ST/SX100_SRC/SX100LIB/GUI/Src/list_box_bmp.c SX100LIB/GUI/Src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DSTM32 -DSTM32F4 -DSTM32F405xx -c -I"C:/Src/STM32/SX100_SRC/TESTING/Inc" -I"C:/Src/STM32/SX100_SRC/Chip_Headers/CMSIS/Include" -I"C:/Src/STM32/SX100_SRC/Chip_Headers/CMSIS/Device/ST/STM32F4xx/Include" -I"C:/OneDrive/SRC/ST/SX100_SRC/SX100LIB/Inc" -I"C:/Src/STM32/SX100_SRC/SX100LIB/GUI/Inc" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
SX100LIB/GUI/Src/menu_list.o: C:/OneDrive/SRC/ST/SX100_SRC/SX100LIB/GUI/Src/menu_list.c SX100LIB/GUI/Src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DSTM32 -DSTM32F4 -DSTM32F405xx -c -I"C:/Src/STM32/SX100_SRC/TESTING/Inc" -I"C:/Src/STM32/SX100_SRC/Chip_Headers/CMSIS/Include" -I"C:/Src/STM32/SX100_SRC/Chip_Headers/CMSIS/Device/ST/STM32F4xx/Include" -I"C:/OneDrive/SRC/ST/SX100_SRC/SX100LIB/Inc" -I"C:/Src/STM32/SX100_SRC/SX100LIB/GUI/Inc" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
SX100LIB/GUI/Src/menu_list_bmp.o: C:/OneDrive/SRC/ST/SX100_SRC/SX100LIB/GUI/Src/menu_list_bmp.c SX100LIB/GUI/Src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DSTM32 -DSTM32F4 -DSTM32F405xx -c -I"C:/Src/STM32/SX100_SRC/TESTING/Inc" -I"C:/Src/STM32/SX100_SRC/Chip_Headers/CMSIS/Include" -I"C:/Src/STM32/SX100_SRC/Chip_Headers/CMSIS/Device/ST/STM32F4xx/Include" -I"C:/OneDrive/SRC/ST/SX100_SRC/SX100LIB/Inc" -I"C:/Src/STM32/SX100_SRC/SX100LIB/GUI/Inc" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
SX100LIB/GUI/Src/msgbox.o: C:/OneDrive/SRC/ST/SX100_SRC/SX100LIB/GUI/Src/msgbox.c SX100LIB/GUI/Src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DSTM32 -DSTM32F4 -DSTM32F405xx -c -I"C:/Src/STM32/SX100_SRC/TESTING/Inc" -I"C:/Src/STM32/SX100_SRC/Chip_Headers/CMSIS/Include" -I"C:/Src/STM32/SX100_SRC/Chip_Headers/CMSIS/Device/ST/STM32F4xx/Include" -I"C:/OneDrive/SRC/ST/SX100_SRC/SX100LIB/Inc" -I"C:/Src/STM32/SX100_SRC/SX100LIB/GUI/Inc" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
SX100LIB/GUI/Src/msgbox_bmp.o: C:/OneDrive/SRC/ST/SX100_SRC/SX100LIB/GUI/Src/msgbox_bmp.c SX100LIB/GUI/Src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DSTM32 -DSTM32F4 -DSTM32F405xx -c -I"C:/Src/STM32/SX100_SRC/TESTING/Inc" -I"C:/Src/STM32/SX100_SRC/Chip_Headers/CMSIS/Include" -I"C:/Src/STM32/SX100_SRC/Chip_Headers/CMSIS/Device/ST/STM32F4xx/Include" -I"C:/OneDrive/SRC/ST/SX100_SRC/SX100LIB/Inc" -I"C:/Src/STM32/SX100_SRC/SX100LIB/GUI/Inc" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
SX100LIB/GUI/Src/symbols_bmp.o: C:/OneDrive/SRC/ST/SX100_SRC/SX100LIB/GUI/Src/symbols_bmp.c SX100LIB/GUI/Src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DSTM32 -DSTM32F4 -DSTM32F405xx -c -I"C:/Src/STM32/SX100_SRC/TESTING/Inc" -I"C:/Src/STM32/SX100_SRC/Chip_Headers/CMSIS/Include" -I"C:/Src/STM32/SX100_SRC/Chip_Headers/CMSIS/Device/ST/STM32F4xx/Include" -I"C:/OneDrive/SRC/ST/SX100_SRC/SX100LIB/Inc" -I"C:/Src/STM32/SX100_SRC/SX100LIB/GUI/Inc" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-SX100LIB-2f-GUI-2f-Src

clean-SX100LIB-2f-GUI-2f-Src:
	-$(RM) ./SX100LIB/GUI/Src/gui_utils.cyclo ./SX100LIB/GUI/Src/gui_utils.d ./SX100LIB/GUI/Src/gui_utils.o ./SX100LIB/GUI/Src/gui_utils.su ./SX100LIB/GUI/Src/input_box.cyclo ./SX100LIB/GUI/Src/input_box.d ./SX100LIB/GUI/Src/input_box.o ./SX100LIB/GUI/Src/input_box.su ./SX100LIB/GUI/Src/input_box_bmp.cyclo ./SX100LIB/GUI/Src/input_box_bmp.d ./SX100LIB/GUI/Src/input_box_bmp.o ./SX100LIB/GUI/Src/input_box_bmp.su ./SX100LIB/GUI/Src/list_box.cyclo ./SX100LIB/GUI/Src/list_box.d ./SX100LIB/GUI/Src/list_box.o ./SX100LIB/GUI/Src/list_box.su ./SX100LIB/GUI/Src/list_box_bmp.cyclo ./SX100LIB/GUI/Src/list_box_bmp.d ./SX100LIB/GUI/Src/list_box_bmp.o ./SX100LIB/GUI/Src/list_box_bmp.su ./SX100LIB/GUI/Src/menu_list.cyclo ./SX100LIB/GUI/Src/menu_list.d ./SX100LIB/GUI/Src/menu_list.o ./SX100LIB/GUI/Src/menu_list.su ./SX100LIB/GUI/Src/menu_list_bmp.cyclo ./SX100LIB/GUI/Src/menu_list_bmp.d ./SX100LIB/GUI/Src/menu_list_bmp.o ./SX100LIB/GUI/Src/menu_list_bmp.su ./SX100LIB/GUI/Src/msgbox.cyclo ./SX100LIB/GUI/Src/msgbox.d ./SX100LIB/GUI/Src/msgbox.o ./SX100LIB/GUI/Src/msgbox.su ./SX100LIB/GUI/Src/msgbox_bmp.cyclo ./SX100LIB/GUI/Src/msgbox_bmp.d ./SX100LIB/GUI/Src/msgbox_bmp.o ./SX100LIB/GUI/Src/msgbox_bmp.su ./SX100LIB/GUI/Src/symbols_bmp.cyclo ./SX100LIB/GUI/Src/symbols_bmp.d ./SX100LIB/GUI/Src/symbols_bmp.o ./SX100LIB/GUI/Src/symbols_bmp.su

.PHONY: clean-SX100LIB-2f-GUI-2f-Src

