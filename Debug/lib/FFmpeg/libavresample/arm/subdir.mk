################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../lib/FFmpeg/libavresample/arm/audio_convert_init.c \
../lib/FFmpeg/libavresample/arm/neontest.c \
../lib/FFmpeg/libavresample/arm/resample_init.c 

S_UPPER_SRCS += \
../lib/FFmpeg/libavresample/arm/audio_convert_neon.S \
../lib/FFmpeg/libavresample/arm/resample_neon.S 

OBJS += \
./lib/FFmpeg/libavresample/arm/audio_convert_init.o \
./lib/FFmpeg/libavresample/arm/audio_convert_neon.o \
./lib/FFmpeg/libavresample/arm/neontest.o \
./lib/FFmpeg/libavresample/arm/resample_init.o \
./lib/FFmpeg/libavresample/arm/resample_neon.o 

C_DEPS += \
./lib/FFmpeg/libavresample/arm/audio_convert_init.d \
./lib/FFmpeg/libavresample/arm/neontest.d \
./lib/FFmpeg/libavresample/arm/resample_init.d 


# Each subdirectory must supply rules for building sources it contributes
lib/FFmpeg/libavresample/arm/%.o: ../lib/FFmpeg/libavresample/arm/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

lib/FFmpeg/libavresample/arm/%.o: ../lib/FFmpeg/libavresample/arm/%.S
	@echo 'Building file: $<'
	@echo 'Invoking: GCC Assembler'
	as  -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


