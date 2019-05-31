################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../lib/FFmpeg/tests/api/api-band-test.c \
../lib/FFmpeg/tests/api/api-codec-param-test.c \
../lib/FFmpeg/tests/api/api-flac-test.c \
../lib/FFmpeg/tests/api/api-h264-slice-test.c \
../lib/FFmpeg/tests/api/api-h264-test.c \
../lib/FFmpeg/tests/api/api-seek-test.c \
../lib/FFmpeg/tests/api/api-threadmessage-test.c 

OBJS += \
./lib/FFmpeg/tests/api/api-band-test.o \
./lib/FFmpeg/tests/api/api-codec-param-test.o \
./lib/FFmpeg/tests/api/api-flac-test.o \
./lib/FFmpeg/tests/api/api-h264-slice-test.o \
./lib/FFmpeg/tests/api/api-h264-test.o \
./lib/FFmpeg/tests/api/api-seek-test.o \
./lib/FFmpeg/tests/api/api-threadmessage-test.o 

C_DEPS += \
./lib/FFmpeg/tests/api/api-band-test.d \
./lib/FFmpeg/tests/api/api-codec-param-test.d \
./lib/FFmpeg/tests/api/api-flac-test.d \
./lib/FFmpeg/tests/api/api-h264-slice-test.d \
./lib/FFmpeg/tests/api/api-h264-test.d \
./lib/FFmpeg/tests/api/api-seek-test.d \
./lib/FFmpeg/tests/api/api-threadmessage-test.d 


# Each subdirectory must supply rules for building sources it contributes
lib/FFmpeg/tests/api/%.o: ../lib/FFmpeg/tests/api/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


