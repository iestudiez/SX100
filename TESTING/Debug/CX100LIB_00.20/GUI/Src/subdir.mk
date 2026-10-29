################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (14.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
C:/Src/STM32/CX100_SRC/CX100LIB_00.20/GUI/Src/gui_utils.c \
C:/Src/STM32/CX100_SRC/CX100LIB_00.20/GUI/Src/input_box.c \
C:/Src/STM32/CX100_SRC/CX100LIB_00.20/GUI/Src/input_box_bmp.c \
C:/Src/STM32/CX100_SRC/CX100LIB_00.20/GUI/Src/list_box.c \
C:/Src/STM32/CX100_SRC/CX100LIB_00.20/GUI/Src/list_box_bmp.c \
C:/Src/STM32/CX100_SRC/CX100LIB_00.20/GUI/Src/menu_list.c \
C:/Src/STM32/CX100_SRC/CX100LIB_00.20/GUI/Src/menu_list_bmp.c \
C:/Src/STM32/CX100_SRC/CX100LIB_00.20/GUI/Src/msgbox.c \
C:/Src/STM32/CX100_SRC/CX100LIB_00.20/GUI/Src/msgbox_bmp.c \
C:/Src/STM32/CX100_SRC/CX100LIB_00.20/GUI/Src/symbols_bmp.c 

OBJS += \
./CX100LIB_00.20/GUI/Src/gui_utils.o \
./CX100LIB_00.20/GUI/Src/input_box.o \
./CX100LIB_00.20/GUI/Src/input_box_bmp.o \
./CX100LIB_00.20/GUI/Src/list_box.o \
./CX100LIB_00.20/GUI/Src/list_box_bmp.o \
./CX100LIB_00.20/GUI/Src/menu_list.o \
./CX100LIB_00.20/GUI/Src/menu_list_bmp.o \
./CX100LIB_00.20/GUI/Src/msgbox.o \
./CX100LIB_00.20/GUI/Src/msgbox_bmp.o \
./CX100LIB_00.20/GUI/Src/symbols_bmp.o 

C_DEPS += \
./CX100LIB_00.20/GUI/Src/gui_utils.d \
./CX100LIB_00.20/GUI/Src/input_box.d \
./CX100LIB_00.20/GUI/Src/input_box_bmp.d \
./CX100LIB_00.20/GUI/Src/list_box.d \
./CX100LIB_00.20/GUI/Src/list_box_bmp.d \
./CX100LIB_00.20/GUI/Src/menu_list.d \
./CX100LIB_00.20/GUI/Src/menu_list_bmp.d \
./CX100LIB_00.20/GUI/Src/msgbox.d \
./CX100LIB_00.20/GUI/Src/msgbox_bmp.d \
./CX100LIB_00.20/GUI/Src/symbols_bmp.d 


# Each subdirectory must supply rules for building sources it contributes
CX100LIB_00.20/GUI/Src/gui_utils.o: C:/Src/STM32/CX100_SRC/CX100LIB_00.20/GUI/Src/gui_utils.c CX100LIB_00.20/GUI/Src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DSTM32 -DSTM32F4 -DSTM32F405xx -c -I"C:/Src/STM32/CX100_SRC/TESTING/Inc" -I"C:/Src/STM32/CX100_SRC/Chip_Headers/CMSIS/Include" -I"C:/Src/STM32/CX100_SRC/Chip_Headers/CMSIS/Device/ST/STM32F4xx/Include" -I"C:/Src/STM32/CX100_SRC/CX100LIB_00.20/GUI/Inc" -I"C:/Src/STM32/CX100_SRC/CX100LIB_00.20/Inc" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
CX100LIB_00.20/GUI/Src/input_box.o: C:/Src/STM32/CX100_SRC/CX100LIB_00.20/GUI/Src/input_box.c CX100LIB_00.20/GUI/Src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DSTM32 -DSTM32F4 -DSTM32F405xx -c -I"C:/Src/STM32/CX100_SRC/TESTING/Inc" -I"C:/Src/STM32/CX100_SRC/Chip_Headers/CMSIS/Include" -I"C:/Src/STM32/CX100_SRC/Chip_Headers/CMSIS/Device/ST/STM32F4xx/Include" -I"C:/Src/STM32/CX100_SRC/CX100LIB_00.20/GUI/Inc" -I"C:/Src/STM32/CX100_SRC/CX100LIB_00.20/Inc" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
CX100LIB_00.20/GUI/Src/input_box_bmp.o: C:/Src/STM32/CX100_SRC/CX100LIB_00.20/GUI/Src/input_box_bmp.c CX100LIB_00.20/GUI/Src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DSTM32 -DSTM32F4 -DSTM32F405xx -c -I"C:/Src/STM32/CX100_SRC/TESTING/Inc" -I"C:/Src/STM32/CX100_SRC/Chip_Headers/CMSIS/Include" -I"C:/Src/STM32/CX100_SRC/Chip_Headers/CMSIS/Device/ST/STM32F4xx/Include" -I"C:/Src/STM32/CX100_SRC/CX100LIB_00.20/GUI/Inc" -I"C:/Src/STM32/CX100_SRC/CX100LIB_00.20/Inc" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
CX100LIB_00.20/GUI/Src/list_box.o: C:/Src/STM32/CX100_SRC/CX100LIB_00.20/GUI/Src/list_box.c CX100LIB_00.20/GUI/Src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DSTM32 -DSTM32F4 -DSTM32F405xx -c -I"C:/Src/STM32/CX100_SRC/TESTING/Inc" -I"C:/Src/STM32/CX100_SRC/Chip_Headers/CMSIS/Include" -I"C:/Src/STM32/CX100_SRC/Chip_Headers/CMSIS/Device/ST/STM32F4xx/Include" -I"C:/Src/STM32/CX100_SRC/CX100LIB_00.20/GUI/Inc" -I"C:/Src/STM32/CX100_SRC/CX100LIB_00.20/Inc" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
CX100LIB_00.20/GUI/Src/list_box_bmp.o: C:/Src/STM32/CX100_SRC/CX100LIB_00.20/GUI/Src/list_box_bmp.c CX100LIB_00.20/GUI/Src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DSTM32 -DSTM32F4 -DSTM32F405xx -c -I"C:/Src/STM32/CX100_SRC/TESTING/Inc" -I"C:/Src/STM32/CX100_SRC/Chip_Headers/CMSIS/Include" -I"C:/Src/STM32/CX100_SRC/Chip_Headers/CMSIS/Device/ST/STM32F4xx/Include" -I"C:/Src/STM32/CX100_SRC/CX100LIB_00.20/GUI/Inc" -I"C:/Src/STM32/CX100_SRC/CX100LIB_00.20/Inc" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
CX100LIB_00.20/GUI/Src/menu_list.o: C:/Src/STM32/CX100_SRC/CX100LIB_00.20/GUI/Src/menu_list.c CX100LIB_00.20/GUI/Src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DSTM32 -DSTM32F4 -DSTM32F405xx -c -I"C:/Src/STM32/CX100_SRC/TESTING/Inc" -I"C:/Src/STM32/CX100_SRC/Chip_Headers/CMSIS/Include" -I"C:/Src/STM32/CX100_SRC/Chip_Headers/CMSIS/Device/ST/STM32F4xx/Include" -I"C:/Src/STM32/CX100_SRC/CX100LIB_00.20/GUI/Inc" -I"C:/Src/STM32/CX100_SRC/CX100LIB_00.20/Inc" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
CX100LIB_00.20/GUI/Src/menu_list_bmp.o: C:/Src/STM32/CX100_SRC/CX100LIB_00.20/GUI/Src/menu_list_bmp.c CX100LIB_00.20/GUI/Src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DSTM32 -DSTM32F4 -DSTM32F405xx -c -I"C:/Src/STM32/CX100_SRC/TESTING/Inc" -I"C:/Src/STM32/CX100_SRC/Chip_Headers/CMSIS/Include" -I"C:/Src/STM32/CX100_SRC/Chip_Headers/CMSIS/Device/ST/STM32F4xx/Include" -I"C:/Src/STM32/CX100_SRC/CX100LIB_00.20/GUI/Inc" -I"C:/Src/STM32/CX100_SRC/CX100LIB_00.20/Inc" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
CX100LIB_00.20/GUI/Src/msgbox.o: C:/Src/STM32/CX100_SRC/CX100LIB_00.20/GUI/Src/msgbox.c CX100LIB_00.20/GUI/Src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DSTM32 -DSTM32F4 -DSTM32F405xx -c -I"C:/Src/STM32/CX100_SRC/TESTING/Inc" -I"C:/Src/STM32/CX100_SRC/Chip_Headers/CMSIS/Include" -I"C:/Src/STM32/CX100_SRC/Chip_Headers/CMSIS/Device/ST/STM32F4xx/Include" -I"C:/Src/STM32/CX100_SRC/CX100LIB_00.20/GUI/Inc" -I"C:/Src/STM32/CX100_SRC/CX100LIB_00.20/Inc" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
CX100LIB_00.20/GUI/Src/msgbox_bmp.o: C:/Src/STM32/CX100_SRC/CX100LIB_00.20/GUI/Src/msgbox_bmp.c CX100LIB_00.20/GUI/Src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DSTM32 -DSTM32F4 -DSTM32F405xx -c -I"C:/Src/STM32/CX100_SRC/TESTING/Inc" -I"C:/Src/STM32/CX100_SRC/Chip_Headers/CMSIS/Include" -I"C:/Src/STM32/CX100_SRC/Chip_Headers/CMSIS/Device/ST/STM32F4xx/Include" -I"C:/Src/STM32/CX100_SRC/CX100LIB_00.20/GUI/Inc" -I"C:/Src/STM32/CX100_SRC/CX100LIB_00.20/Inc" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
CX100LIB_00.20/GUI/Src/symbols_bmp.o: C:/Src/STM32/CX100_SRC/CX100LIB_00.20/GUI/Src/symbols_bmp.c CX100LIB_00.20/GUI/Src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DSTM32 -DSTM32F4 -DSTM32F405xx -c -I"C:/Src/STM32/CX100_SRC/TESTING/Inc" -I"C:/Src/STM32/CX100_SRC/Chip_Headers/CMSIS/Include" -I"C:/Src/STM32/CX100_SRC/Chip_Headers/CMSIS/Device/ST/STM32F4xx/Include" -I"C:/Src/STM32/CX100_SRC/CX100LIB_00.20/GUI/Inc" -I"C:/Src/STM32/CX100_SRC/CX100LIB_00.20/Inc" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-CX100LIB_00-2e-20-2f-GUI-2f-Src

clean-CX100LIB_00-2e-20-2f-GUI-2f-Src:
	-$(RM) ./CX100LIB_00.20/GUI/Src/gui_utils.cyclo ./CX100LIB_00.20/GUI/Src/gui_utils.d ./CX100LIB_00.20/GUI/Src/gui_utils.o ./CX100LIB_00.20/GUI/Src/gui_utils.su ./CX100LIB_00.20/GUI/Src/input_box.cyclo ./CX100LIB_00.20/GUI/Src/input_box.d ./CX100LIB_00.20/GUI/Src/input_box.o ./CX100LIB_00.20/GUI/Src/input_box.su ./CX100LIB_00.20/GUI/Src/input_box_bmp.cyclo ./CX100LIB_00.20/GUI/Src/input_box_bmp.d ./CX100LIB_00.20/GUI/Src/input_box_bmp.o ./CX100LIB_00.20/GUI/Src/input_box_bmp.su ./CX100LIB_00.20/GUI/Src/list_box.cyclo ./CX100LIB_00.20/GUI/Src/list_box.d ./CX100LIB_00.20/GUI/Src/list_box.o ./CX100LIB_00.20/GUI/Src/list_box.su ./CX100LIB_00.20/GUI/Src/list_box_bmp.cyclo ./CX100LIB_00.20/GUI/Src/list_box_bmp.d ./CX100LIB_00.20/GUI/Src/list_box_bmp.o ./CX100LIB_00.20/GUI/Src/list_box_bmp.su ./CX100LIB_00.20/GUI/Src/menu_list.cyclo ./CX100LIB_00.20/GUI/Src/menu_list.d ./CX100LIB_00.20/GUI/Src/menu_list.o ./CX100LIB_00.20/GUI/Src/menu_list.su ./CX100LIB_00.20/GUI/Src/menu_list_bmp.cyclo ./CX100LIB_00.20/GUI/Src/menu_list_bmp.d ./CX100LIB_00.20/GUI/Src/menu_list_bmp.o ./CX100LIB_00.20/GUI/Src/menu_list_bmp.su ./CX100LIB_00.20/GUI/Src/msgbox.cyclo ./CX100LIB_00.20/GUI/Src/msgbox.d ./CX100LIB_00.20/GUI/Src/msgbox.o ./CX100LIB_00.20/GUI/Src/msgbox.su ./CX100LIB_00.20/GUI/Src/msgbox_bmp.cyclo ./CX100LIB_00.20/GUI/Src/msgbox_bmp.d ./CX100LIB_00.20/GUI/Src/msgbox_bmp.o ./CX100LIB_00.20/GUI/Src/msgbox_bmp.su ./CX100LIB_00.20/GUI/Src/symbols_bmp.cyclo ./CX100LIB_00.20/GUI/Src/symbols_bmp.d ./CX100LIB_00.20/GUI/Src/symbols_bmp.o ./CX100LIB_00.20/GUI/Src/symbols_bmp.su

.PHONY: clean-CX100LIB_00-2e-20-2f-GUI-2f-Src

