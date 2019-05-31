################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../lib/FFmpeg/libswscale/arm/swscale.c \
../lib/FFmpeg/libswscale/arm/swscale_unscaled.c 

S_UPPER_SRCS += \
../lib/FFmpeg/libswscale/arm/hscale.S \
../lib/FFmpeg/libswscale/arm/output.S \
../lib/FFmpeg/libswscale/arm/rgb2yuv_neon_16.S \
../lib/FFmpeg/libswscale/arm/rgb2yuv_neon_32.S \
../lib/FFmpeg/libswscale/arm/rgb2yuv_neon_common.S \
../lib/FFmpeg/libswscale/arm/yuv2rgb_neon.S 

OBJS += \
./lib/FFmpeg/libswscale/arm/hscale.o \
./lib/FFmpeg/libswscale/arm/output.o \
./lib/FFmpeg/libswscale/arm/rgb2yuv_neon_16.o \
./lib/FFmpeg/libswscale/arm/rgb2yuv_neon_32.o \
./lib/FFmpeg/libswscale/arm/rgb2yuv_neon_common.o \
./lib/FFmpeg/libswscale/arm/swscale.o \
./lib/FFmpeg/libswscale/arm/swscale_unscaled.o \
./lib/FFmpeg/libswscale/arm/yuv2rgb_neon.o 

C_DEPS += \
./lib/FFmpeg/libswscale/arm/swscale.d \
./lib/FFmpeg/libswscale/arm/swscale_unscaled.d 


# Each subdirectory must supply rules for building sources it contributes
lib/FFmpeg/libswscale/arm/%.o: ../lib/FFmpeg/libswscale/arm/%.S
	@echo 'Building file: $<'
	@echo 'Invoking: GCC Assembler'
	as  -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

lib/FFmpeg/libswscale/arm/%.o: ../lib/FFmpeg/libswscale/arm/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


