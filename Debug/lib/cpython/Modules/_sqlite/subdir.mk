################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../lib/cpython/Modules/_sqlite/cache.c \
../lib/cpython/Modules/_sqlite/connection.c \
../lib/cpython/Modules/_sqlite/cursor.c \
../lib/cpython/Modules/_sqlite/microprotocols.c \
../lib/cpython/Modules/_sqlite/module.c \
../lib/cpython/Modules/_sqlite/prepare_protocol.c \
../lib/cpython/Modules/_sqlite/row.c \
../lib/cpython/Modules/_sqlite/statement.c \
../lib/cpython/Modules/_sqlite/util.c 

OBJS += \
./lib/cpython/Modules/_sqlite/cache.o \
./lib/cpython/Modules/_sqlite/connection.o \
./lib/cpython/Modules/_sqlite/cursor.o \
./lib/cpython/Modules/_sqlite/microprotocols.o \
./lib/cpython/Modules/_sqlite/module.o \
./lib/cpython/Modules/_sqlite/prepare_protocol.o \
./lib/cpython/Modules/_sqlite/row.o \
./lib/cpython/Modules/_sqlite/statement.o \
./lib/cpython/Modules/_sqlite/util.o 

C_DEPS += \
./lib/cpython/Modules/_sqlite/cache.d \
./lib/cpython/Modules/_sqlite/connection.d \
./lib/cpython/Modules/_sqlite/cursor.d \
./lib/cpython/Modules/_sqlite/microprotocols.d \
./lib/cpython/Modules/_sqlite/module.d \
./lib/cpython/Modules/_sqlite/prepare_protocol.d \
./lib/cpython/Modules/_sqlite/row.d \
./lib/cpython/Modules/_sqlite/statement.d \
./lib/cpython/Modules/_sqlite/util.d 


# Each subdirectory must supply rules for building sources it contributes
lib/cpython/Modules/_sqlite/%.o: ../lib/cpython/Modules/_sqlite/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


