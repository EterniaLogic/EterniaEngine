################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/Scripts/Java.cpp \
../src/Scripts/LanguageBase.cpp \
../src/Scripts/Lua.cpp \
../src/Scripts/PythonS.cpp \
../src/Scripts/ScriptCore.cpp 

OBJS += \
./src/Scripts/Java.o \
./src/Scripts/LanguageBase.o \
./src/Scripts/Lua.o \
./src/Scripts/PythonS.o \
./src/Scripts/ScriptCore.o 

CPP_DEPS += \
./src/Scripts/Java.d \
./src/Scripts/LanguageBase.d \
./src/Scripts/Lua.d \
./src/Scripts/PythonS.d \
./src/Scripts/ScriptCore.d 


# Each subdirectory must supply rules for building sources it contributes
src/Scripts/%.o: ../src/Scripts/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -I/media/NBackups/Dev/Cpp/EterniaLib/include -I/media/NBackups/Dev/Cpp/EterniaGameLogic/include -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


