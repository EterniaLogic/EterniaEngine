################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../lib/FFmpeg/compat/djgpp/math.c 

OBJS += \
./lib/FFmpeg/compat/djgpp/math.o 

C_DEPS += \
./lib/FFmpeg/compat/djgpp/math.d 


# Each subdirectory must supply rules for building sources it contributes
lib/FFmpeg/compat/djgpp/%.o: ../lib/FFmpeg/compat/djgpp/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


