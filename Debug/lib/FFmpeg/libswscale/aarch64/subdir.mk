################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../lib/FFmpeg/libswscale/aarch64/swscale.c \
../lib/FFmpeg/libswscale/aarch64/swscale_unscaled.c 

S_UPPER_SRCS += \
../lib/FFmpeg/libswscale/aarch64/hscale.S \
../lib/FFmpeg/libswscale/aarch64/output.S \
../lib/FFmpeg/libswscale/aarch64/yuv2rgb_neon.S 

OBJS += \
./lib/FFmpeg/libswscale/aarch64/hscale.o \
./lib/FFmpeg/libswscale/aarch64/output.o \
./lib/FFmpeg/libswscale/aarch64/swscale.o \
./lib/FFmpeg/libswscale/aarch64/swscale_unscaled.o \
./lib/FFmpeg/libswscale/aarch64/yuv2rgb_neon.o 

C_DEPS += \
./lib/FFmpeg/libswscale/aarch64/swscale.d \
./lib/FFmpeg/libswscale/aarch64/swscale_unscaled.d 


# Each subdirectory must supply rules for building sources it contributes
lib/FFmpeg/libswscale/aarch64/%.o: ../lib/FFmpeg/libswscale/aarch64/%.S
	@echo 'Building file: $<'
	@echo 'Invoking: GCC Assembler'
	as  -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

lib/FFmpeg/libswscale/aarch64/%.o: ../lib/FFmpeg/libswscale/aarch64/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


