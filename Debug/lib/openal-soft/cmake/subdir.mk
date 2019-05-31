################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../lib/openal-soft/cmake/CheckFileOffsetBits.c 

OBJS += \
./lib/openal-soft/cmake/CheckFileOffsetBits.o 

C_DEPS += \
./lib/openal-soft/cmake/CheckFileOffsetBits.d 


# Each subdirectory must supply rules for building sources it contributes
lib/openal-soft/cmake/%.o: ../lib/openal-soft/cmake/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


