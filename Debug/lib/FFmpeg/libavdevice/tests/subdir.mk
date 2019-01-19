################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../lib/FFmpeg/libavdevice/tests/timefilter.c 

OBJS += \
./lib/FFmpeg/libavdevice/tests/timefilter.o 

C_DEPS += \
./lib/FFmpeg/libavdevice/tests/timefilter.d 


# Each subdirectory must supply rules for building sources it contributes
lib/FFmpeg/libavdevice/tests/%.o: ../lib/FFmpeg/libavdevice/tests/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


