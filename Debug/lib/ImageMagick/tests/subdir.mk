################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../lib/ImageMagick/tests/drawtest.c \
../lib/ImageMagick/tests/validate.c \
../lib/ImageMagick/tests/wandtest.c 

OBJS += \
./lib/ImageMagick/tests/drawtest.o \
./lib/ImageMagick/tests/validate.o \
./lib/ImageMagick/tests/wandtest.o 

C_DEPS += \
./lib/ImageMagick/tests/drawtest.d \
./lib/ImageMagick/tests/validate.d \
./lib/ImageMagick/tests/wandtest.d 


# Each subdirectory must supply rules for building sources it contributes
lib/ImageMagick/tests/%.o: ../lib/ImageMagick/tests/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


