################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../lib/FFmpeg/libswscale/alphablend.c \
../lib/FFmpeg/libswscale/bayer_template.c \
../lib/FFmpeg/libswscale/gamma.c \
../lib/FFmpeg/libswscale/hscale.c \
../lib/FFmpeg/libswscale/hscale_fast_bilinear.c \
../lib/FFmpeg/libswscale/input.c \
../lib/FFmpeg/libswscale/log2_tab.c \
../lib/FFmpeg/libswscale/options.c \
../lib/FFmpeg/libswscale/output.c \
../lib/FFmpeg/libswscale/rgb2rgb.c \
../lib/FFmpeg/libswscale/rgb2rgb_template.c \
../lib/FFmpeg/libswscale/slice.c \
../lib/FFmpeg/libswscale/swscale.c \
../lib/FFmpeg/libswscale/swscale_unscaled.c \
../lib/FFmpeg/libswscale/utils.c \
../lib/FFmpeg/libswscale/vscale.c \
../lib/FFmpeg/libswscale/yuv2rgb.c 

O_SRCS += \
../lib/FFmpeg/libswscale/alphablend.o \
../lib/FFmpeg/libswscale/gamma.o \
../lib/FFmpeg/libswscale/hscale.o \
../lib/FFmpeg/libswscale/hscale_fast_bilinear.o \
../lib/FFmpeg/libswscale/input.o \
../lib/FFmpeg/libswscale/options.o \
../lib/FFmpeg/libswscale/output.o \
../lib/FFmpeg/libswscale/rgb2rgb.o \
../lib/FFmpeg/libswscale/slice.o \
../lib/FFmpeg/libswscale/swscale.o \
../lib/FFmpeg/libswscale/swscale_unscaled.o \
../lib/FFmpeg/libswscale/utils.o \
../lib/FFmpeg/libswscale/vscale.o \
../lib/FFmpeg/libswscale/yuv2rgb.o 

OBJS += \
./lib/FFmpeg/libswscale/alphablend.o \
./lib/FFmpeg/libswscale/bayer_template.o \
./lib/FFmpeg/libswscale/gamma.o \
./lib/FFmpeg/libswscale/hscale.o \
./lib/FFmpeg/libswscale/hscale_fast_bilinear.o \
./lib/FFmpeg/libswscale/input.o \
./lib/FFmpeg/libswscale/log2_tab.o \
./lib/FFmpeg/libswscale/options.o \
./lib/FFmpeg/libswscale/output.o \
./lib/FFmpeg/libswscale/rgb2rgb.o \
./lib/FFmpeg/libswscale/rgb2rgb_template.o \
./lib/FFmpeg/libswscale/slice.o \
./lib/FFmpeg/libswscale/swscale.o \
./lib/FFmpeg/libswscale/swscale_unscaled.o \
./lib/FFmpeg/libswscale/utils.o \
./lib/FFmpeg/libswscale/vscale.o \
./lib/FFmpeg/libswscale/yuv2rgb.o 

C_DEPS += \
./lib/FFmpeg/libswscale/alphablend.d \
./lib/FFmpeg/libswscale/bayer_template.d \
./lib/FFmpeg/libswscale/gamma.d \
./lib/FFmpeg/libswscale/hscale.d \
./lib/FFmpeg/libswscale/hscale_fast_bilinear.d \
./lib/FFmpeg/libswscale/input.d \
./lib/FFmpeg/libswscale/log2_tab.d \
./lib/FFmpeg/libswscale/options.d \
./lib/FFmpeg/libswscale/output.d \
./lib/FFmpeg/libswscale/rgb2rgb.d \
./lib/FFmpeg/libswscale/rgb2rgb_template.d \
./lib/FFmpeg/libswscale/slice.d \
./lib/FFmpeg/libswscale/swscale.d \
./lib/FFmpeg/libswscale/swscale_unscaled.d \
./lib/FFmpeg/libswscale/utils.d \
./lib/FFmpeg/libswscale/vscale.d \
./lib/FFmpeg/libswscale/yuv2rgb.d 


# Each subdirectory must supply rules for building sources it contributes
lib/FFmpeg/libswscale/%.o: ../lib/FFmpeg/libswscale/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


