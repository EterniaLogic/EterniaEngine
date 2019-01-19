################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../lib/FFmpeg/doc/print_options.c 

O_SRCS += \
../lib/FFmpeg/doc/print_options.o 

OBJS += \
./lib/FFmpeg/doc/print_options.o 

C_DEPS += \
./lib/FFmpeg/doc/print_options.d 


# Each subdirectory must supply rules for building sources it contributes
lib/FFmpeg/doc/%.o: ../lib/FFmpeg/doc/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


