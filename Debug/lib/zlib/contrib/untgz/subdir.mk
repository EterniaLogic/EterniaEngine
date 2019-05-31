################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../lib/zlib/contrib/untgz/untgz.c 

OBJS += \
./lib/zlib/contrib/untgz/untgz.o 

C_DEPS += \
./lib/zlib/contrib/untgz/untgz.d 


# Each subdirectory must supply rules for building sources it contributes
lib/zlib/contrib/untgz/%.o: ../lib/zlib/contrib/untgz/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


