################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../lib/freealut/test_suite/test_errorstuff.c \
../lib/freealut/test_suite/test_fileloader.c \
../lib/freealut/test_suite/test_memoryloader.c \
../lib/freealut/test_suite/test_retrostuff.c \
../lib/freealut/test_suite/test_version.c \
../lib/freealut/test_suite/test_waveforms.c 

O_SRCS += \
../lib/freealut/test_suite/test_errorstuff.o \
../lib/freealut/test_suite/test_fileloader.o \
../lib/freealut/test_suite/test_memoryloader.o \
../lib/freealut/test_suite/test_retrostuff-test_retrostuff.o \
../lib/freealut/test_suite/test_version.o \
../lib/freealut/test_suite/test_waveforms.o 

OBJS += \
./lib/freealut/test_suite/test_errorstuff.o \
./lib/freealut/test_suite/test_fileloader.o \
./lib/freealut/test_suite/test_memoryloader.o \
./lib/freealut/test_suite/test_retrostuff.o \
./lib/freealut/test_suite/test_version.o \
./lib/freealut/test_suite/test_waveforms.o 

C_DEPS += \
./lib/freealut/test_suite/test_errorstuff.d \
./lib/freealut/test_suite/test_fileloader.d \
./lib/freealut/test_suite/test_memoryloader.d \
./lib/freealut/test_suite/test_retrostuff.d \
./lib/freealut/test_suite/test_version.d \
./lib/freealut/test_suite/test_waveforms.d 


# Each subdirectory must supply rules for building sources it contributes
lib/freealut/test_suite/%.o: ../lib/freealut/test_suite/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


