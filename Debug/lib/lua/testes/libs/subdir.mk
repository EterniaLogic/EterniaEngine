################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../lib/lua/testes/libs/lib1.c \
../lib/lua/testes/libs/lib11.c \
../lib/lua/testes/libs/lib2.c \
../lib/lua/testes/libs/lib21.c 

OBJS += \
./lib/lua/testes/libs/lib1.o \
./lib/lua/testes/libs/lib11.o \
./lib/lua/testes/libs/lib2.o \
./lib/lua/testes/libs/lib21.o 

C_DEPS += \
./lib/lua/testes/libs/lib1.d \
./lib/lua/testes/libs/lib11.d \
./lib/lua/testes/libs/lib2.d \
./lib/lua/testes/libs/lib21.d 


# Each subdirectory must supply rules for building sources it contributes
lib/lua/testes/libs/%.o: ../lib/lua/testes/libs/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


