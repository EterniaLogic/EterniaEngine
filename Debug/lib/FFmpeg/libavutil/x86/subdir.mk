################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
ASM_SRCS += \
../lib/FFmpeg/libavutil/x86/cpuid.asm \
../lib/FFmpeg/libavutil/x86/emms.asm \
../lib/FFmpeg/libavutil/x86/fixed_dsp.asm \
../lib/FFmpeg/libavutil/x86/float_dsp.asm \
../lib/FFmpeg/libavutil/x86/imgutils.asm \
../lib/FFmpeg/libavutil/x86/lls.asm \
../lib/FFmpeg/libavutil/x86/pixelutils.asm \
../lib/FFmpeg/libavutil/x86/x86inc.asm \
../lib/FFmpeg/libavutil/x86/x86util.asm 

C_SRCS += \
../lib/FFmpeg/libavutil/x86/cpu.c \
../lib/FFmpeg/libavutil/x86/fixed_dsp_init.c \
../lib/FFmpeg/libavutil/x86/float_dsp_init.c \
../lib/FFmpeg/libavutil/x86/imgutils_init.c \
../lib/FFmpeg/libavutil/x86/lls_init.c \
../lib/FFmpeg/libavutil/x86/pixelutils_init.c 

O_SRCS += \
../lib/FFmpeg/libavutil/x86/cpu.o \
../lib/FFmpeg/libavutil/x86/cpuid.o \
../lib/FFmpeg/libavutil/x86/fixed_dsp.o \
../lib/FFmpeg/libavutil/x86/fixed_dsp_init.o \
../lib/FFmpeg/libavutil/x86/float_dsp.o \
../lib/FFmpeg/libavutil/x86/float_dsp_init.o \
../lib/FFmpeg/libavutil/x86/imgutils.o \
../lib/FFmpeg/libavutil/x86/imgutils_init.o \
../lib/FFmpeg/libavutil/x86/lls.o \
../lib/FFmpeg/libavutil/x86/lls_init.o \
../lib/FFmpeg/libavutil/x86/pixelutils.o \
../lib/FFmpeg/libavutil/x86/pixelutils_init.o 

OBJS += \
./lib/FFmpeg/libavutil/x86/cpu.o \
./lib/FFmpeg/libavutil/x86/cpuid.o \
./lib/FFmpeg/libavutil/x86/emms.o \
./lib/FFmpeg/libavutil/x86/fixed_dsp.o \
./lib/FFmpeg/libavutil/x86/fixed_dsp_init.o \
./lib/FFmpeg/libavutil/x86/float_dsp.o \
./lib/FFmpeg/libavutil/x86/float_dsp_init.o \
./lib/FFmpeg/libavutil/x86/imgutils.o \
./lib/FFmpeg/libavutil/x86/imgutils_init.o \
./lib/FFmpeg/libavutil/x86/lls.o \
./lib/FFmpeg/libavutil/x86/lls_init.o \
./lib/FFmpeg/libavutil/x86/pixelutils.o \
./lib/FFmpeg/libavutil/x86/pixelutils_init.o \
./lib/FFmpeg/libavutil/x86/x86inc.o \
./lib/FFmpeg/libavutil/x86/x86util.o 

C_DEPS += \
./lib/FFmpeg/libavutil/x86/cpu.d \
./lib/FFmpeg/libavutil/x86/fixed_dsp_init.d \
./lib/FFmpeg/libavutil/x86/float_dsp_init.d \
./lib/FFmpeg/libavutil/x86/imgutils_init.d \
./lib/FFmpeg/libavutil/x86/lls_init.d \
./lib/FFmpeg/libavutil/x86/pixelutils_init.d 


# Each subdirectory must supply rules for building sources it contributes
lib/FFmpeg/libavutil/x86/%.o: ../lib/FFmpeg/libavutil/x86/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

lib/FFmpeg/libavutil/x86/%.o: ../lib/FFmpeg/libavutil/x86/%.asm
	@echo 'Building file: $<'
	@echo 'Invoking: GCC Assembler'
	as  -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


