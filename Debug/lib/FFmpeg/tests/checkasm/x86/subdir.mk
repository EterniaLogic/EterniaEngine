################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
ASM_SRCS += \
../lib/FFmpeg/tests/checkasm/x86/checkasm.asm 

OBJS += \
./lib/FFmpeg/tests/checkasm/x86/checkasm.o 


# Each subdirectory must supply rules for building sources it contributes
lib/FFmpeg/tests/checkasm/x86/%.o: ../lib/FFmpeg/tests/checkasm/x86/%.asm
	@echo 'Building file: $<'
	@echo 'Invoking: GCC Assembler'
	as  -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


