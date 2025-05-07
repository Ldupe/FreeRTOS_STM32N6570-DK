################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
C:/N6/FreeRTOS_STM32N6570-DK/Middlewares/Third_Party/ARM_RTOS_FreeRTOS/CMSIS/RTOS2/FreeRTOS/Source/freertos_evr.c \
C:/N6/FreeRTOS_STM32N6570-DK/Middlewares/Third_Party/ARM_RTOS_FreeRTOS/Source/list.c \
C:/N6/FreeRTOS_STM32N6570-DK/Middlewares/Third_Party/ARM_RTOS_FreeRTOS/Source/portable/GCC/ARM_CM55_NTZ/non_secure/port.c \
C:/N6/FreeRTOS_STM32N6570-DK/Middlewares/Third_Party/ARM_RTOS_FreeRTOS/Source/portable/GCC/ARM_CM55_NTZ/non_secure/portasm.c \
C:/N6/FreeRTOS_STM32N6570-DK/Middlewares/Third_Party/ARM_RTOS_FreeRTOS/Source/queue.c \
C:/N6/FreeRTOS_STM32N6570-DK/Middlewares/Third_Party/ARM_RTOS_FreeRTOS/Source/tasks.c 

OBJS += \
./Middlewares/FreeRTOS/RTOS/Core/Cortex-M/freertos_evr.o \
./Middlewares/FreeRTOS/RTOS/Core/Cortex-M/list.o \
./Middlewares/FreeRTOS/RTOS/Core/Cortex-M/port.o \
./Middlewares/FreeRTOS/RTOS/Core/Cortex-M/portasm.o \
./Middlewares/FreeRTOS/RTOS/Core/Cortex-M/queue.o \
./Middlewares/FreeRTOS/RTOS/Core/Cortex-M/tasks.o 

C_DEPS += \
./Middlewares/FreeRTOS/RTOS/Core/Cortex-M/freertos_evr.d \
./Middlewares/FreeRTOS/RTOS/Core/Cortex-M/list.d \
./Middlewares/FreeRTOS/RTOS/Core/Cortex-M/port.d \
./Middlewares/FreeRTOS/RTOS/Core/Cortex-M/portasm.d \
./Middlewares/FreeRTOS/RTOS/Core/Cortex-M/queue.d \
./Middlewares/FreeRTOS/RTOS/Core/Cortex-M/tasks.d 


# Each subdirectory must supply rules for building sources it contributes
Middlewares/FreeRTOS/RTOS/Core/Cortex-M/freertos_evr.o: C:/N6/FreeRTOS_STM32N6570-DK/Middlewares/Third_Party/ARM_RTOS_FreeRTOS/CMSIS/RTOS2/FreeRTOS/Source/freertos_evr.c Middlewares/FreeRTOS/RTOS/Core/Cortex-M/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m55 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32N657xx -DUSE_CUSTOM_SYSTICK_HANDLER_IMPLEMENTATION=1 -c -I../Core/Inc -I../../Secure_nsclib -I../../Drivers/STM32N6xx_HAL_Driver/Inc -I../../Drivers/CMSIS/Device/ST/STM32N6xx/Include -I../../Drivers/STM32N6xx_HAL_Driver/Inc/Legacy -I../../Drivers/CMSIS/Include -I../../Middlewares/Third_Party/ARM_RTOS_FreeRTOS/Source/examples/template_configuration -I../../Middlewares/Third_Party/ARM_RTOS_FreeRTOS/Source/include/ -I../../Middlewares/Third_Party/ARM_RTOS_FreeRTOS/Source/portable/GCC/ARM_CM55_NTZ/non_secure/ -I../../Middlewares/Third_Party/ARM_RTOS_FreeRTOS/CMSIS/RTOS2/FreeRTOS/Include/ -I../../Middlewares/Third_Party/ARM_RTOS_FreeRTOS/Source/include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -mcmse -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"
Middlewares/FreeRTOS/RTOS/Core/Cortex-M/list.o: C:/N6/FreeRTOS_STM32N6570-DK/Middlewares/Third_Party/ARM_RTOS_FreeRTOS/Source/list.c Middlewares/FreeRTOS/RTOS/Core/Cortex-M/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m55 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32N657xx -DUSE_CUSTOM_SYSTICK_HANDLER_IMPLEMENTATION=1 -c -I../Core/Inc -I../../Secure_nsclib -I../../Drivers/STM32N6xx_HAL_Driver/Inc -I../../Drivers/CMSIS/Device/ST/STM32N6xx/Include -I../../Drivers/STM32N6xx_HAL_Driver/Inc/Legacy -I../../Drivers/CMSIS/Include -I../../Middlewares/Third_Party/ARM_RTOS_FreeRTOS/Source/examples/template_configuration -I../../Middlewares/Third_Party/ARM_RTOS_FreeRTOS/Source/include/ -I../../Middlewares/Third_Party/ARM_RTOS_FreeRTOS/Source/portable/GCC/ARM_CM55_NTZ/non_secure/ -I../../Middlewares/Third_Party/ARM_RTOS_FreeRTOS/CMSIS/RTOS2/FreeRTOS/Include/ -I../../Middlewares/Third_Party/ARM_RTOS_FreeRTOS/Source/include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -mcmse -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"
Middlewares/FreeRTOS/RTOS/Core/Cortex-M/port.o: C:/N6/FreeRTOS_STM32N6570-DK/Middlewares/Third_Party/ARM_RTOS_FreeRTOS/Source/portable/GCC/ARM_CM55_NTZ/non_secure/port.c Middlewares/FreeRTOS/RTOS/Core/Cortex-M/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m55 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32N657xx -DUSE_CUSTOM_SYSTICK_HANDLER_IMPLEMENTATION=1 -c -I../Core/Inc -I../../Secure_nsclib -I../../Drivers/STM32N6xx_HAL_Driver/Inc -I../../Drivers/CMSIS/Device/ST/STM32N6xx/Include -I../../Drivers/STM32N6xx_HAL_Driver/Inc/Legacy -I../../Drivers/CMSIS/Include -I../../Middlewares/Third_Party/ARM_RTOS_FreeRTOS/Source/examples/template_configuration -I../../Middlewares/Third_Party/ARM_RTOS_FreeRTOS/Source/include/ -I../../Middlewares/Third_Party/ARM_RTOS_FreeRTOS/Source/portable/GCC/ARM_CM55_NTZ/non_secure/ -I../../Middlewares/Third_Party/ARM_RTOS_FreeRTOS/CMSIS/RTOS2/FreeRTOS/Include/ -I../../Middlewares/Third_Party/ARM_RTOS_FreeRTOS/Source/include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -mcmse -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"
Middlewares/FreeRTOS/RTOS/Core/Cortex-M/portasm.o: C:/N6/FreeRTOS_STM32N6570-DK/Middlewares/Third_Party/ARM_RTOS_FreeRTOS/Source/portable/GCC/ARM_CM55_NTZ/non_secure/portasm.c Middlewares/FreeRTOS/RTOS/Core/Cortex-M/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m55 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32N657xx -DUSE_CUSTOM_SYSTICK_HANDLER_IMPLEMENTATION=1 -c -I../Core/Inc -I../../Secure_nsclib -I../../Drivers/STM32N6xx_HAL_Driver/Inc -I../../Drivers/CMSIS/Device/ST/STM32N6xx/Include -I../../Drivers/STM32N6xx_HAL_Driver/Inc/Legacy -I../../Drivers/CMSIS/Include -I../../Middlewares/Third_Party/ARM_RTOS_FreeRTOS/Source/examples/template_configuration -I../../Middlewares/Third_Party/ARM_RTOS_FreeRTOS/Source/include/ -I../../Middlewares/Third_Party/ARM_RTOS_FreeRTOS/Source/portable/GCC/ARM_CM55_NTZ/non_secure/ -I../../Middlewares/Third_Party/ARM_RTOS_FreeRTOS/CMSIS/RTOS2/FreeRTOS/Include/ -I../../Middlewares/Third_Party/ARM_RTOS_FreeRTOS/Source/include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -mcmse -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"
Middlewares/FreeRTOS/RTOS/Core/Cortex-M/queue.o: C:/N6/FreeRTOS_STM32N6570-DK/Middlewares/Third_Party/ARM_RTOS_FreeRTOS/Source/queue.c Middlewares/FreeRTOS/RTOS/Core/Cortex-M/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m55 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32N657xx -DUSE_CUSTOM_SYSTICK_HANDLER_IMPLEMENTATION=1 -c -I../Core/Inc -I../../Secure_nsclib -I../../Drivers/STM32N6xx_HAL_Driver/Inc -I../../Drivers/CMSIS/Device/ST/STM32N6xx/Include -I../../Drivers/STM32N6xx_HAL_Driver/Inc/Legacy -I../../Drivers/CMSIS/Include -I../../Middlewares/Third_Party/ARM_RTOS_FreeRTOS/Source/examples/template_configuration -I../../Middlewares/Third_Party/ARM_RTOS_FreeRTOS/Source/include/ -I../../Middlewares/Third_Party/ARM_RTOS_FreeRTOS/Source/portable/GCC/ARM_CM55_NTZ/non_secure/ -I../../Middlewares/Third_Party/ARM_RTOS_FreeRTOS/CMSIS/RTOS2/FreeRTOS/Include/ -I../../Middlewares/Third_Party/ARM_RTOS_FreeRTOS/Source/include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -mcmse -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"
Middlewares/FreeRTOS/RTOS/Core/Cortex-M/tasks.o: C:/N6/FreeRTOS_STM32N6570-DK/Middlewares/Third_Party/ARM_RTOS_FreeRTOS/Source/tasks.c Middlewares/FreeRTOS/RTOS/Core/Cortex-M/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m55 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32N657xx -DUSE_CUSTOM_SYSTICK_HANDLER_IMPLEMENTATION=1 -c -I../Core/Inc -I../../Secure_nsclib -I../../Drivers/STM32N6xx_HAL_Driver/Inc -I../../Drivers/CMSIS/Device/ST/STM32N6xx/Include -I../../Drivers/STM32N6xx_HAL_Driver/Inc/Legacy -I../../Drivers/CMSIS/Include -I../../Middlewares/Third_Party/ARM_RTOS_FreeRTOS/Source/examples/template_configuration -I../../Middlewares/Third_Party/ARM_RTOS_FreeRTOS/Source/include/ -I../../Middlewares/Third_Party/ARM_RTOS_FreeRTOS/Source/portable/GCC/ARM_CM55_NTZ/non_secure/ -I../../Middlewares/Third_Party/ARM_RTOS_FreeRTOS/CMSIS/RTOS2/FreeRTOS/Include/ -I../../Middlewares/Third_Party/ARM_RTOS_FreeRTOS/Source/include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -mcmse -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Middlewares-2f-FreeRTOS-2f-RTOS-2f-Core-2f-Cortex-2d-M

clean-Middlewares-2f-FreeRTOS-2f-RTOS-2f-Core-2f-Cortex-2d-M:
	-$(RM) ./Middlewares/FreeRTOS/RTOS/Core/Cortex-M/freertos_evr.cyclo ./Middlewares/FreeRTOS/RTOS/Core/Cortex-M/freertos_evr.d ./Middlewares/FreeRTOS/RTOS/Core/Cortex-M/freertos_evr.o ./Middlewares/FreeRTOS/RTOS/Core/Cortex-M/freertos_evr.su ./Middlewares/FreeRTOS/RTOS/Core/Cortex-M/list.cyclo ./Middlewares/FreeRTOS/RTOS/Core/Cortex-M/list.d ./Middlewares/FreeRTOS/RTOS/Core/Cortex-M/list.o ./Middlewares/FreeRTOS/RTOS/Core/Cortex-M/list.su ./Middlewares/FreeRTOS/RTOS/Core/Cortex-M/port.cyclo ./Middlewares/FreeRTOS/RTOS/Core/Cortex-M/port.d ./Middlewares/FreeRTOS/RTOS/Core/Cortex-M/port.o ./Middlewares/FreeRTOS/RTOS/Core/Cortex-M/port.su ./Middlewares/FreeRTOS/RTOS/Core/Cortex-M/portasm.cyclo ./Middlewares/FreeRTOS/RTOS/Core/Cortex-M/portasm.d ./Middlewares/FreeRTOS/RTOS/Core/Cortex-M/portasm.o ./Middlewares/FreeRTOS/RTOS/Core/Cortex-M/portasm.su ./Middlewares/FreeRTOS/RTOS/Core/Cortex-M/queue.cyclo ./Middlewares/FreeRTOS/RTOS/Core/Cortex-M/queue.d ./Middlewares/FreeRTOS/RTOS/Core/Cortex-M/queue.o ./Middlewares/FreeRTOS/RTOS/Core/Cortex-M/queue.su ./Middlewares/FreeRTOS/RTOS/Core/Cortex-M/tasks.cyclo ./Middlewares/FreeRTOS/RTOS/Core/Cortex-M/tasks.d ./Middlewares/FreeRTOS/RTOS/Core/Cortex-M/tasks.o ./Middlewares/FreeRTOS/RTOS/Core/Cortex-M/tasks.su

.PHONY: clean-Middlewares-2f-FreeRTOS-2f-RTOS-2f-Core-2f-Cortex-2d-M

