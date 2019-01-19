################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/Sound/SoundBufferData.cpp \
../src/Sound/SoundListener.cpp \
../src/Sound/SoundManager.cpp \
../src/Sound/SoundMic.cpp \
../src/Sound/SoundSource.cpp 

OBJS += \
./src/Sound/SoundBufferData.o \
./src/Sound/SoundListener.o \
./src/Sound/SoundManager.o \
./src/Sound/SoundMic.o \
./src/Sound/SoundSource.o 

CPP_DEPS += \
./src/Sound/SoundBufferData.d \
./src/Sound/SoundListener.d \
./src/Sound/SoundManager.d \
./src/Sound/SoundMic.d \
./src/Sound/SoundSource.d 


# Each subdirectory must supply rules for building sources it contributes
src/Sound/%.o: ../src/Sound/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -I/media/NBackups/Dev/Cpp/EterniaLib/include -I/media/NBackups/Dev/Cpp/EterniaGameLogic/include -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


