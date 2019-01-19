################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../lib/FFmpeg/libswscale/ppc/swscale_altivec.c \
../lib/FFmpeg/libswscale/ppc/swscale_ppc_template.c \
../lib/FFmpeg/libswscale/ppc/swscale_vsx.c \
../lib/FFmpeg/libswscale/ppc/yuv2rgb_altivec.c \
../lib/FFmpeg/libswscale/ppc/yuv2yuv_altivec.c 

OBJS += \
./lib/FFmpeg/libswscale/ppc/swscale_altivec.o \
./lib/FFmpeg/libswscale/ppc/swscale_ppc_template.o \
./lib/FFmpeg/libswscale/ppc/swscale_vsx.o \
./lib/FFmpeg/libswscale/ppc/yuv2rgb_altivec.o \
./lib/FFmpeg/libswscale/ppc/yuv2yuv_altivec.o 

C_DEPS += \
./lib/FFmpeg/libswscale/ppc/swscale_altivec.d \
./lib/FFmpeg/libswscale/ppc/swscale_ppc_template.d \
./lib/FFmpeg/libswscale/ppc/swscale_vsx.d \
./lib/FFmpeg/libswscale/ppc/yuv2rgb_altivec.d \
./lib/FFmpeg/libswscale/ppc/yuv2yuv_altivec.d 


# Each subdirectory must supply rules for building sources it contributes
lib/FFmpeg/libswscale/ppc/%.o: ../lib/FFmpeg/libswscale/ppc/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


