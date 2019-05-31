################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../lib/cpython/Modules/_sha3/kcp/KeccakHash.c \
../lib/cpython/Modules/_sha3/kcp/KeccakP-1600-inplace32BI.c \
../lib/cpython/Modules/_sha3/kcp/KeccakP-1600-opt64.c \
../lib/cpython/Modules/_sha3/kcp/KeccakSponge.c 

OBJS += \
./lib/cpython/Modules/_sha3/kcp/KeccakHash.o \
./lib/cpython/Modules/_sha3/kcp/KeccakP-1600-inplace32BI.o \
./lib/cpython/Modules/_sha3/kcp/KeccakP-1600-opt64.o \
./lib/cpython/Modules/_sha3/kcp/KeccakSponge.o 

C_DEPS += \
./lib/cpython/Modules/_sha3/kcp/KeccakHash.d \
./lib/cpython/Modules/_sha3/kcp/KeccakP-1600-inplace32BI.d \
./lib/cpython/Modules/_sha3/kcp/KeccakP-1600-opt64.d \
./lib/cpython/Modules/_sha3/kcp/KeccakSponge.d 


# Each subdirectory must supply rules for building sources it contributes
lib/cpython/Modules/_sha3/kcp/%.o: ../lib/cpython/Modules/_sha3/kcp/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


