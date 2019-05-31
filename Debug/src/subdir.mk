################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/App_GlutInit.cpp \
../src/App_Init.cpp \
../src/App_InitErrorSignals.cpp \
../src/App_Test.cpp \
../src/App_ThreadAI.cpp \
../src/App_ThreadAnimations.cpp \
../src/App_ThreadBackendRender.cpp \
../src/App_ThreadCompression.cpp \
../src/App_ThreadEntity.cpp \
../src/App_ThreadEvents.cpp \
../src/App_ThreadFps.cpp \
../src/App_ThreadLoad.cpp \
../src/App_ThreadNetworking.cpp \
../src/App_ThreadPhysics.cpp \
../src/App_ThreadRender.cpp \
../src/App_ThreadScripts.cpp \
../src/App_ThreadSound.cpp \
../src/App_ThreadUpdate.cpp \
../src/main.cpp 

OBJS += \
./src/App_GlutInit.o \
./src/App_Init.o \
./src/App_InitErrorSignals.o \
./src/App_Test.o \
./src/App_ThreadAI.o \
./src/App_ThreadAnimations.o \
./src/App_ThreadBackendRender.o \
./src/App_ThreadCompression.o \
./src/App_ThreadEntity.o \
./src/App_ThreadEvents.o \
./src/App_ThreadFps.o \
./src/App_ThreadLoad.o \
./src/App_ThreadNetworking.o \
./src/App_ThreadPhysics.o \
./src/App_ThreadRender.o \
./src/App_ThreadScripts.o \
./src/App_ThreadSound.o \
./src/App_ThreadUpdate.o \
./src/main.o 

CPP_DEPS += \
./src/App_GlutInit.d \
./src/App_Init.d \
./src/App_InitErrorSignals.d \
./src/App_Test.d \
./src/App_ThreadAI.d \
./src/App_ThreadAnimations.d \
./src/App_ThreadBackendRender.d \
./src/App_ThreadCompression.d \
./src/App_ThreadEntity.d \
./src/App_ThreadEvents.d \
./src/App_ThreadFps.d \
./src/App_ThreadLoad.d \
./src/App_ThreadNetworking.d \
./src/App_ThreadPhysics.d \
./src/App_ThreadRender.d \
./src/App_ThreadScripts.d \
./src/App_ThreadSound.d \
./src/App_ThreadUpdate.d \
./src/main.d 


# Each subdirectory must supply rules for building sources it contributes
src/%.o: ../src/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -I/media/NBackups/Dev/Cpp/EterniaLib/include -I/media/NBackups/Dev/Cpp/EterniaGameLogic/include -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


