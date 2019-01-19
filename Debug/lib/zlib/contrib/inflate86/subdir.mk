################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../lib/zlib/contrib/inflate86/inffas86.c 

S_UPPER_SRCS += \
../lib/zlib/contrib/inflate86/inffast.S 

OBJS += \
./lib/zlib/contrib/inflate86/inffas86.o \
./lib/zlib/contrib/inflate86/inffast.o 

C_DEPS += \
./lib/zlib/contrib/inflate86/inffas86.d 


# Each subdirectory must supply rules for building sources it contributes
lib/zlib/contrib/inflate86/%.o: ../lib/zlib/contrib/inflate86/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

lib/zlib/contrib/inflate86/%.o: ../lib/zlib/contrib/inflate86/%.S
	@echo 'Building file: $<'
	@echo 'Invoking: GCC Assembler'
	as  -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


