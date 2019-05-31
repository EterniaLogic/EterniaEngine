################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../lib/FFmpeg/libswscale/tests/colorspace.c \
../lib/FFmpeg/libswscale/tests/pixdesc_query.c \
../lib/FFmpeg/libswscale/tests/swscale.c 

OBJS += \
./lib/FFmpeg/libswscale/tests/colorspace.o \
./lib/FFmpeg/libswscale/tests/pixdesc_query.o \
./lib/FFmpeg/libswscale/tests/swscale.o 

C_DEPS += \
./lib/FFmpeg/libswscale/tests/colorspace.d \
./lib/FFmpeg/libswscale/tests/pixdesc_query.d \
./lib/FFmpeg/libswscale/tests/swscale.d 


# Each subdirectory must supply rules for building sources it contributes
lib/FFmpeg/libswscale/tests/%.o: ../lib/FFmpeg/libswscale/tests/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


