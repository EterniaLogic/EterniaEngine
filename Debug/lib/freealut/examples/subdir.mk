################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../lib/freealut/examples/hello_world.c \
../lib/freealut/examples/playfile.c 

O_SRCS += \
../lib/freealut/examples/hello_world.o \
../lib/freealut/examples/playfile.o 

OBJS += \
./lib/freealut/examples/hello_world.o \
./lib/freealut/examples/playfile.o 

C_DEPS += \
./lib/freealut/examples/hello_world.d \
./lib/freealut/examples/playfile.d 


# Each subdirectory must supply rules for building sources it contributes
lib/freealut/examples/%.o: ../lib/freealut/examples/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


