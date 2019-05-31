################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../lib/zlib/contrib/testzlib/testzlib.c 

OBJS += \
./lib/zlib/contrib/testzlib/testzlib.o 

C_DEPS += \
./lib/zlib/contrib/testzlib/testzlib.d 


# Each subdirectory must supply rules for building sources it contributes
lib/zlib/contrib/testzlib/%.o: ../lib/zlib/contrib/testzlib/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


