################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../lib/openal-soft/Alc/backends/alsa.cpp \
../lib/openal-soft/Alc/backends/base.cpp \
../lib/openal-soft/Alc/backends/coreaudio.cpp \
../lib/openal-soft/Alc/backends/dsound.cpp \
../lib/openal-soft/Alc/backends/jack.cpp \
../lib/openal-soft/Alc/backends/loopback.cpp \
../lib/openal-soft/Alc/backends/null.cpp \
../lib/openal-soft/Alc/backends/opensl.cpp \
../lib/openal-soft/Alc/backends/oss.cpp \
../lib/openal-soft/Alc/backends/portaudio.cpp \
../lib/openal-soft/Alc/backends/pulseaudio.cpp \
../lib/openal-soft/Alc/backends/qsa.cpp \
../lib/openal-soft/Alc/backends/sdl2.cpp \
../lib/openal-soft/Alc/backends/sndio.cpp \
../lib/openal-soft/Alc/backends/solaris.cpp \
../lib/openal-soft/Alc/backends/wasapi.cpp \
../lib/openal-soft/Alc/backends/wave.cpp \
../lib/openal-soft/Alc/backends/winmm.cpp 

OBJS += \
./lib/openal-soft/Alc/backends/alsa.o \
./lib/openal-soft/Alc/backends/base.o \
./lib/openal-soft/Alc/backends/coreaudio.o \
./lib/openal-soft/Alc/backends/dsound.o \
./lib/openal-soft/Alc/backends/jack.o \
./lib/openal-soft/Alc/backends/loopback.o \
./lib/openal-soft/Alc/backends/null.o \
./lib/openal-soft/Alc/backends/opensl.o \
./lib/openal-soft/Alc/backends/oss.o \
./lib/openal-soft/Alc/backends/portaudio.o \
./lib/openal-soft/Alc/backends/pulseaudio.o \
./lib/openal-soft/Alc/backends/qsa.o \
./lib/openal-soft/Alc/backends/sdl2.o \
./lib/openal-soft/Alc/backends/sndio.o \
./lib/openal-soft/Alc/backends/solaris.o \
./lib/openal-soft/Alc/backends/wasapi.o \
./lib/openal-soft/Alc/backends/wave.o \
./lib/openal-soft/Alc/backends/winmm.o 

CPP_DEPS += \
./lib/openal-soft/Alc/backends/alsa.d \
./lib/openal-soft/Alc/backends/base.d \
./lib/openal-soft/Alc/backends/coreaudio.d \
./lib/openal-soft/Alc/backends/dsound.d \
./lib/openal-soft/Alc/backends/jack.d \
./lib/openal-soft/Alc/backends/loopback.d \
./lib/openal-soft/Alc/backends/null.d \
./lib/openal-soft/Alc/backends/opensl.d \
./lib/openal-soft/Alc/backends/oss.d \
./lib/openal-soft/Alc/backends/portaudio.d \
./lib/openal-soft/Alc/backends/pulseaudio.d \
./lib/openal-soft/Alc/backends/qsa.d \
./lib/openal-soft/Alc/backends/sdl2.d \
./lib/openal-soft/Alc/backends/sndio.d \
./lib/openal-soft/Alc/backends/solaris.d \
./lib/openal-soft/Alc/backends/wasapi.d \
./lib/openal-soft/Alc/backends/wave.d \
./lib/openal-soft/Alc/backends/winmm.d 


# Each subdirectory must supply rules for building sources it contributes
lib/openal-soft/Alc/backends/%.o: ../lib/openal-soft/Alc/backends/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -I/media/NBackups/Dev/Cpp/EterniaLib/include -I/media/NBackups/Dev/Cpp/EterniaGameLogic/include -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


