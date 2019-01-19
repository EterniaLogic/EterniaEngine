################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../lib/FFmpeg/libavutil/aarch64/cpu.c \
../lib/FFmpeg/libavutil/aarch64/float_dsp_init.c 

S_UPPER_SRCS += \
../lib/FFmpeg/libavutil/aarch64/asm.S \
../lib/FFmpeg/libavutil/aarch64/float_dsp_neon.S 

OBJS += \
./lib/FFmpeg/libavutil/aarch64/asm.o \
./lib/FFmpeg/libavutil/aarch64/cpu.o \
./lib/FFmpeg/libavutil/aarch64/float_dsp_init.o \
./lib/FFmpeg/libavutil/aarch64/float_dsp_neon.o 

C_DEPS += \
./lib/FFmpeg/libavutil/aarch64/cpu.d \
./lib/FFmpeg/libavutil/aarch64/float_dsp_init.d 


# Each subdirectory must supply rules for building sources it contributes
lib/FFmpeg/libavutil/aarch64/%.o: ../lib/FFmpeg/libavutil/aarch64/%.S
	@echo 'Building file: $<'
	@echo 'Invoking: GCC Assembler'
	as  -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

lib/FFmpeg/libavutil/aarch64/%.o: ../lib/FFmpeg/libavutil/aarch64/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


