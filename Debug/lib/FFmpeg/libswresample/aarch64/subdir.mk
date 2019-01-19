################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../lib/FFmpeg/libswresample/aarch64/audio_convert_init.c \
../lib/FFmpeg/libswresample/aarch64/neontest.c \
../lib/FFmpeg/libswresample/aarch64/resample_init.c 

S_UPPER_SRCS += \
../lib/FFmpeg/libswresample/aarch64/audio_convert_neon.S \
../lib/FFmpeg/libswresample/aarch64/resample.S 

OBJS += \
./lib/FFmpeg/libswresample/aarch64/audio_convert_init.o \
./lib/FFmpeg/libswresample/aarch64/audio_convert_neon.o \
./lib/FFmpeg/libswresample/aarch64/neontest.o \
./lib/FFmpeg/libswresample/aarch64/resample.o \
./lib/FFmpeg/libswresample/aarch64/resample_init.o 

C_DEPS += \
./lib/FFmpeg/libswresample/aarch64/audio_convert_init.d \
./lib/FFmpeg/libswresample/aarch64/neontest.d \
./lib/FFmpeg/libswresample/aarch64/resample_init.d 


# Each subdirectory must supply rules for building sources it contributes
lib/FFmpeg/libswresample/aarch64/%.o: ../lib/FFmpeg/libswresample/aarch64/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

lib/FFmpeg/libswresample/aarch64/%.o: ../lib/FFmpeg/libswresample/aarch64/%.S
	@echo 'Building file: $<'
	@echo 'Invoking: GCC Assembler'
	as  -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


