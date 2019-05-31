################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../lib/FFmpeg/libavcodec/tests/avfft.c \
../lib/FFmpeg/libavcodec/tests/avpacket.c \
../lib/FFmpeg/libavcodec/tests/cabac.c \
../lib/FFmpeg/libavcodec/tests/celp_math.c \
../lib/FFmpeg/libavcodec/tests/codec_desc.c \
../lib/FFmpeg/libavcodec/tests/dct.c \
../lib/FFmpeg/libavcodec/tests/fft-fixed.c \
../lib/FFmpeg/libavcodec/tests/fft-fixed32.c \
../lib/FFmpeg/libavcodec/tests/fft.c \
../lib/FFmpeg/libavcodec/tests/golomb.c \
../lib/FFmpeg/libavcodec/tests/h264_levels.c \
../lib/FFmpeg/libavcodec/tests/htmlsubtitles.c \
../lib/FFmpeg/libavcodec/tests/iirfilter.c \
../lib/FFmpeg/libavcodec/tests/imgconvert.c \
../lib/FFmpeg/libavcodec/tests/jpeg2000dwt.c \
../lib/FFmpeg/libavcodec/tests/mathops.c \
../lib/FFmpeg/libavcodec/tests/mjpegenc_huffman.c \
../lib/FFmpeg/libavcodec/tests/motion.c \
../lib/FFmpeg/libavcodec/tests/mpeg12framerate.c \
../lib/FFmpeg/libavcodec/tests/options.c \
../lib/FFmpeg/libavcodec/tests/rangecoder.c \
../lib/FFmpeg/libavcodec/tests/snowenc.c \
../lib/FFmpeg/libavcodec/tests/utils.c 

OBJS += \
./lib/FFmpeg/libavcodec/tests/avfft.o \
./lib/FFmpeg/libavcodec/tests/avpacket.o \
./lib/FFmpeg/libavcodec/tests/cabac.o \
./lib/FFmpeg/libavcodec/tests/celp_math.o \
./lib/FFmpeg/libavcodec/tests/codec_desc.o \
./lib/FFmpeg/libavcodec/tests/dct.o \
./lib/FFmpeg/libavcodec/tests/fft-fixed.o \
./lib/FFmpeg/libavcodec/tests/fft-fixed32.o \
./lib/FFmpeg/libavcodec/tests/fft.o \
./lib/FFmpeg/libavcodec/tests/golomb.o \
./lib/FFmpeg/libavcodec/tests/h264_levels.o \
./lib/FFmpeg/libavcodec/tests/htmlsubtitles.o \
./lib/FFmpeg/libavcodec/tests/iirfilter.o \
./lib/FFmpeg/libavcodec/tests/imgconvert.o \
./lib/FFmpeg/libavcodec/tests/jpeg2000dwt.o \
./lib/FFmpeg/libavcodec/tests/mathops.o \
./lib/FFmpeg/libavcodec/tests/mjpegenc_huffman.o \
./lib/FFmpeg/libavcodec/tests/motion.o \
./lib/FFmpeg/libavcodec/tests/mpeg12framerate.o \
./lib/FFmpeg/libavcodec/tests/options.o \
./lib/FFmpeg/libavcodec/tests/rangecoder.o \
./lib/FFmpeg/libavcodec/tests/snowenc.o \
./lib/FFmpeg/libavcodec/tests/utils.o 

C_DEPS += \
./lib/FFmpeg/libavcodec/tests/avfft.d \
./lib/FFmpeg/libavcodec/tests/avpacket.d \
./lib/FFmpeg/libavcodec/tests/cabac.d \
./lib/FFmpeg/libavcodec/tests/celp_math.d \
./lib/FFmpeg/libavcodec/tests/codec_desc.d \
./lib/FFmpeg/libavcodec/tests/dct.d \
./lib/FFmpeg/libavcodec/tests/fft-fixed.d \
./lib/FFmpeg/libavcodec/tests/fft-fixed32.d \
./lib/FFmpeg/libavcodec/tests/fft.d \
./lib/FFmpeg/libavcodec/tests/golomb.d \
./lib/FFmpeg/libavcodec/tests/h264_levels.d \
./lib/FFmpeg/libavcodec/tests/htmlsubtitles.d \
./lib/FFmpeg/libavcodec/tests/iirfilter.d \
./lib/FFmpeg/libavcodec/tests/imgconvert.d \
./lib/FFmpeg/libavcodec/tests/jpeg2000dwt.d \
./lib/FFmpeg/libavcodec/tests/mathops.d \
./lib/FFmpeg/libavcodec/tests/mjpegenc_huffman.d \
./lib/FFmpeg/libavcodec/tests/motion.d \
./lib/FFmpeg/libavcodec/tests/mpeg12framerate.d \
./lib/FFmpeg/libavcodec/tests/options.d \
./lib/FFmpeg/libavcodec/tests/rangecoder.d \
./lib/FFmpeg/libavcodec/tests/snowenc.d \
./lib/FFmpeg/libavcodec/tests/utils.d 


# Each subdirectory must supply rules for building sources it contributes
lib/FFmpeg/libavcodec/tests/%.o: ../lib/FFmpeg/libavcodec/tests/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


