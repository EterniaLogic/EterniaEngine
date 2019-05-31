################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
ASM_SRCS += \
../lib/zlib/contrib/masmx64/gvmat64.asm \
../lib/zlib/contrib/masmx64/inffasx64.asm 

C_SRCS += \
../lib/zlib/contrib/masmx64/inffas8664.c 

OBJS += \
./lib/zlib/contrib/masmx64/gvmat64.o \
./lib/zlib/contrib/masmx64/inffas8664.o \
./lib/zlib/contrib/masmx64/inffasx64.o 

C_DEPS += \
./lib/zlib/contrib/masmx64/inffas8664.d 


# Each subdirectory must supply rules for building sources it contributes
lib/zlib/contrib/masmx64/%.o: ../lib/zlib/contrib/masmx64/%.asm
	@echo 'Building file: $<'
	@echo 'Invoking: GCC Assembler'
	as  -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

lib/zlib/contrib/masmx64/%.o: ../lib/zlib/contrib/masmx64/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


