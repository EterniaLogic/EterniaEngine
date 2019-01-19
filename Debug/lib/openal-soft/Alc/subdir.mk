################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../lib/openal-soft/Alc/alc.cpp \
../lib/openal-soft/Alc/alconfig.cpp \
../lib/openal-soft/Alc/alu.cpp \
../lib/openal-soft/Alc/ambdec.cpp \
../lib/openal-soft/Alc/bformatdec.cpp \
../lib/openal-soft/Alc/bs2b.cpp \
../lib/openal-soft/Alc/converter.cpp \
../lib/openal-soft/Alc/helpers.cpp \
../lib/openal-soft/Alc/hrtf.cpp \
../lib/openal-soft/Alc/mastering.cpp \
../lib/openal-soft/Alc/mixvoice.cpp \
../lib/openal-soft/Alc/panning.cpp \
../lib/openal-soft/Alc/ringbuffer.cpp \
../lib/openal-soft/Alc/uhjfilter.cpp 

OBJS += \
./lib/openal-soft/Alc/alc.o \
./lib/openal-soft/Alc/alconfig.o \
./lib/openal-soft/Alc/alu.o \
./lib/openal-soft/Alc/ambdec.o \
./lib/openal-soft/Alc/bformatdec.o \
./lib/openal-soft/Alc/bs2b.o \
./lib/openal-soft/Alc/converter.o \
./lib/openal-soft/Alc/helpers.o \
./lib/openal-soft/Alc/hrtf.o \
./lib/openal-soft/Alc/mastering.o \
./lib/openal-soft/Alc/mixvoice.o \
./lib/openal-soft/Alc/panning.o \
./lib/openal-soft/Alc/ringbuffer.o \
./lib/openal-soft/Alc/uhjfilter.o 

CPP_DEPS += \
./lib/openal-soft/Alc/alc.d \
./lib/openal-soft/Alc/alconfig.d \
./lib/openal-soft/Alc/alu.d \
./lib/openal-soft/Alc/ambdec.d \
./lib/openal-soft/Alc/bformatdec.d \
./lib/openal-soft/Alc/bs2b.d \
./lib/openal-soft/Alc/converter.d \
./lib/openal-soft/Alc/helpers.d \
./lib/openal-soft/Alc/hrtf.d \
./lib/openal-soft/Alc/mastering.d \
./lib/openal-soft/Alc/mixvoice.d \
./lib/openal-soft/Alc/panning.d \
./lib/openal-soft/Alc/ringbuffer.d \
./lib/openal-soft/Alc/uhjfilter.d 


# Each subdirectory must supply rules for building sources it contributes
lib/openal-soft/Alc/%.o: ../lib/openal-soft/Alc/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -I/media/NBackups/Dev/Cpp/EterniaLib/include -I/media/NBackups/Dev/Cpp/EterniaGameLogic/include -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


