################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../lib/FFmpeg/libavformat/tests/fifo_muxer.c \
../lib/FFmpeg/libavformat/tests/movenc.c \
../lib/FFmpeg/libavformat/tests/noproxy.c \
../lib/FFmpeg/libavformat/tests/rtmpdh.c \
../lib/FFmpeg/libavformat/tests/seek.c \
../lib/FFmpeg/libavformat/tests/srtp.c \
../lib/FFmpeg/libavformat/tests/url.c 

OBJS += \
./lib/FFmpeg/libavformat/tests/fifo_muxer.o \
./lib/FFmpeg/libavformat/tests/movenc.o \
./lib/FFmpeg/libavformat/tests/noproxy.o \
./lib/FFmpeg/libavformat/tests/rtmpdh.o \
./lib/FFmpeg/libavformat/tests/seek.o \
./lib/FFmpeg/libavformat/tests/srtp.o \
./lib/FFmpeg/libavformat/tests/url.o 

C_DEPS += \
./lib/FFmpeg/libavformat/tests/fifo_muxer.d \
./lib/FFmpeg/libavformat/tests/movenc.d \
./lib/FFmpeg/libavformat/tests/noproxy.d \
./lib/FFmpeg/libavformat/tests/rtmpdh.d \
./lib/FFmpeg/libavformat/tests/seek.d \
./lib/FFmpeg/libavformat/tests/srtp.d \
./lib/FFmpeg/libavformat/tests/url.d 


# Each subdirectory must supply rules for building sources it contributes
lib/FFmpeg/libavformat/tests/%.o: ../lib/FFmpeg/libavformat/tests/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


