################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/AI/AICore.cpp \
../src/AI/AICore_Personality.cpp 

OBJS += \
./src/AI/AICore.o \
./src/AI/AICore_Personality.o 

CPP_DEPS += \
./src/AI/AICore.d \
./src/AI/AICore_Personality.d 


# Each subdirectory must supply rules for building sources it contributes
src/AI/%.o: ../src/AI/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -I/media/NBackups/Dev/Cpp/EterniaLib/include -I/media/NBackups/Dev/Cpp/EterniaGameLogic/include -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


