################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../lib/cpython/Modules/_ctypes/darwin/dlfcn_simple.c 

OBJS += \
./lib/cpython/Modules/_ctypes/darwin/dlfcn_simple.o 

C_DEPS += \
./lib/cpython/Modules/_ctypes/darwin/dlfcn_simple.d 


# Each subdirectory must supply rules for building sources it contributes
lib/cpython/Modules/_ctypes/darwin/%.o: ../lib/cpython/Modules/_ctypes/darwin/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


