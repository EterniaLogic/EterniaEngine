################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../lib/cpython/Modules/_blake2/blake2b_impl.c \
../lib/cpython/Modules/_blake2/blake2module.c \
../lib/cpython/Modules/_blake2/blake2s_impl.c 

OBJS += \
./lib/cpython/Modules/_blake2/blake2b_impl.o \
./lib/cpython/Modules/_blake2/blake2module.o \
./lib/cpython/Modules/_blake2/blake2s_impl.o 

C_DEPS += \
./lib/cpython/Modules/_blake2/blake2b_impl.d \
./lib/cpython/Modules/_blake2/blake2module.d \
./lib/cpython/Modules/_blake2/blake2s_impl.d 


# Each subdirectory must supply rules for building sources it contributes
lib/cpython/Modules/_blake2/%.o: ../lib/cpython/Modules/_blake2/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


