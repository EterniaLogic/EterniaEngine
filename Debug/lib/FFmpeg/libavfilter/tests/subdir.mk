################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../lib/FFmpeg/libavfilter/tests/drawutils.c \
../lib/FFmpeg/libavfilter/tests/filtfmts.c \
../lib/FFmpeg/libavfilter/tests/formats.c \
../lib/FFmpeg/libavfilter/tests/integral.c 

OBJS += \
./lib/FFmpeg/libavfilter/tests/drawutils.o \
./lib/FFmpeg/libavfilter/tests/filtfmts.o \
./lib/FFmpeg/libavfilter/tests/formats.o \
./lib/FFmpeg/libavfilter/tests/integral.o 

C_DEPS += \
./lib/FFmpeg/libavfilter/tests/drawutils.d \
./lib/FFmpeg/libavfilter/tests/filtfmts.d \
./lib/FFmpeg/libavfilter/tests/formats.d \
./lib/FFmpeg/libavfilter/tests/integral.d 


# Each subdirectory must supply rules for building sources it contributes
lib/FFmpeg/libavfilter/tests/%.o: ../lib/FFmpeg/libavfilter/tests/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


