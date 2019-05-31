################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../lib/zlib/contrib/blast/blast.c 

OBJS += \
./lib/zlib/contrib/blast/blast.o 

C_DEPS += \
./lib/zlib/contrib/blast/blast.d 


# Each subdirectory must supply rules for building sources it contributes
lib/zlib/contrib/blast/%.o: ../lib/zlib/contrib/blast/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


