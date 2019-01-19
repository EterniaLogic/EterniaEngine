################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../lib/FFmpeg/libavcodec/tests/arm/dct.c 

OBJS += \
./lib/FFmpeg/libavcodec/tests/arm/dct.o 

C_DEPS += \
./lib/FFmpeg/libavcodec/tests/arm/dct.d 


# Each subdirectory must supply rules for building sources it contributes
lib/FFmpeg/libavcodec/tests/arm/%.o: ../lib/FFmpeg/libavcodec/tests/arm/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


