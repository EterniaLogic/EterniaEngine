################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../lib/FFmpeg/compat/atomics/pthread/stdatomic.c 

OBJS += \
./lib/FFmpeg/compat/atomics/pthread/stdatomic.o 

C_DEPS += \
./lib/FFmpeg/compat/atomics/pthread/stdatomic.d 


# Each subdirectory must supply rules for building sources it contributes
lib/FFmpeg/compat/atomics/pthread/%.o: ../lib/FFmpeg/compat/atomics/pthread/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


