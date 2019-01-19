################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../lib/zlib/contrib/infback9/infback9.c \
../lib/zlib/contrib/infback9/inftree9.c 

OBJS += \
./lib/zlib/contrib/infback9/infback9.o \
./lib/zlib/contrib/infback9/inftree9.o 

C_DEPS += \
./lib/zlib/contrib/infback9/infback9.d \
./lib/zlib/contrib/infback9/inftree9.d 


# Each subdirectory must supply rules for building sources it contributes
lib/zlib/contrib/infback9/%.o: ../lib/zlib/contrib/infback9/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


