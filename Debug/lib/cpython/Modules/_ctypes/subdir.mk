################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../lib/cpython/Modules/_ctypes/_ctypes.c \
../lib/cpython/Modules/_ctypes/_ctypes_test.c \
../lib/cpython/Modules/_ctypes/callbacks.c \
../lib/cpython/Modules/_ctypes/callproc.c \
../lib/cpython/Modules/_ctypes/cfield.c \
../lib/cpython/Modules/_ctypes/malloc_closure.c \
../lib/cpython/Modules/_ctypes/stgdict.c 

OBJS += \
./lib/cpython/Modules/_ctypes/_ctypes.o \
./lib/cpython/Modules/_ctypes/_ctypes_test.o \
./lib/cpython/Modules/_ctypes/callbacks.o \
./lib/cpython/Modules/_ctypes/callproc.o \
./lib/cpython/Modules/_ctypes/cfield.o \
./lib/cpython/Modules/_ctypes/malloc_closure.o \
./lib/cpython/Modules/_ctypes/stgdict.o 

C_DEPS += \
./lib/cpython/Modules/_ctypes/_ctypes.d \
./lib/cpython/Modules/_ctypes/_ctypes_test.d \
./lib/cpython/Modules/_ctypes/callbacks.d \
./lib/cpython/Modules/_ctypes/callproc.d \
./lib/cpython/Modules/_ctypes/cfield.d \
./lib/cpython/Modules/_ctypes/malloc_closure.d \
./lib/cpython/Modules/_ctypes/stgdict.d 


# Each subdirectory must supply rules for building sources it contributes
lib/cpython/Modules/_ctypes/%.o: ../lib/cpython/Modules/_ctypes/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


