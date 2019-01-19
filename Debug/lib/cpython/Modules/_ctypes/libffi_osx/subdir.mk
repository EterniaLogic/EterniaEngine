################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../lib/cpython/Modules/_ctypes/libffi_osx/ffi.c \
../lib/cpython/Modules/_ctypes/libffi_osx/types.c 

OBJS += \
./lib/cpython/Modules/_ctypes/libffi_osx/ffi.o \
./lib/cpython/Modules/_ctypes/libffi_osx/types.o 

C_DEPS += \
./lib/cpython/Modules/_ctypes/libffi_osx/ffi.d \
./lib/cpython/Modules/_ctypes/libffi_osx/types.d 


# Each subdirectory must supply rules for building sources it contributes
lib/cpython/Modules/_ctypes/libffi_osx/%.o: ../lib/cpython/Modules/_ctypes/libffi_osx/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


