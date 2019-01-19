################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../lib/FFmpeg/doc/examples/avio_dir_cmd.c \
../lib/FFmpeg/doc/examples/avio_reading.c \
../lib/FFmpeg/doc/examples/decode_audio.c \
../lib/FFmpeg/doc/examples/decode_video.c \
../lib/FFmpeg/doc/examples/demuxing_decoding.c \
../lib/FFmpeg/doc/examples/encode_audio.c \
../lib/FFmpeg/doc/examples/encode_video.c \
../lib/FFmpeg/doc/examples/extract_mvs.c \
../lib/FFmpeg/doc/examples/filter_audio.c \
../lib/FFmpeg/doc/examples/filtering_audio.c \
../lib/FFmpeg/doc/examples/filtering_video.c \
../lib/FFmpeg/doc/examples/http_multiclient.c \
../lib/FFmpeg/doc/examples/hw_decode.c \
../lib/FFmpeg/doc/examples/metadata.c \
../lib/FFmpeg/doc/examples/muxing.c \
../lib/FFmpeg/doc/examples/qsvdec.c \
../lib/FFmpeg/doc/examples/remuxing.c \
../lib/FFmpeg/doc/examples/resampling_audio.c \
../lib/FFmpeg/doc/examples/scaling_video.c \
../lib/FFmpeg/doc/examples/transcode_aac.c \
../lib/FFmpeg/doc/examples/transcoding.c \
../lib/FFmpeg/doc/examples/vaapi_encode.c \
../lib/FFmpeg/doc/examples/vaapi_transcode.c 

OBJS += \
./lib/FFmpeg/doc/examples/avio_dir_cmd.o \
./lib/FFmpeg/doc/examples/avio_reading.o \
./lib/FFmpeg/doc/examples/decode_audio.o \
./lib/FFmpeg/doc/examples/decode_video.o \
./lib/FFmpeg/doc/examples/demuxing_decoding.o \
./lib/FFmpeg/doc/examples/encode_audio.o \
./lib/FFmpeg/doc/examples/encode_video.o \
./lib/FFmpeg/doc/examples/extract_mvs.o \
./lib/FFmpeg/doc/examples/filter_audio.o \
./lib/FFmpeg/doc/examples/filtering_audio.o \
./lib/FFmpeg/doc/examples/filtering_video.o \
./lib/FFmpeg/doc/examples/http_multiclient.o \
./lib/FFmpeg/doc/examples/hw_decode.o \
./lib/FFmpeg/doc/examples/metadata.o \
./lib/FFmpeg/doc/examples/muxing.o \
./lib/FFmpeg/doc/examples/qsvdec.o \
./lib/FFmpeg/doc/examples/remuxing.o \
./lib/FFmpeg/doc/examples/resampling_audio.o \
./lib/FFmpeg/doc/examples/scaling_video.o \
./lib/FFmpeg/doc/examples/transcode_aac.o \
./lib/FFmpeg/doc/examples/transcoding.o \
./lib/FFmpeg/doc/examples/vaapi_encode.o \
./lib/FFmpeg/doc/examples/vaapi_transcode.o 

C_DEPS += \
./lib/FFmpeg/doc/examples/avio_dir_cmd.d \
./lib/FFmpeg/doc/examples/avio_reading.d \
./lib/FFmpeg/doc/examples/decode_audio.d \
./lib/FFmpeg/doc/examples/decode_video.d \
./lib/FFmpeg/doc/examples/demuxing_decoding.d \
./lib/FFmpeg/doc/examples/encode_audio.d \
./lib/FFmpeg/doc/examples/encode_video.d \
./lib/FFmpeg/doc/examples/extract_mvs.d \
./lib/FFmpeg/doc/examples/filter_audio.d \
./lib/FFmpeg/doc/examples/filtering_audio.d \
./lib/FFmpeg/doc/examples/filtering_video.d \
./lib/FFmpeg/doc/examples/http_multiclient.d \
./lib/FFmpeg/doc/examples/hw_decode.d \
./lib/FFmpeg/doc/examples/metadata.d \
./lib/FFmpeg/doc/examples/muxing.d \
./lib/FFmpeg/doc/examples/qsvdec.d \
./lib/FFmpeg/doc/examples/remuxing.d \
./lib/FFmpeg/doc/examples/resampling_audio.d \
./lib/FFmpeg/doc/examples/scaling_video.d \
./lib/FFmpeg/doc/examples/transcode_aac.d \
./lib/FFmpeg/doc/examples/transcoding.d \
./lib/FFmpeg/doc/examples/vaapi_encode.d \
./lib/FFmpeg/doc/examples/vaapi_transcode.d 


# Each subdirectory must supply rules for building sources it contributes
lib/FFmpeg/doc/examples/%.o: ../lib/FFmpeg/doc/examples/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


