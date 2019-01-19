################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../lib/FFmpeg/libswresample/audioconvert.c \
../lib/FFmpeg/libswresample/dither.c \
../lib/FFmpeg/libswresample/dither_template.c \
../lib/FFmpeg/libswresample/log2_tab.c \
../lib/FFmpeg/libswresample/noise_shaping_data.c \
../lib/FFmpeg/libswresample/options.c \
../lib/FFmpeg/libswresample/rematrix.c \
../lib/FFmpeg/libswresample/rematrix_template.c \
../lib/FFmpeg/libswresample/resample.c \
../lib/FFmpeg/libswresample/resample_dsp.c \
../lib/FFmpeg/libswresample/resample_template.c \
../lib/FFmpeg/libswresample/soxr_resample.c \
../lib/FFmpeg/libswresample/swresample.c \
../lib/FFmpeg/libswresample/swresample_frame.c 

O_SRCS += \
../lib/FFmpeg/libswresample/audioconvert.o \
../lib/FFmpeg/libswresample/dither.o \
../lib/FFmpeg/libswresample/options.o \
../lib/FFmpeg/libswresample/rematrix.o \
../lib/FFmpeg/libswresample/resample.o \
../lib/FFmpeg/libswresample/resample_dsp.o \
../lib/FFmpeg/libswresample/swresample.o \
../lib/FFmpeg/libswresample/swresample_frame.o 

OBJS += \
./lib/FFmpeg/libswresample/audioconvert.o \
./lib/FFmpeg/libswresample/dither.o \
./lib/FFmpeg/libswresample/dither_template.o \
./lib/FFmpeg/libswresample/log2_tab.o \
./lib/FFmpeg/libswresample/noise_shaping_data.o \
./lib/FFmpeg/libswresample/options.o \
./lib/FFmpeg/libswresample/rematrix.o \
./lib/FFmpeg/libswresample/rematrix_template.o \
./lib/FFmpeg/libswresample/resample.o \
./lib/FFmpeg/libswresample/resample_dsp.o \
./lib/FFmpeg/libswresample/resample_template.o \
./lib/FFmpeg/libswresample/soxr_resample.o \
./lib/FFmpeg/libswresample/swresample.o \
./lib/FFmpeg/libswresample/swresample_frame.o 

C_DEPS += \
./lib/FFmpeg/libswresample/audioconvert.d \
./lib/FFmpeg/libswresample/dither.d \
./lib/FFmpeg/libswresample/dither_template.d \
./lib/FFmpeg/libswresample/log2_tab.d \
./lib/FFmpeg/libswresample/noise_shaping_data.d \
./lib/FFmpeg/libswresample/options.d \
./lib/FFmpeg/libswresample/rematrix.d \
./lib/FFmpeg/libswresample/rematrix_template.d \
./lib/FFmpeg/libswresample/resample.d \
./lib/FFmpeg/libswresample/resample_dsp.d \
./lib/FFmpeg/libswresample/resample_template.d \
./lib/FFmpeg/libswresample/soxr_resample.d \
./lib/FFmpeg/libswresample/swresample.d \
./lib/FFmpeg/libswresample/swresample_frame.d 


# Each subdirectory must supply rules for building sources it contributes
lib/FFmpeg/libswresample/%.o: ../lib/FFmpeg/libswresample/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


