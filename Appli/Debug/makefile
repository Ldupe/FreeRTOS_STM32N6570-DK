################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

-include ../makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include Middlewares/FreeRTOS/RTOS/Timers/subdir.mk
-include Middlewares/FreeRTOS/RTOS/Stream\ Buffer/subdir.mk
-include Middlewares/FreeRTOS/RTOS/Heap/Heap_4/subdir.mk
-include Middlewares/FreeRTOS/RTOS/Event\ Groups/subdir.mk
-include Middlewares/FreeRTOS/RTOS/Coroutines/subdir.mk
-include Middlewares/FreeRTOS/RTOS/Core/Cortex-M/subdir.mk
-include Drivers/STM32N6xx_HAL_Driver/subdir.mk
-include Core/Startup/subdir.mk
-include Core/Src/subdir.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(S_DEPS)),)
-include $(S_DEPS)
endif
ifneq ($(strip $(S_UPPER_DEPS)),)
-include $(S_UPPER_DEPS)
endif
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
endif

-include ../makefile.defs

OPTIONAL_TOOL_DEPS := \
$(wildcard ../makefile.defs) \
$(wildcard ../makefile.init) \
$(wildcard ../makefile.targets) \


BUILD_ARTIFACT_NAME := FreeRTOS_STM32N6570-DK_Appli
BUILD_ARTIFACT_EXTENSION := elf
BUILD_ARTIFACT_PREFIX :=
BUILD_ARTIFACT := $(BUILD_ARTIFACT_PREFIX)$(BUILD_ARTIFACT_NAME)$(if $(BUILD_ARTIFACT_EXTENSION),.$(BUILD_ARTIFACT_EXTENSION),)

# Add inputs and outputs from these tool invocations to the build variables 
EXECUTABLES += \
FreeRTOS_STM32N6570-DK_Appli.elf \

MAP_FILES += \
FreeRTOS_STM32N6570-DK_Appli.map \

SIZE_OUTPUT += \
default.size.stdout \

OBJDUMP_LIST += \
FreeRTOS_STM32N6570-DK_Appli.list \

OBJCOPY_BIN += \
FreeRTOS_STM32N6570-DK_Appli.bin \


# All Target
all: main-build

# Main-build Target
main-build: FreeRTOS_STM32N6570-DK_Appli.elf secondary-outputs

# Tool invocations
FreeRTOS_STM32N6570-DK_Appli.elf FreeRTOS_STM32N6570-DK_Appli.map: $(OBJS) $(USER_OBJS) C:\N6\FreeRTOS_STM32N6570-DK\Appli\STM32N657X0HXQ_LRUN.ld makefile objects.list $(OPTIONAL_TOOL_DEPS)
	arm-none-eabi-gcc -o "FreeRTOS_STM32N6570-DK_Appli.elf" @"objects.list" $(USER_OBJS) $(LIBS) -mcpu=cortex-m55 -T"C:\N6\FreeRTOS_STM32N6570-DK\Appli\STM32N657X0HXQ_LRUN.ld" --specs=nosys.specs -Wl,-Map="FreeRTOS_STM32N6570-DK_Appli.map" -Wl,--gc-sections -static -Wl,--cmse-implib -Wl,--out-implib=./secure_nsclib.o --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -Wl,--start-group -lc -lm -Wl,--end-group
	@echo 'Finished building target: $@'
	@echo ' '

default.size.stdout: $(EXECUTABLES) makefile objects.list $(OPTIONAL_TOOL_DEPS)
	arm-none-eabi-size  $(EXECUTABLES)
	@echo 'Finished building: $@'
	@echo ' '

FreeRTOS_STM32N6570-DK_Appli.list: $(EXECUTABLES) makefile objects.list $(OPTIONAL_TOOL_DEPS)
	arm-none-eabi-objdump -h -S $(EXECUTABLES) > "FreeRTOS_STM32N6570-DK_Appli.list"
	@echo 'Finished building: $@'
	@echo ' '

FreeRTOS_STM32N6570-DK_Appli.bin: $(EXECUTABLES) makefile objects.list $(OPTIONAL_TOOL_DEPS)
	arm-none-eabi-objcopy  -O binary $(EXECUTABLES) "FreeRTOS_STM32N6570-DK_Appli.bin"
	@echo 'Finished building: $@'
	@echo ' '

# Other Targets
clean:
	-$(RM) FreeRTOS_STM32N6570-DK_Appli.bin FreeRTOS_STM32N6570-DK_Appli.elf FreeRTOS_STM32N6570-DK_Appli.list FreeRTOS_STM32N6570-DK_Appli.map default.size.stdout
	-@echo ' '

secondary-outputs: $(SIZE_OUTPUT) $(OBJDUMP_LIST) $(OBJCOPY_BIN)

fail-specified-linker-script-missing:
	@echo 'Error: Cannot find the specified linker script. Check the linker settings in the build configuration.'
	@exit 2

warn-no-linker-script-specified:
	@echo 'Warning: No linker script specified. Check the linker settings in the build configuration.'

.PHONY: all clean dependents main-build fail-specified-linker-script-missing warn-no-linker-script-specified

-include ../makefile.targets
