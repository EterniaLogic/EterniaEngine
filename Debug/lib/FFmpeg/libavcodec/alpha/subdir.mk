################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../lib/FFmpeg/libavcodec/alpha/blockdsp_alpha.c \
../lib/FFmpeg/libavcodec/alpha/hpeldsp_alpha.c \
../lib/FFmpeg/libavcodec/alpha/idctdsp_alpha.c \
../lib/FFmpeg/libavcodec/alpha/me_cmp_alpha.c \
../lib/FFmpeg/libavcodec/alpha/mpegvideo_alpha.c \
../lib/FFmpeg/libavcodec/alpha/pixblockdsp_alpha.c \
../lib/FFmpeg/libavcodec/alpha/simple_idct_alpha.c 

S_UPPER_SRCS += \
../lib/FFmpeg/libavcodec/alpha/hpeldsp_alpha_asm.S \
../lib/FFmpeg/libavcodec/alpha/idctdsp_alpha_asm.S \
../lib/FFmpeg/libavcodec/alpha/me_cmp_mvi_asm.S 

OBJS += \
./lib/FFmpeg/libavcodec/alpha/blockdsp_alpha.o \
./lib/FFmpeg/libavcodec/alpha/hpeldsp_alpha.o \
./lib/FFmpeg/libavcodec/alpha/hpeldsp_alpha_asm.o \
./lib/FFmpeg/libavcodec/alpha/idctdsp_alpha.o \
./lib/FFmpeg/libavcodec/alpha/idctdsp_alpha_asm.o \
./lib/FFmpeg/libavcodec/alpha/me_cmp_alpha.o \
./lib/FFmpeg/libavcodec/alpha/me_cmp_mvi_asm.o \
./lib/FFmpeg/libavcodec/alpha/mpegvideo_alpha.o \
./lib/FFmpeg/libavcodec/alpha/pixblockdsp_alpha.o \
./lib/FFmpeg/libavcodec/alpha/simple_idct_alpha.o 

C_DEPS += \
./lib/FFmpeg/libavcodec/alpha/blockdsp_alpha.d \
./lib/FFmpeg/libavcodec/alpha/hpeldsp_alpha.d \
./lib/FFmpeg/libavcodec/alpha/idctdsp_alpha.d \
./lib/FFmpeg/libavcodec/alpha/me_cmp_alpha.d \
./lib/FFmpeg/libavcodec/alpha/mpegvideo_alpha.d \
./lib/FFmpeg/libavcodec/alpha/pixblockdsp_alpha.d \
./lib/FFmpeg/libavcodec/alpha/simple_idct_alpha.d 


# Each subdirectory must supply rules for building sources it contributes
lib/FFmpeg/libavcodec/alpha/%.o: ../lib/FFmpeg/libavcodec/alpha/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

lib/FFmpeg/libavcodec/alpha/%.o: ../lib/FFmpeg/libavcodec/alpha/%.S
	@echo 'Building file: $<'
	@echo 'Invoking: GCC Assembler'
	as  -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


