################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/Sprite2D/Sprite2D.cpp 

OBJS += \
./src/Sprite2D/Sprite2D.o 

CPP_DEPS += \
./src/Sprite2D/Sprite2D.d 


# Each subdirectory must supply rules for building sources it contributes
src/Sprite2D/%.o: ../src/Sprite2D/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -I/media/NBackups/Dev/Cpp/EterniaLib/include -I/media/NBackups/Dev/Cpp/EterniaGameLogic/include -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


