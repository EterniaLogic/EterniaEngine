################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../lib/FFmpeg/compat/msvcrt/snprintf.c 

OBJS += \
./lib/FFmpeg/compat/msvcrt/snprintf.o 

C_DEPS += \
./lib/FFmpeg/compat/msvcrt/snprintf.d 


# Each subdirectory must supply rules for building sources it contributes
lib/FFmpeg/compat/msvcrt/%.o: ../lib/FFmpeg/compat/msvcrt/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


