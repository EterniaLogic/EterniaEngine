################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
ASM_SRCS += \
../lib/FFmpeg/libavresample/x86/audio_convert.asm \
../lib/FFmpeg/libavresample/x86/audio_mix.asm \
../lib/FFmpeg/libavresample/x86/dither.asm \
../lib/FFmpeg/libavresample/x86/util.asm 

C_SRCS += \
../lib/FFmpeg/libavresample/x86/audio_convert_init.c \
../lib/FFmpeg/libavresample/x86/audio_mix_init.c \
../lib/FFmpeg/libavresample/x86/dither_init.c \
../lib/FFmpeg/libavresample/x86/w64xmmtest.c 

OBJS += \
./lib/FFmpeg/libavresample/x86/audio_convert.o \
./lib/FFmpeg/libavresample/x86/audio_convert_init.o \
./lib/FFmpeg/libavresample/x86/audio_mix.o \
./lib/FFmpeg/libavresample/x86/audio_mix_init.o \
./lib/FFmpeg/libavresample/x86/dither.o \
./lib/FFmpeg/libavresample/x86/dither_init.o \
./lib/FFmpeg/libavresample/x86/util.o \
./lib/FFmpeg/libavresample/x86/w64xmmtest.o 

C_DEPS += \
./lib/FFmpeg/libavresample/x86/audio_convert_init.d \
./lib/FFmpeg/libavresample/x86/audio_mix_init.d \
./lib/FFmpeg/libavresample/x86/dither_init.d \
./lib/FFmpeg/libavresample/x86/w64xmmtest.d 


# Each subdirectory must supply rules for building sources it contributes
lib/FFmpeg/libavresample/x86/%.o: ../lib/FFmpeg/libavresample/x86/%.asm
	@echo 'Building file: $<'
	@echo 'Invoking: GCC Assembler'
	as  -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

lib/FFmpeg/libavresample/x86/%.o: ../lib/FFmpeg/libavresample/x86/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


