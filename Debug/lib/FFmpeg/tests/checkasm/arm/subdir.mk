################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
S_UPPER_SRCS += \
../lib/FFmpeg/tests/checkasm/arm/checkasm.S 

OBJS += \
./lib/FFmpeg/tests/checkasm/arm/checkasm.o 


# Each subdirectory must supply rules for building sources it contributes
lib/FFmpeg/tests/checkasm/arm/%.o: ../lib/FFmpeg/tests/checkasm/arm/%.S
	@echo 'Building file: $<'
	@echo 'Invoking: GCC Assembler'
	as  -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


