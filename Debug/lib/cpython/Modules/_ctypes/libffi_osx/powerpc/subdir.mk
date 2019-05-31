################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../lib/cpython/Modules/_ctypes/libffi_osx/powerpc/ppc-ffi_darwin.c 

S_UPPER_SRCS += \
../lib/cpython/Modules/_ctypes/libffi_osx/powerpc/ppc-darwin.S \
../lib/cpython/Modules/_ctypes/libffi_osx/powerpc/ppc-darwin_closure.S \
../lib/cpython/Modules/_ctypes/libffi_osx/powerpc/ppc64-darwin_closure.S 

OBJS += \
./lib/cpython/Modules/_ctypes/libffi_osx/powerpc/ppc-darwin.o \
./lib/cpython/Modules/_ctypes/libffi_osx/powerpc/ppc-darwin_closure.o \
./lib/cpython/Modules/_ctypes/libffi_osx/powerpc/ppc-ffi_darwin.o \
./lib/cpython/Modules/_ctypes/libffi_osx/powerpc/ppc64-darwin_closure.o 

C_DEPS += \
./lib/cpython/Modules/_ctypes/libffi_osx/powerpc/ppc-ffi_darwin.d 


# Each subdirectory must supply rules for building sources it contributes
lib/cpython/Modules/_ctypes/libffi_osx/powerpc/%.o: ../lib/cpython/Modules/_ctypes/libffi_osx/powerpc/%.S
	@echo 'Building file: $<'
	@echo 'Invoking: GCC Assembler'
	as  -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

lib/cpython/Modules/_ctypes/libffi_osx/powerpc/%.o: ../lib/cpython/Modules/_ctypes/libffi_osx/powerpc/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


