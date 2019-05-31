################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
ASM_SRCS += \
../lib/cpython/Modules/_decimal/libmpdec/vcdiv64.asm 

C_SRCS += \
../lib/cpython/Modules/_decimal/libmpdec/basearith.c \
../lib/cpython/Modules/_decimal/libmpdec/constants.c \
../lib/cpython/Modules/_decimal/libmpdec/context.c \
../lib/cpython/Modules/_decimal/libmpdec/convolute.c \
../lib/cpython/Modules/_decimal/libmpdec/crt.c \
../lib/cpython/Modules/_decimal/libmpdec/difradix2.c \
../lib/cpython/Modules/_decimal/libmpdec/fnt.c \
../lib/cpython/Modules/_decimal/libmpdec/fourstep.c \
../lib/cpython/Modules/_decimal/libmpdec/io.c \
../lib/cpython/Modules/_decimal/libmpdec/memory.c \
../lib/cpython/Modules/_decimal/libmpdec/mpdecimal.c \
../lib/cpython/Modules/_decimal/libmpdec/numbertheory.c \
../lib/cpython/Modules/_decimal/libmpdec/sixstep.c \
../lib/cpython/Modules/_decimal/libmpdec/transpose.c 

OBJS += \
./lib/cpython/Modules/_decimal/libmpdec/basearith.o \
./lib/cpython/Modules/_decimal/libmpdec/constants.o \
./lib/cpython/Modules/_decimal/libmpdec/context.o \
./lib/cpython/Modules/_decimal/libmpdec/convolute.o \
./lib/cpython/Modules/_decimal/libmpdec/crt.o \
./lib/cpython/Modules/_decimal/libmpdec/difradix2.o \
./lib/cpython/Modules/_decimal/libmpdec/fnt.o \
./lib/cpython/Modules/_decimal/libmpdec/fourstep.o \
./lib/cpython/Modules/_decimal/libmpdec/io.o \
./lib/cpython/Modules/_decimal/libmpdec/memory.o \
./lib/cpython/Modules/_decimal/libmpdec/mpdecimal.o \
./lib/cpython/Modules/_decimal/libmpdec/numbertheory.o \
./lib/cpython/Modules/_decimal/libmpdec/sixstep.o \
./lib/cpython/Modules/_decimal/libmpdec/transpose.o \
./lib/cpython/Modules/_decimal/libmpdec/vcdiv64.o 

C_DEPS += \
./lib/cpython/Modules/_decimal/libmpdec/basearith.d \
./lib/cpython/Modules/_decimal/libmpdec/constants.d \
./lib/cpython/Modules/_decimal/libmpdec/context.d \
./lib/cpython/Modules/_decimal/libmpdec/convolute.d \
./lib/cpython/Modules/_decimal/libmpdec/crt.d \
./lib/cpython/Modules/_decimal/libmpdec/difradix2.d \
./lib/cpython/Modules/_decimal/libmpdec/fnt.d \
./lib/cpython/Modules/_decimal/libmpdec/fourstep.d \
./lib/cpython/Modules/_decimal/libmpdec/io.d \
./lib/cpython/Modules/_decimal/libmpdec/memory.d \
./lib/cpython/Modules/_decimal/libmpdec/mpdecimal.d \
./lib/cpython/Modules/_decimal/libmpdec/numbertheory.d \
./lib/cpython/Modules/_decimal/libmpdec/sixstep.d \
./lib/cpython/Modules/_decimal/libmpdec/transpose.d 


# Each subdirectory must supply rules for building sources it contributes
lib/cpython/Modules/_decimal/libmpdec/%.o: ../lib/cpython/Modules/_decimal/libmpdec/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

lib/cpython/Modules/_decimal/libmpdec/%.o: ../lib/cpython/Modules/_decimal/libmpdec/%.asm
	@echo 'Building file: $<'
	@echo 'Invoking: GCC Assembler'
	as  -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


