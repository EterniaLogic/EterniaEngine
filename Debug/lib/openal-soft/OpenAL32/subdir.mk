################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../lib/openal-soft/OpenAL32/alAuxEffectSlot.cpp \
../lib/openal-soft/OpenAL32/alBuffer.cpp \
../lib/openal-soft/OpenAL32/alEffect.cpp \
../lib/openal-soft/OpenAL32/alError.cpp \
../lib/openal-soft/OpenAL32/alExtension.cpp \
../lib/openal-soft/OpenAL32/alFilter.cpp \
../lib/openal-soft/OpenAL32/alListener.cpp \
../lib/openal-soft/OpenAL32/alSource.cpp \
../lib/openal-soft/OpenAL32/alState.cpp \
../lib/openal-soft/OpenAL32/event.cpp \
../lib/openal-soft/OpenAL32/sample_cvt.cpp 

OBJS += \
./lib/openal-soft/OpenAL32/alAuxEffectSlot.o \
./lib/openal-soft/OpenAL32/alBuffer.o \
./lib/openal-soft/OpenAL32/alEffect.o \
./lib/openal-soft/OpenAL32/alError.o \
./lib/openal-soft/OpenAL32/alExtension.o \
./lib/openal-soft/OpenAL32/alFilter.o \
./lib/openal-soft/OpenAL32/alListener.o \
./lib/openal-soft/OpenAL32/alSource.o \
./lib/openal-soft/OpenAL32/alState.o \
./lib/openal-soft/OpenAL32/event.o \
./lib/openal-soft/OpenAL32/sample_cvt.o 

CPP_DEPS += \
./lib/openal-soft/OpenAL32/alAuxEffectSlot.d \
./lib/openal-soft/OpenAL32/alBuffer.d \
./lib/openal-soft/OpenAL32/alEffect.d \
./lib/openal-soft/OpenAL32/alError.d \
./lib/openal-soft/OpenAL32/alExtension.d \
./lib/openal-soft/OpenAL32/alFilter.d \
./lib/openal-soft/OpenAL32/alListener.d \
./lib/openal-soft/OpenAL32/alSource.d \
./lib/openal-soft/OpenAL32/alState.d \
./lib/openal-soft/OpenAL32/event.d \
./lib/openal-soft/OpenAL32/sample_cvt.d 


# Each subdirectory must supply rules for building sources it contributes
lib/openal-soft/OpenAL32/%.o: ../lib/openal-soft/OpenAL32/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -I/media/NBackups/Dev/Cpp/EterniaLib/include -I/media/NBackups/Dev/Cpp/EterniaGameLogic/include -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


