################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
C:/N6/FreeRTOS_STM32N6570-DK/Middlewares/Third_Party/ARM_RTOS_FreeRTOS/Source/croutine.c 

OBJS += \
./Middlewares/FreeRTOS/RTOS/Coroutines/croutine.o 

C_DEPS += \
./Middlewares/FreeRTOS/RTOS/Coroutines/croutine.d 


# Each subdirectory must supply rules for building sources it contributes
Middlewares/FreeRTOS/RTOS/Coroutines/croutine.o: C:/N6/FreeRTOS_STM32N6570-DK/Middlewares/Third_Party/ARM_RTOS_FreeRTOS/Source/croutine.c Middlewares/FreeRTOS/RTOS/Coroutines/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m55 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32N657xx -DUSE_CUSTOM_SYSTICK_HANDLER_IMPLEMENTATION=1 -c -I../Core/Inc -I../../Secure_nsclib -I../../Drivers/STM32N6xx_HAL_Driver/Inc -I../../Drivers/CMSIS/Device/ST/STM32N6xx/Include -I../../Drivers/STM32N6xx_HAL_Driver/Inc/Legacy -I../../Drivers/CMSIS/Include -I../../Middlewares/Third_Party/ARM_RTOS_FreeRTOS/Source/examples/template_configuration -I../../Middlewares/Third_Party/ARM_RTOS_FreeRTOS/Source/include/ -I../../Middlewares/Third_Party/ARM_RTOS_FreeRTOS/Source/portable/GCC/ARM_CM55_NTZ/non_secure/ -I../../Middlewares/Third_Party/ARM_RTOS_FreeRTOS/CMSIS/RTOS2/FreeRTOS/Include/ -I../../Middlewares/Third_Party/ARM_RTOS_FreeRTOS/Source/include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -mcmse -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Middlewares-2f-FreeRTOS-2f-RTOS-2f-Coroutines

clean-Middlewares-2f-FreeRTOS-2f-RTOS-2f-Coroutines:
	-$(RM) ./Middlewares/FreeRTOS/RTOS/Coroutines/croutine.cyclo ./Middlewares/FreeRTOS/RTOS/Coroutines/croutine.d ./Middlewares/FreeRTOS/RTOS/Coroutines/croutine.o ./Middlewares/FreeRTOS/RTOS/Coroutines/croutine.su

.PHONY: clean-Middlewares-2f-FreeRTOS-2f-RTOS-2f-Coroutines

