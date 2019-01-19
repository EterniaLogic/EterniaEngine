################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../lib/cpython/Doc/includes/custom.c \
../lib/cpython/Doc/includes/custom2.c \
../lib/cpython/Doc/includes/custom3.c \
../lib/cpython/Doc/includes/custom4.c \
../lib/cpython/Doc/includes/run-func.c \
../lib/cpython/Doc/includes/sublist.c 

OBJS += \
./lib/cpython/Doc/includes/custom.o \
./lib/cpython/Doc/includes/custom2.o \
./lib/cpython/Doc/includes/custom3.o \
./lib/cpython/Doc/includes/custom4.o \
./lib/cpython/Doc/includes/run-func.o \
./lib/cpython/Doc/includes/sublist.o 

C_DEPS += \
./lib/cpython/Doc/includes/custom.d \
./lib/cpython/Doc/includes/custom2.d \
./lib/cpython/Doc/includes/custom3.d \
./lib/cpython/Doc/includes/custom4.d \
./lib/cpython/Doc/includes/run-func.d \
./lib/cpython/Doc/includes/sublist.d 


# Each subdirectory must supply rules for building sources it contributes
lib/cpython/Doc/includes/%.o: ../lib/cpython/Doc/includes/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


