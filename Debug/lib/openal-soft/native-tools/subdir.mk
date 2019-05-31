################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../lib/openal-soft/native-tools/bin2h.c \
../lib/openal-soft/native-tools/bsincgen.c 

OBJS += \
./lib/openal-soft/native-tools/bin2h.o \
./lib/openal-soft/native-tools/bsincgen.o 

C_DEPS += \
./lib/openal-soft/native-tools/bin2h.d \
./lib/openal-soft/native-tools/bsincgen.d 


# Each subdirectory must supply rules for building sources it contributes
lib/openal-soft/native-tools/%.o: ../lib/openal-soft/native-tools/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


