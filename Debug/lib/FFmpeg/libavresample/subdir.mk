################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../lib/FFmpeg/libavresample/audio_convert.c \
../lib/FFmpeg/libavresample/audio_data.c \
../lib/FFmpeg/libavresample/audio_mix.c \
../lib/FFmpeg/libavresample/audio_mix_matrix.c \
../lib/FFmpeg/libavresample/dither.c \
../lib/FFmpeg/libavresample/options.c \
../lib/FFmpeg/libavresample/resample.c \
../lib/FFmpeg/libavresample/resample_template.c \
../lib/FFmpeg/libavresample/utils.c 

OBJS += \
./lib/FFmpeg/libavresample/audio_convert.o \
./lib/FFmpeg/libavresample/audio_data.o \
./lib/FFmpeg/libavresample/audio_mix.o \
./lib/FFmpeg/libavresample/audio_mix_matrix.o \
./lib/FFmpeg/libavresample/dither.o \
./lib/FFmpeg/libavresample/options.o \
./lib/FFmpeg/libavresample/resample.o \
./lib/FFmpeg/libavresample/resample_template.o \
./lib/FFmpeg/libavresample/utils.o 

C_DEPS += \
./lib/FFmpeg/libavresample/audio_convert.d \
./lib/FFmpeg/libavresample/audio_data.d \
./lib/FFmpeg/libavresample/audio_mix.d \
./lib/FFmpeg/libavresample/audio_mix_matrix.d \
./lib/FFmpeg/libavresample/dither.d \
./lib/FFmpeg/libavresample/options.d \
./lib/FFmpeg/libavresample/resample.d \
./lib/FFmpeg/libavresample/resample_template.d \
./lib/FFmpeg/libavresample/utils.d 


# Each subdirectory must supply rules for building sources it contributes
lib/FFmpeg/libavresample/%.o: ../lib/FFmpeg/libavresample/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


