################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../lib/zlib/contrib/puff/puff.c \
../lib/zlib/contrib/puff/pufftest.c 

OBJS += \
./lib/zlib/contrib/puff/puff.o \
./lib/zlib/contrib/puff/pufftest.o 

C_DEPS += \
./lib/zlib/contrib/puff/puff.d \
./lib/zlib/contrib/puff/pufftest.d 


# Each subdirectory must supply rules for building sources it contributes
lib/zlib/contrib/puff/%.o: ../lib/zlib/contrib/puff/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


