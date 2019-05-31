################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../lib/FFmpeg/tests/audiogen.c \
../lib/FFmpeg/tests/audiomatch.c \
../lib/FFmpeg/tests/base64.c \
../lib/FFmpeg/tests/rotozoom.c \
../lib/FFmpeg/tests/tiny_psnr.c \
../lib/FFmpeg/tests/tiny_ssim.c \
../lib/FFmpeg/tests/utils.c \
../lib/FFmpeg/tests/videogen.c 

OBJS += \
./lib/FFmpeg/tests/audiogen.o \
./lib/FFmpeg/tests/audiomatch.o \
./lib/FFmpeg/tests/base64.o \
./lib/FFmpeg/tests/rotozoom.o \
./lib/FFmpeg/tests/tiny_psnr.o \
./lib/FFmpeg/tests/tiny_ssim.o \
./lib/FFmpeg/tests/utils.o \
./lib/FFmpeg/tests/videogen.o 

C_DEPS += \
./lib/FFmpeg/tests/audiogen.d \
./lib/FFmpeg/tests/audiomatch.d \
./lib/FFmpeg/tests/base64.d \
./lib/FFmpeg/tests/rotozoom.d \
./lib/FFmpeg/tests/tiny_psnr.d \
./lib/FFmpeg/tests/tiny_ssim.d \
./lib/FFmpeg/tests/utils.d \
./lib/FFmpeg/tests/videogen.d 


# Each subdirectory must supply rules for building sources it contributes
lib/FFmpeg/tests/%.o: ../lib/FFmpeg/tests/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


