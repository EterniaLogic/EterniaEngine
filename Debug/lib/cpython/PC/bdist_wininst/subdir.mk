################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../lib/cpython/PC/bdist_wininst/extract.c \
../lib/cpython/PC/bdist_wininst/install.c 

OBJS += \
./lib/cpython/PC/bdist_wininst/extract.o \
./lib/cpython/PC/bdist_wininst/install.o 

C_DEPS += \
./lib/cpython/PC/bdist_wininst/extract.d \
./lib/cpython/PC/bdist_wininst/install.d 


# Each subdirectory must supply rules for building sources it contributes
lib/cpython/PC/bdist_wininst/%.o: ../lib/cpython/PC/bdist_wininst/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


