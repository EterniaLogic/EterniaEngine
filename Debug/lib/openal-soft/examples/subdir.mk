################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../lib/openal-soft/examples/alffplay.cpp 

C_SRCS += \
../lib/openal-soft/examples/alhrtf.c \
../lib/openal-soft/examples/allatency.c \
../lib/openal-soft/examples/alloopback.c \
../lib/openal-soft/examples/almultireverb.c \
../lib/openal-soft/examples/alplay.c \
../lib/openal-soft/examples/alrecord.c \
../lib/openal-soft/examples/alreverb.c \
../lib/openal-soft/examples/alstream.c \
../lib/openal-soft/examples/altonegen.c 

OBJS += \
./lib/openal-soft/examples/alffplay.o \
./lib/openal-soft/examples/alhrtf.o \
./lib/openal-soft/examples/allatency.o \
./lib/openal-soft/examples/alloopback.o \
./lib/openal-soft/examples/almultireverb.o \
./lib/openal-soft/examples/alplay.o \
./lib/openal-soft/examples/alrecord.o \
./lib/openal-soft/examples/alreverb.o \
./lib/openal-soft/examples/alstream.o \
./lib/openal-soft/examples/altonegen.o 

CPP_DEPS += \
./lib/openal-soft/examples/alffplay.d 

C_DEPS += \
./lib/openal-soft/examples/alhrtf.d \
./lib/openal-soft/examples/allatency.d \
./lib/openal-soft/examples/alloopback.d \
./lib/openal-soft/examples/almultireverb.d \
./lib/openal-soft/examples/alplay.d \
./lib/openal-soft/examples/alrecord.d \
./lib/openal-soft/examples/alreverb.d \
./lib/openal-soft/examples/alstream.d \
./lib/openal-soft/examples/altonegen.d 


# Each subdirectory must supply rules for building sources it contributes
lib/openal-soft/examples/%.o: ../lib/openal-soft/examples/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -I/media/NBackups/Dev/Cpp/EterniaLib/include -I/media/NBackups/Dev/Cpp/EterniaGameLogic/include -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

lib/openal-soft/examples/%.o: ../lib/openal-soft/examples/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


