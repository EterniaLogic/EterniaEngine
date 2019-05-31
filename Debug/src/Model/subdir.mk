################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/Model/Model.cpp \
../src/Model/ModelFragment.cpp \
../src/Model/ModelMaterial.cpp \
../src/Model/Model_Animation.cpp \
../src/Model/Model_FBX.cpp \
../src/Model/Model_loadFromObj.cpp \
../src/Model/glsl.cpp 

OBJS += \
./src/Model/Model.o \
./src/Model/ModelFragment.o \
./src/Model/ModelMaterial.o \
./src/Model/Model_Animation.o \
./src/Model/Model_FBX.o \
./src/Model/Model_loadFromObj.o \
./src/Model/glsl.o 

CPP_DEPS += \
./src/Model/Model.d \
./src/Model/ModelFragment.d \
./src/Model/ModelMaterial.d \
./src/Model/Model_Animation.d \
./src/Model/Model_FBX.d \
./src/Model/Model_loadFromObj.d \
./src/Model/glsl.d 


# Each subdirectory must supply rules for building sources it contributes
src/Model/%.o: ../src/Model/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -I/media/NBackups/Dev/Cpp/EterniaLib/include -I/media/NBackups/Dev/Cpp/EterniaGameLogic/include -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


