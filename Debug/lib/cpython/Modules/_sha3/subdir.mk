################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../lib/cpython/Modules/_sha3/sha3module.c 

OBJS += \
./lib/cpython/Modules/_sha3/sha3module.o 

C_DEPS += \
./lib/cpython/Modules/_sha3/sha3module.d 


# Each subdirectory must supply rules for building sources it contributes
lib/cpython/Modules/_sha3/%.o: ../lib/cpython/Modules/_sha3/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


