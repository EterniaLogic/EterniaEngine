################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../lib/cpython/Modules/_ctypes/libffi_osx/x86/x86-ffi64.c \
../lib/cpython/Modules/_ctypes/libffi_osx/x86/x86-ffi_darwin.c 

S_UPPER_SRCS += \
../lib/cpython/Modules/_ctypes/libffi_osx/x86/darwin64.S \
../lib/cpython/Modules/_ctypes/libffi_osx/x86/x86-darwin.S 

OBJS += \
./lib/cpython/Modules/_ctypes/libffi_osx/x86/darwin64.o \
./lib/cpython/Modules/_ctypes/libffi_osx/x86/x86-darwin.o \
./lib/cpython/Modules/_ctypes/libffi_osx/x86/x86-ffi64.o \
./lib/cpython/Modules/_ctypes/libffi_osx/x86/x86-ffi_darwin.o 

C_DEPS += \
./lib/cpython/Modules/_ctypes/libffi_osx/x86/x86-ffi64.d \
./lib/cpython/Modules/_ctypes/libffi_osx/x86/x86-ffi_darwin.d 


# Each subdirectory must supply rules for building sources it contributes
lib/cpython/Modules/_ctypes/libffi_osx/x86/%.o: ../lib/cpython/Modules/_ctypes/libffi_osx/x86/%.S
	@echo 'Building file: $<'
	@echo 'Invoking: GCC Assembler'
	as  -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

lib/cpython/Modules/_ctypes/libffi_osx/x86/%.o: ../lib/cpython/Modules/_ctypes/libffi_osx/x86/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


