################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../lib/FFmpeg/libavcodec/tests/x86/dct.c 

OBJS += \
./lib/FFmpeg/libavcodec/tests/x86/dct.o 

C_DEPS += \
./lib/FFmpeg/libavcodec/tests/x86/dct.d 


# Each subdirectory must supply rules for building sources it contributes
lib/FFmpeg/libavcodec/tests/x86/%.o: ../lib/FFmpeg/libavcodec/tests/x86/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


