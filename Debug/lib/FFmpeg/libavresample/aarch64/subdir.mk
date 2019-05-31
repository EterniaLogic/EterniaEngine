################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../lib/FFmpeg/libavresample/aarch64/audio_convert_init.c \
../lib/FFmpeg/libavresample/aarch64/neontest.c \
../lib/FFmpeg/libavresample/aarch64/resample_init.c 

S_UPPER_SRCS += \
../lib/FFmpeg/libavresample/aarch64/audio_convert_neon.S \
../lib/FFmpeg/libavresample/aarch64/resample_neon.S 

OBJS += \
./lib/FFmpeg/libavresample/aarch64/audio_convert_init.o \
./lib/FFmpeg/libavresample/aarch64/audio_convert_neon.o \
./lib/FFmpeg/libavresample/aarch64/neontest.o \
./lib/FFmpeg/libavresample/aarch64/resample_init.o \
./lib/FFmpeg/libavresample/aarch64/resample_neon.o 

C_DEPS += \
./lib/FFmpeg/libavresample/aarch64/audio_convert_init.d \
./lib/FFmpeg/libavresample/aarch64/neontest.d \
./lib/FFmpeg/libavresample/aarch64/resample_init.d 


# Each subdirectory must supply rules for building sources it contributes
lib/FFmpeg/libavresample/aarch64/%.o: ../lib/FFmpeg/libavresample/aarch64/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

lib/FFmpeg/libavresample/aarch64/%.o: ../lib/FFmpeg/libavresample/aarch64/%.S
	@echo 'Building file: $<'
	@echo 'Invoking: GCC Assembler'
	as  -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


