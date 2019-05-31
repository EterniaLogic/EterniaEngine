################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../lib/freealut/src/alutBufferData.c \
../lib/freealut/src/alutCodec.c \
../lib/freealut/src/alutError.c \
../lib/freealut/src/alutInit.c \
../lib/freealut/src/alutInputStream.c \
../lib/freealut/src/alutLoader.c \
../lib/freealut/src/alutOutputStream.c \
../lib/freealut/src/alutUtil.c \
../lib/freealut/src/alutVersion.c \
../lib/freealut/src/alutWaveform.c 

O_SRCS += \
../lib/freealut/src/libalut_la-alutBufferData.o \
../lib/freealut/src/libalut_la-alutCodec.o \
../lib/freealut/src/libalut_la-alutError.o \
../lib/freealut/src/libalut_la-alutInit.o \
../lib/freealut/src/libalut_la-alutInputStream.o \
../lib/freealut/src/libalut_la-alutLoader.o \
../lib/freealut/src/libalut_la-alutOutputStream.o \
../lib/freealut/src/libalut_la-alutUtil.o \
../lib/freealut/src/libalut_la-alutVersion.o \
../lib/freealut/src/libalut_la-alutWaveform.o 

OBJS += \
./lib/freealut/src/alutBufferData.o \
./lib/freealut/src/alutCodec.o \
./lib/freealut/src/alutError.o \
./lib/freealut/src/alutInit.o \
./lib/freealut/src/alutInputStream.o \
./lib/freealut/src/alutLoader.o \
./lib/freealut/src/alutOutputStream.o \
./lib/freealut/src/alutUtil.o \
./lib/freealut/src/alutVersion.o \
./lib/freealut/src/alutWaveform.o 

C_DEPS += \
./lib/freealut/src/alutBufferData.d \
./lib/freealut/src/alutCodec.d \
./lib/freealut/src/alutError.d \
./lib/freealut/src/alutInit.d \
./lib/freealut/src/alutInputStream.d \
./lib/freealut/src/alutLoader.d \
./lib/freealut/src/alutOutputStream.d \
./lib/freealut/src/alutUtil.d \
./lib/freealut/src/alutVersion.d \
./lib/freealut/src/alutWaveform.d 


# Each subdirectory must supply rules for building sources it contributes
lib/freealut/src/%.o: ../lib/freealut/src/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


