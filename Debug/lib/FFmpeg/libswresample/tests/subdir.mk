################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../lib/FFmpeg/libswresample/tests/swresample.c 

OBJS += \
./lib/FFmpeg/libswresample/tests/swresample.o 

C_DEPS += \
./lib/FFmpeg/libswresample/tests/swresample.d 


# Each subdirectory must supply rules for building sources it contributes
lib/FFmpeg/libswresample/tests/%.o: ../lib/FFmpeg/libswresample/tests/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


