################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../lib/openal-soft/examples/common/alhelpers.c 

OBJS += \
./lib/openal-soft/examples/common/alhelpers.o 

C_DEPS += \
./lib/openal-soft/examples/common/alhelpers.d 


# Each subdirectory must supply rules for building sources it contributes
lib/openal-soft/examples/common/%.o: ../lib/openal-soft/examples/common/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


