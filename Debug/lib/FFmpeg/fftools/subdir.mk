################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../lib/FFmpeg/fftools/cmdutils.c \
../lib/FFmpeg/fftools/ffmpeg.c \
../lib/FFmpeg/fftools/ffmpeg_cuvid.c \
../lib/FFmpeg/fftools/ffmpeg_filter.c \
../lib/FFmpeg/fftools/ffmpeg_hw.c \
../lib/FFmpeg/fftools/ffmpeg_opt.c \
../lib/FFmpeg/fftools/ffmpeg_qsv.c \
../lib/FFmpeg/fftools/ffmpeg_videotoolbox.c \
../lib/FFmpeg/fftools/ffplay.c \
../lib/FFmpeg/fftools/ffprobe.c 

O_SRCS += \
../lib/FFmpeg/fftools/cmdutils.o \
../lib/FFmpeg/fftools/ffmpeg.o \
../lib/FFmpeg/fftools/ffmpeg_filter.o \
../lib/FFmpeg/fftools/ffmpeg_hw.o \
../lib/FFmpeg/fftools/ffmpeg_opt.o \
../lib/FFmpeg/fftools/ffplay.o \
../lib/FFmpeg/fftools/ffprobe.o 

OBJS += \
./lib/FFmpeg/fftools/cmdutils.o \
./lib/FFmpeg/fftools/ffmpeg.o \
./lib/FFmpeg/fftools/ffmpeg_cuvid.o \
./lib/FFmpeg/fftools/ffmpeg_filter.o \
./lib/FFmpeg/fftools/ffmpeg_hw.o \
./lib/FFmpeg/fftools/ffmpeg_opt.o \
./lib/FFmpeg/fftools/ffmpeg_qsv.o \
./lib/FFmpeg/fftools/ffmpeg_videotoolbox.o \
./lib/FFmpeg/fftools/ffplay.o \
./lib/FFmpeg/fftools/ffprobe.o 

C_DEPS += \
./lib/FFmpeg/fftools/cmdutils.d \
./lib/FFmpeg/fftools/ffmpeg.d \
./lib/FFmpeg/fftools/ffmpeg_cuvid.d \
./lib/FFmpeg/fftools/ffmpeg_filter.d \
./lib/FFmpeg/fftools/ffmpeg_hw.d \
./lib/FFmpeg/fftools/ffmpeg_opt.d \
./lib/FFmpeg/fftools/ffmpeg_qsv.d \
./lib/FFmpeg/fftools/ffmpeg_videotoolbox.d \
./lib/FFmpeg/fftools/ffplay.d \
./lib/FFmpeg/fftools/ffprobe.d 


# Each subdirectory must supply rules for building sources it contributes
lib/FFmpeg/fftools/%.o: ../lib/FFmpeg/fftools/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


