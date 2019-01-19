################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../lib/cpython/Mac/Tools/pythonw.c 

OBJS += \
./lib/cpython/Mac/Tools/pythonw.o 

C_DEPS += \
./lib/cpython/Mac/Tools/pythonw.d 


# Each subdirectory must supply rules for building sources it contributes
lib/cpython/Mac/Tools/%.o: ../lib/cpython/Mac/Tools/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


