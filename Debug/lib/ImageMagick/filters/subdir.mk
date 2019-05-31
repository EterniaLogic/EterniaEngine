################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../lib/ImageMagick/filters/analyze.c 

O_SRCS += \
../lib/ImageMagick/filters/MagickCore_libMagickCore_7_Q16HDRI_la-analyze.o 

OBJS += \
./lib/ImageMagick/filters/analyze.o 

C_DEPS += \
./lib/ImageMagick/filters/analyze.d 


# Each subdirectory must supply rules for building sources it contributes
lib/ImageMagick/filters/%.o: ../lib/ImageMagick/filters/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


