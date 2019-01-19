################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../lib/zlib/contrib/minizip/ioapi.c \
../lib/zlib/contrib/minizip/iowin32.c \
../lib/zlib/contrib/minizip/miniunz.c \
../lib/zlib/contrib/minizip/minizip.c \
../lib/zlib/contrib/minizip/mztools.c \
../lib/zlib/contrib/minizip/unzip.c \
../lib/zlib/contrib/minizip/zip.c 

OBJS += \
./lib/zlib/contrib/minizip/ioapi.o \
./lib/zlib/contrib/minizip/iowin32.o \
./lib/zlib/contrib/minizip/miniunz.o \
./lib/zlib/contrib/minizip/minizip.o \
./lib/zlib/contrib/minizip/mztools.o \
./lib/zlib/contrib/minizip/unzip.o \
./lib/zlib/contrib/minizip/zip.o 

C_DEPS += \
./lib/zlib/contrib/minizip/ioapi.d \
./lib/zlib/contrib/minizip/iowin32.d \
./lib/zlib/contrib/minizip/miniunz.d \
./lib/zlib/contrib/minizip/minizip.d \
./lib/zlib/contrib/minizip/mztools.d \
./lib/zlib/contrib/minizip/unzip.d \
./lib/zlib/contrib/minizip/zip.d 


# Each subdirectory must supply rules for building sources it contributes
lib/zlib/contrib/minizip/%.o: ../lib/zlib/contrib/minizip/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


