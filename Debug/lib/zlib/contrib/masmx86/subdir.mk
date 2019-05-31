################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
ASM_SRCS += \
../lib/zlib/contrib/masmx86/inffas32.asm \
../lib/zlib/contrib/masmx86/match686.asm 

OBJS += \
./lib/zlib/contrib/masmx86/inffas32.o \
./lib/zlib/contrib/masmx86/match686.o 


# Each subdirectory must supply rules for building sources it contributes
lib/zlib/contrib/masmx86/%.o: ../lib/zlib/contrib/masmx86/%.asm
	@echo 'Building file: $<'
	@echo 'Invoking: GCC Assembler'
	as  -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


