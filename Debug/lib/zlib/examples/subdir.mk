################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../lib/zlib/examples/enough.c \
../lib/zlib/examples/fitblk.c \
../lib/zlib/examples/gun.c \
../lib/zlib/examples/gzappend.c \
../lib/zlib/examples/gzjoin.c \
../lib/zlib/examples/gzlog.c \
../lib/zlib/examples/zpipe.c \
../lib/zlib/examples/zran.c 

OBJS += \
./lib/zlib/examples/enough.o \
./lib/zlib/examples/fitblk.o \
./lib/zlib/examples/gun.o \
./lib/zlib/examples/gzappend.o \
./lib/zlib/examples/gzjoin.o \
./lib/zlib/examples/gzlog.o \
./lib/zlib/examples/zpipe.o \
./lib/zlib/examples/zran.o 

C_DEPS += \
./lib/zlib/examples/enough.d \
./lib/zlib/examples/fitblk.d \
./lib/zlib/examples/gun.d \
./lib/zlib/examples/gzappend.d \
./lib/zlib/examples/gzjoin.d \
./lib/zlib/examples/gzlog.d \
./lib/zlib/examples/zpipe.d \
./lib/zlib/examples/zran.d 


# Each subdirectory must supply rules for building sources it contributes
lib/zlib/examples/%.o: ../lib/zlib/examples/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


