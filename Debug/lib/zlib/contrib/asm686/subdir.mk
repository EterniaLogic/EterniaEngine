################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
S_UPPER_SRCS += \
../lib/zlib/contrib/asm686/match.S 

OBJS += \
./lib/zlib/contrib/asm686/match.o 


# Each subdirectory must supply rules for building sources it contributes
lib/zlib/contrib/asm686/%.o: ../lib/zlib/contrib/asm686/%.S
	@echo 'Building file: $<'
	@echo 'Invoking: GCC Assembler'
	as  -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


