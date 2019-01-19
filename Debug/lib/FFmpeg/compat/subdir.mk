################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../lib/FFmpeg/compat/getopt.c \
../lib/FFmpeg/compat/strtod.c 

OBJS += \
./lib/FFmpeg/compat/getopt.o \
./lib/FFmpeg/compat/strtod.o 

C_DEPS += \
./lib/FFmpeg/compat/getopt.d \
./lib/FFmpeg/compat/strtod.d 


# Each subdirectory must supply rules for building sources it contributes
lib/FFmpeg/compat/%.o: ../lib/FFmpeg/compat/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


