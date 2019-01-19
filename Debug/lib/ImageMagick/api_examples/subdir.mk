################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../lib/ImageMagick/api_examples/cli_operators.c \
../lib/ImageMagick/api_examples/cli_process.c \
../lib/ImageMagick/api_examples/magick_command.c \
../lib/ImageMagick/api_examples/wand.c 

OBJS += \
./lib/ImageMagick/api_examples/cli_operators.o \
./lib/ImageMagick/api_examples/cli_process.o \
./lib/ImageMagick/api_examples/magick_command.o \
./lib/ImageMagick/api_examples/wand.o 

C_DEPS += \
./lib/ImageMagick/api_examples/cli_operators.d \
./lib/ImageMagick/api_examples/cli_process.d \
./lib/ImageMagick/api_examples/magick_command.d \
./lib/ImageMagick/api_examples/wand.d 


# Each subdirectory must supply rules for building sources it contributes
lib/ImageMagick/api_examples/%.o: ../lib/ImageMagick/api_examples/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


