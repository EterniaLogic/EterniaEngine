################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../lib/ImageMagick/www/source/wand/sigmoidal-contrast.c 

OBJS += \
./lib/ImageMagick/www/source/wand/sigmoidal-contrast.o 

C_DEPS += \
./lib/ImageMagick/www/source/wand/sigmoidal-contrast.d 


# Each subdirectory must supply rules for building sources it contributes
lib/ImageMagick/www/source/wand/%.o: ../lib/ImageMagick/www/source/wand/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


