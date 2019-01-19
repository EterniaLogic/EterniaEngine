################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../lib/cpython/Modules/cjkcodecs/_codecs_cn.c \
../lib/cpython/Modules/cjkcodecs/_codecs_hk.c \
../lib/cpython/Modules/cjkcodecs/_codecs_iso2022.c \
../lib/cpython/Modules/cjkcodecs/_codecs_jp.c \
../lib/cpython/Modules/cjkcodecs/_codecs_kr.c \
../lib/cpython/Modules/cjkcodecs/_codecs_tw.c \
../lib/cpython/Modules/cjkcodecs/multibytecodec.c 

OBJS += \
./lib/cpython/Modules/cjkcodecs/_codecs_cn.o \
./lib/cpython/Modules/cjkcodecs/_codecs_hk.o \
./lib/cpython/Modules/cjkcodecs/_codecs_iso2022.o \
./lib/cpython/Modules/cjkcodecs/_codecs_jp.o \
./lib/cpython/Modules/cjkcodecs/_codecs_kr.o \
./lib/cpython/Modules/cjkcodecs/_codecs_tw.o \
./lib/cpython/Modules/cjkcodecs/multibytecodec.o 

C_DEPS += \
./lib/cpython/Modules/cjkcodecs/_codecs_cn.d \
./lib/cpython/Modules/cjkcodecs/_codecs_hk.d \
./lib/cpython/Modules/cjkcodecs/_codecs_iso2022.d \
./lib/cpython/Modules/cjkcodecs/_codecs_jp.d \
./lib/cpython/Modules/cjkcodecs/_codecs_kr.d \
./lib/cpython/Modules/cjkcodecs/_codecs_tw.d \
./lib/cpython/Modules/cjkcodecs/multibytecodec.d 


# Each subdirectory must supply rules for building sources it contributes
lib/cpython/Modules/cjkcodecs/%.o: ../lib/cpython/Modules/cjkcodecs/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


