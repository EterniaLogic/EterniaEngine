################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
ASM_SRCS += \
../lib/cpython/Modules/_ctypes/libffi_msvc/win64.asm 

C_SRCS += \
../lib/cpython/Modules/_ctypes/libffi_msvc/ffi.c \
../lib/cpython/Modules/_ctypes/libffi_msvc/prep_cif.c \
../lib/cpython/Modules/_ctypes/libffi_msvc/types.c \
../lib/cpython/Modules/_ctypes/libffi_msvc/win32.c 

OBJS += \
./lib/cpython/Modules/_ctypes/libffi_msvc/ffi.o \
./lib/cpython/Modules/_ctypes/libffi_msvc/prep_cif.o \
./lib/cpython/Modules/_ctypes/libffi_msvc/types.o \
./lib/cpython/Modules/_ctypes/libffi_msvc/win32.o \
./lib/cpython/Modules/_ctypes/libffi_msvc/win64.o 

C_DEPS += \
./lib/cpython/Modules/_ctypes/libffi_msvc/ffi.d \
./lib/cpython/Modules/_ctypes/libffi_msvc/prep_cif.d \
./lib/cpython/Modules/_ctypes/libffi_msvc/types.d \
./lib/cpython/Modules/_ctypes/libffi_msvc/win32.d 


# Each subdirectory must supply rules for building sources it contributes
lib/cpython/Modules/_ctypes/libffi_msvc/%.o: ../lib/cpython/Modules/_ctypes/libffi_msvc/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

lib/cpython/Modules/_ctypes/libffi_msvc/%.o: ../lib/cpython/Modules/_ctypes/libffi_msvc/%.asm
	@echo 'Building file: $<'
	@echo 'Invoking: GCC Assembler'
	as  -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


