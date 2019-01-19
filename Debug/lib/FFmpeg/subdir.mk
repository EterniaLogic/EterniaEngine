################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
ASM_SRCS += \
../lib/FFmpeg/config.asm 

OBJS += \
./lib/FFmpeg/config.o 


# Each subdirectory must supply rules for building sources it contributes
lib/FFmpeg/%.o: ../lib/FFmpeg/%.asm
	@echo 'Building file: $<'
	@echo 'Invoking: GCC Assembler'
	as  -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


