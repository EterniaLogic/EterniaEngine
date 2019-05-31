################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../lib/ImageMagick/utilities/magick.c 

O_SRCS += \
../lib/ImageMagick/utilities/magick.o 

OBJS += \
./lib/ImageMagick/utilities/magick.o 

C_DEPS += \
./lib/ImageMagick/utilities/magick.d 


# Each subdirectory must supply rules for building sources it contributes
lib/ImageMagick/utilities/%.o: ../lib/ImageMagick/utilities/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


