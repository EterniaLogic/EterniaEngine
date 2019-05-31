################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../lib/zlib/test/example.c \
../lib/zlib/test/infcover.c \
../lib/zlib/test/minigzip.c 

OBJS += \
./lib/zlib/test/example.o \
./lib/zlib/test/infcover.o \
./lib/zlib/test/minigzip.o 

C_DEPS += \
./lib/zlib/test/example.d \
./lib/zlib/test/infcover.d \
./lib/zlib/test/minigzip.d 


# Each subdirectory must supply rules for building sources it contributes
lib/zlib/test/%.o: ../lib/zlib/test/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


