################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../lib/openal-soft/Alc/mixer/hrtf_inc.cpp \
../lib/openal-soft/Alc/mixer/mixer_c.cpp \
../lib/openal-soft/Alc/mixer/mixer_neon.cpp \
../lib/openal-soft/Alc/mixer/mixer_sse.cpp \
../lib/openal-soft/Alc/mixer/mixer_sse2.cpp \
../lib/openal-soft/Alc/mixer/mixer_sse3.cpp \
../lib/openal-soft/Alc/mixer/mixer_sse41.cpp 

OBJS += \
./lib/openal-soft/Alc/mixer/hrtf_inc.o \
./lib/openal-soft/Alc/mixer/mixer_c.o \
./lib/openal-soft/Alc/mixer/mixer_neon.o \
./lib/openal-soft/Alc/mixer/mixer_sse.o \
./lib/openal-soft/Alc/mixer/mixer_sse2.o \
./lib/openal-soft/Alc/mixer/mixer_sse3.o \
./lib/openal-soft/Alc/mixer/mixer_sse41.o 

CPP_DEPS += \
./lib/openal-soft/Alc/mixer/hrtf_inc.d \
./lib/openal-soft/Alc/mixer/mixer_c.d \
./lib/openal-soft/Alc/mixer/mixer_neon.d \
./lib/openal-soft/Alc/mixer/mixer_sse.d \
./lib/openal-soft/Alc/mixer/mixer_sse2.d \
./lib/openal-soft/Alc/mixer/mixer_sse3.d \
./lib/openal-soft/Alc/mixer/mixer_sse41.d 


# Each subdirectory must supply rules for building sources it contributes
lib/openal-soft/Alc/mixer/%.o: ../lib/openal-soft/Alc/mixer/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -I/media/NBackups/Dev/Cpp/EterniaLib/include -I/media/NBackups/Dev/Cpp/EterniaGameLogic/include -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


