################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../lib/cpython/Modules/_io/_iomodule.c \
../lib/cpython/Modules/_io/bufferedio.c \
../lib/cpython/Modules/_io/bytesio.c \
../lib/cpython/Modules/_io/fileio.c \
../lib/cpython/Modules/_io/iobase.c \
../lib/cpython/Modules/_io/stringio.c \
../lib/cpython/Modules/_io/textio.c \
../lib/cpython/Modules/_io/winconsoleio.c 

OBJS += \
./lib/cpython/Modules/_io/_iomodule.o \
./lib/cpython/Modules/_io/bufferedio.o \
./lib/cpython/Modules/_io/bytesio.o \
./lib/cpython/Modules/_io/fileio.o \
./lib/cpython/Modules/_io/iobase.o \
./lib/cpython/Modules/_io/stringio.o \
./lib/cpython/Modules/_io/textio.o \
./lib/cpython/Modules/_io/winconsoleio.o 

C_DEPS += \
./lib/cpython/Modules/_io/_iomodule.d \
./lib/cpython/Modules/_io/bufferedio.d \
./lib/cpython/Modules/_io/bytesio.d \
./lib/cpython/Modules/_io/fileio.d \
./lib/cpython/Modules/_io/iobase.d \
./lib/cpython/Modules/_io/stringio.d \
./lib/cpython/Modules/_io/textio.d \
./lib/cpython/Modules/_io/winconsoleio.d 


# Each subdirectory must supply rules for building sources it contributes
lib/cpython/Modules/_io/%.o: ../lib/cpython/Modules/_io/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


