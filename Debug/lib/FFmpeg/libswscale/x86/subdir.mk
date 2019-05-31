################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
ASM_SRCS += \
../lib/FFmpeg/libswscale/x86/input.asm \
../lib/FFmpeg/libswscale/x86/output.asm \
../lib/FFmpeg/libswscale/x86/rgb_2_rgb.asm \
../lib/FFmpeg/libswscale/x86/scale.asm 

C_SRCS += \
../lib/FFmpeg/libswscale/x86/hscale_fast_bilinear_simd.c \
../lib/FFmpeg/libswscale/x86/rgb2rgb.c \
../lib/FFmpeg/libswscale/x86/rgb2rgb_template.c \
../lib/FFmpeg/libswscale/x86/swscale.c \
../lib/FFmpeg/libswscale/x86/swscale_template.c \
../lib/FFmpeg/libswscale/x86/w64xmmtest.c \
../lib/FFmpeg/libswscale/x86/yuv2rgb.c \
../lib/FFmpeg/libswscale/x86/yuv2rgb_template.c 

O_SRCS += \
../lib/FFmpeg/libswscale/x86/hscale_fast_bilinear_simd.o \
../lib/FFmpeg/libswscale/x86/input.o \
../lib/FFmpeg/libswscale/x86/output.o \
../lib/FFmpeg/libswscale/x86/rgb2rgb.o \
../lib/FFmpeg/libswscale/x86/rgb_2_rgb.o \
../lib/FFmpeg/libswscale/x86/scale.o \
../lib/FFmpeg/libswscale/x86/swscale.o \
../lib/FFmpeg/libswscale/x86/yuv2rgb.o 

OBJS += \
./lib/FFmpeg/libswscale/x86/hscale_fast_bilinear_simd.o \
./lib/FFmpeg/libswscale/x86/input.o \
./lib/FFmpeg/libswscale/x86/output.o \
./lib/FFmpeg/libswscale/x86/rgb2rgb.o \
./lib/FFmpeg/libswscale/x86/rgb2rgb_template.o \
./lib/FFmpeg/libswscale/x86/rgb_2_rgb.o \
./lib/FFmpeg/libswscale/x86/scale.o \
./lib/FFmpeg/libswscale/x86/swscale.o \
./lib/FFmpeg/libswscale/x86/swscale_template.o \
./lib/FFmpeg/libswscale/x86/w64xmmtest.o \
./lib/FFmpeg/libswscale/x86/yuv2rgb.o \
./lib/FFmpeg/libswscale/x86/yuv2rgb_template.o 

C_DEPS += \
./lib/FFmpeg/libswscale/x86/hscale_fast_bilinear_simd.d \
./lib/FFmpeg/libswscale/x86/rgb2rgb.d \
./lib/FFmpeg/libswscale/x86/rgb2rgb_template.d \
./lib/FFmpeg/libswscale/x86/swscale.d \
./lib/FFmpeg/libswscale/x86/swscale_template.d \
./lib/FFmpeg/libswscale/x86/w64xmmtest.d \
./lib/FFmpeg/libswscale/x86/yuv2rgb.d \
./lib/FFmpeg/libswscale/x86/yuv2rgb_template.d 


# Each subdirectory must supply rules for building sources it contributes
lib/FFmpeg/libswscale/x86/%.o: ../lib/FFmpeg/libswscale/x86/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

lib/FFmpeg/libswscale/x86/%.o: ../lib/FFmpeg/libswscale/x86/%.asm
	@echo 'Building file: $<'
	@echo 'Invoking: GCC Assembler'
	as  -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


