################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../lib/FFmpeg/libswresample/arm/audio_convert_init.c \
../lib/FFmpeg/libswresample/arm/neontest.c \
../lib/FFmpeg/libswresample/arm/resample_init.c 

S_UPPER_SRCS += \
../lib/FFmpeg/libswresample/arm/audio_convert_neon.S \
../lib/FFmpeg/libswresample/arm/resample.S 

OBJS += \
./lib/FFmpeg/libswresample/arm/audio_convert_init.o \
./lib/FFmpeg/libswresample/arm/audio_convert_neon.o \
./lib/FFmpeg/libswresample/arm/neontest.o \
./lib/FFmpeg/libswresample/arm/resample.o \
./lib/FFmpeg/libswresample/arm/resample_init.o 

C_DEPS += \
./lib/FFmpeg/libswresample/arm/audio_convert_init.d \
./lib/FFmpeg/libswresample/arm/neontest.d \
./lib/FFmpeg/libswresample/arm/resample_init.d 


# Each subdirectory must supply rules for building sources it contributes
lib/FFmpeg/libswresample/arm/%.o: ../lib/FFmpeg/libswresample/arm/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

lib/FFmpeg/libswresample/arm/%.o: ../lib/FFmpeg/libswresample/arm/%.S
	@echo 'Building file: $<'
	@echo 'Invoking: GCC Assembler'
	as  -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


