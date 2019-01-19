################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../lib/ImageMagick/www/source/analyze.c \
../lib/ImageMagick/www/source/contrast.c \
../lib/ImageMagick/www/source/core.c \
../lib/ImageMagick/www/source/mgk.c \
../lib/ImageMagick/www/source/wand.c 

OBJS += \
./lib/ImageMagick/www/source/analyze.o \
./lib/ImageMagick/www/source/contrast.o \
./lib/ImageMagick/www/source/core.o \
./lib/ImageMagick/www/source/mgk.o \
./lib/ImageMagick/www/source/wand.o 

C_DEPS += \
./lib/ImageMagick/www/source/analyze.d \
./lib/ImageMagick/www/source/contrast.d \
./lib/ImageMagick/www/source/core.d \
./lib/ImageMagick/www/source/mgk.d \
./lib/ImageMagick/www/source/wand.d 


# Each subdirectory must supply rules for building sources it contributes
lib/ImageMagick/www/source/%.o: ../lib/ImageMagick/www/source/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


