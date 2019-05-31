################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
ASM_SRCS += \
../lib/FFmpeg/libswresample/x86/audio_convert.asm \
../lib/FFmpeg/libswresample/x86/rematrix.asm \
../lib/FFmpeg/libswresample/x86/resample.asm 

C_SRCS += \
../lib/FFmpeg/libswresample/x86/audio_convert_init.c \
../lib/FFmpeg/libswresample/x86/rematrix_init.c \
../lib/FFmpeg/libswresample/x86/resample_init.c \
../lib/FFmpeg/libswresample/x86/w64xmmtest.c 

O_SRCS += \
../lib/FFmpeg/libswresample/x86/audio_convert.o \
../lib/FFmpeg/libswresample/x86/audio_convert_init.o \
../lib/FFmpeg/libswresample/x86/rematrix.o \
../lib/FFmpeg/libswresample/x86/rematrix_init.o \
../lib/FFmpeg/libswresample/x86/resample.o \
../lib/FFmpeg/libswresample/x86/resample_init.o 

OBJS += \
./lib/FFmpeg/libswresample/x86/audio_convert.o \
./lib/FFmpeg/libswresample/x86/audio_convert_init.o \
./lib/FFmpeg/libswresample/x86/rematrix.o \
./lib/FFmpeg/libswresample/x86/rematrix_init.o \
./lib/FFmpeg/libswresample/x86/resample.o \
./lib/FFmpeg/libswresample/x86/resample_init.o \
./lib/FFmpeg/libswresample/x86/w64xmmtest.o 

C_DEPS += \
./lib/FFmpeg/libswresample/x86/audio_convert_init.d \
./lib/FFmpeg/libswresample/x86/rematrix_init.d \
./lib/FFmpeg/libswresample/x86/resample_init.d \
./lib/FFmpeg/libswresample/x86/w64xmmtest.d 


# Each subdirectory must supply rules for building sources it contributes
lib/FFmpeg/libswresample/x86/%.o: ../lib/FFmpeg/libswresample/x86/%.asm
	@echo 'Building file: $<'
	@echo 'Invoking: GCC Assembler'
	as  -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

lib/FFmpeg/libswresample/x86/%.o: ../lib/FFmpeg/libswresample/x86/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


