################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/Scripts/Python/pModel.cpp 

OBJS += \
./src/Scripts/Python/pModel.o 

CPP_DEPS += \
./src/Scripts/Python/pModel.d 


# Each subdirectory must supply rules for building sources it contributes
src/Scripts/Python/%.o: ../src/Scripts/Python/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -I/media/NBackups/Dev/Cpp/EterniaLib/include -I/media/NBackups/Dev/Cpp/EterniaGameLogic/include -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


