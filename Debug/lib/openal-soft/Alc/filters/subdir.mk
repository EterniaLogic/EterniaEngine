################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../lib/openal-soft/Alc/filters/biquad.cpp \
../lib/openal-soft/Alc/filters/nfc.cpp \
../lib/openal-soft/Alc/filters/splitter.cpp 

OBJS += \
./lib/openal-soft/Alc/filters/biquad.o \
./lib/openal-soft/Alc/filters/nfc.o \
./lib/openal-soft/Alc/filters/splitter.o 

CPP_DEPS += \
./lib/openal-soft/Alc/filters/biquad.d \
./lib/openal-soft/Alc/filters/nfc.d \
./lib/openal-soft/Alc/filters/splitter.d 


# Each subdirectory must supply rules for building sources it contributes
lib/openal-soft/Alc/filters/%.o: ../lib/openal-soft/Alc/filters/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -I/media/NBackups/Dev/Cpp/EterniaLib/include -I/media/NBackups/Dev/Cpp/EterniaGameLogic/include -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


