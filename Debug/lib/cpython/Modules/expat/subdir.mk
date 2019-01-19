################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../lib/cpython/Modules/expat/loadlibrary.c \
../lib/cpython/Modules/expat/xmlparse.c \
../lib/cpython/Modules/expat/xmlrole.c \
../lib/cpython/Modules/expat/xmltok.c \
../lib/cpython/Modules/expat/xmltok_impl.c \
../lib/cpython/Modules/expat/xmltok_ns.c 

OBJS += \
./lib/cpython/Modules/expat/loadlibrary.o \
./lib/cpython/Modules/expat/xmlparse.o \
./lib/cpython/Modules/expat/xmlrole.o \
./lib/cpython/Modules/expat/xmltok.o \
./lib/cpython/Modules/expat/xmltok_impl.o \
./lib/cpython/Modules/expat/xmltok_ns.o 

C_DEPS += \
./lib/cpython/Modules/expat/loadlibrary.d \
./lib/cpython/Modules/expat/xmlparse.d \
./lib/cpython/Modules/expat/xmlrole.d \
./lib/cpython/Modules/expat/xmltok.d \
./lib/cpython/Modules/expat/xmltok_impl.d \
./lib/cpython/Modules/expat/xmltok_ns.d 


# Each subdirectory must supply rules for building sources it contributes
lib/cpython/Modules/expat/%.o: ../lib/cpython/Modules/expat/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


