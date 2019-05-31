################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../lib/FFmpeg/libavutil/arm/cpu.c \
../lib/FFmpeg/libavutil/arm/float_dsp_init_arm.c \
../lib/FFmpeg/libavutil/arm/float_dsp_init_neon.c \
../lib/FFmpeg/libavutil/arm/float_dsp_init_vfp.c 

S_UPPER_SRCS += \
../lib/FFmpeg/libavutil/arm/asm.S \
../lib/FFmpeg/libavutil/arm/float_dsp_neon.S \
../lib/FFmpeg/libavutil/arm/float_dsp_vfp.S 

OBJS += \
./lib/FFmpeg/libavutil/arm/asm.o \
./lib/FFmpeg/libavutil/arm/cpu.o \
./lib/FFmpeg/libavutil/arm/float_dsp_init_arm.o \
./lib/FFmpeg/libavutil/arm/float_dsp_init_neon.o \
./lib/FFmpeg/libavutil/arm/float_dsp_init_vfp.o \
./lib/FFmpeg/libavutil/arm/float_dsp_neon.o \
./lib/FFmpeg/libavutil/arm/float_dsp_vfp.o 

C_DEPS += \
./lib/FFmpeg/libavutil/arm/cpu.d \
./lib/FFmpeg/libavutil/arm/float_dsp_init_arm.d \
./lib/FFmpeg/libavutil/arm/float_dsp_init_neon.d \
./lib/FFmpeg/libavutil/arm/float_dsp_init_vfp.d 


# Each subdirectory must supply rules for building sources it contributes
lib/FFmpeg/libavutil/arm/%.o: ../lib/FFmpeg/libavutil/arm/%.S
	@echo 'Building file: $<'
	@echo 'Invoking: GCC Assembler'
	as  -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

lib/FFmpeg/libavutil/arm/%.o: ../lib/FFmpeg/libavutil/arm/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


