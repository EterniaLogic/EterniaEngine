################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../lib/FFmpeg/libavresample/tests/avresample.c 

OBJS += \
./lib/FFmpeg/libavresample/tests/avresample.o 

C_DEPS += \
./lib/FFmpeg/libavresample/tests/avresample.d 


# Each subdirectory must supply rules for building sources it contributes
lib/FFmpeg/libavresample/tests/%.o: ../lib/FFmpeg/libavresample/tests/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


