################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../lib/cpython/Misc/coverity_model.c 

OBJS += \
./lib/cpython/Misc/coverity_model.o 

C_DEPS += \
./lib/cpython/Misc/coverity_model.d 


# Each subdirectory must supply rules for building sources it contributes
lib/cpython/Misc/%.o: ../lib/cpython/Misc/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


