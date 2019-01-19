################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../lib/openal-soft/Alc/effects/autowah.cpp \
../lib/openal-soft/Alc/effects/chorus.cpp \
../lib/openal-soft/Alc/effects/compressor.cpp \
../lib/openal-soft/Alc/effects/dedicated.cpp \
../lib/openal-soft/Alc/effects/distortion.cpp \
../lib/openal-soft/Alc/effects/echo.cpp \
../lib/openal-soft/Alc/effects/equalizer.cpp \
../lib/openal-soft/Alc/effects/fshifter.cpp \
../lib/openal-soft/Alc/effects/modulator.cpp \
../lib/openal-soft/Alc/effects/null.cpp \
../lib/openal-soft/Alc/effects/pshifter.cpp \
../lib/openal-soft/Alc/effects/reverb.cpp 

OBJS += \
./lib/openal-soft/Alc/effects/autowah.o \
./lib/openal-soft/Alc/effects/chorus.o \
./lib/openal-soft/Alc/effects/compressor.o \
./lib/openal-soft/Alc/effects/dedicated.o \
./lib/openal-soft/Alc/effects/distortion.o \
./lib/openal-soft/Alc/effects/echo.o \
./lib/openal-soft/Alc/effects/equalizer.o \
./lib/openal-soft/Alc/effects/fshifter.o \
./lib/openal-soft/Alc/effects/modulator.o \
./lib/openal-soft/Alc/effects/null.o \
./lib/openal-soft/Alc/effects/pshifter.o \
./lib/openal-soft/Alc/effects/reverb.o 

CPP_DEPS += \
./lib/openal-soft/Alc/effects/autowah.d \
./lib/openal-soft/Alc/effects/chorus.d \
./lib/openal-soft/Alc/effects/compressor.d \
./lib/openal-soft/Alc/effects/dedicated.d \
./lib/openal-soft/Alc/effects/distortion.d \
./lib/openal-soft/Alc/effects/echo.d \
./lib/openal-soft/Alc/effects/equalizer.d \
./lib/openal-soft/Alc/effects/fshifter.d \
./lib/openal-soft/Alc/effects/modulator.d \
./lib/openal-soft/Alc/effects/null.d \
./lib/openal-soft/Alc/effects/pshifter.d \
./lib/openal-soft/Alc/effects/reverb.d 


# Each subdirectory must supply rules for building sources it contributes
lib/openal-soft/Alc/effects/%.o: ../lib/openal-soft/Alc/effects/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -I/media/NBackups/Dev/Cpp/EterniaLib/include -I/media/NBackups/Dev/Cpp/EterniaGameLogic/include -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


