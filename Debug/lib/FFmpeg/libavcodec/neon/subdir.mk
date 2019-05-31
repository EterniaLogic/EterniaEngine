################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../lib/FFmpeg/libavcodec/neon/mpegvideo.c 

OBJS += \
./lib/FFmpeg/libavcodec/neon/mpegvideo.o 

C_DEPS += \
./lib/FFmpeg/libavcodec/neon/mpegvideo.d 


# Each subdirectory must supply rules for building sources it contributes
lib/FFmpeg/libavcodec/neon/%.o: ../lib/FFmpeg/libavcodec/neon/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


