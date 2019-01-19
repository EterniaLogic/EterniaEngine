################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../lib/cpython/Modules/_blake2/impl/blake2b-ref.c \
../lib/cpython/Modules/_blake2/impl/blake2b.c \
../lib/cpython/Modules/_blake2/impl/blake2s-ref.c \
../lib/cpython/Modules/_blake2/impl/blake2s.c 

OBJS += \
./lib/cpython/Modules/_blake2/impl/blake2b-ref.o \
./lib/cpython/Modules/_blake2/impl/blake2b.o \
./lib/cpython/Modules/_blake2/impl/blake2s-ref.o \
./lib/cpython/Modules/_blake2/impl/blake2s.o 

C_DEPS += \
./lib/cpython/Modules/_blake2/impl/blake2b-ref.d \
./lib/cpython/Modules/_blake2/impl/blake2b.d \
./lib/cpython/Modules/_blake2/impl/blake2s-ref.d \
./lib/cpython/Modules/_blake2/impl/blake2s.d 


# Each subdirectory must supply rules for building sources it contributes
lib/cpython/Modules/_blake2/impl/%.o: ../lib/cpython/Modules/_blake2/impl/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


