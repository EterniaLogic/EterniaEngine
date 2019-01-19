################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../lib/cpython/Programs/_freeze_importlib.c \
../lib/cpython/Programs/_testembed.c \
../lib/cpython/Programs/python.c 

O_SRCS += \
../lib/cpython/Programs/_testembed.o \
../lib/cpython/Programs/python.o 

OBJS += \
./lib/cpython/Programs/_freeze_importlib.o \
./lib/cpython/Programs/_testembed.o \
./lib/cpython/Programs/python.o 

C_DEPS += \
./lib/cpython/Programs/_freeze_importlib.d \
./lib/cpython/Programs/_testembed.d \
./lib/cpython/Programs/python.d 


# Each subdirectory must supply rules for building sources it contributes
lib/cpython/Programs/%.o: ../lib/cpython/Programs/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


