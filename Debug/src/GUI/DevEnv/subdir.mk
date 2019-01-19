################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/GUI/DevEnv/DevEnv_Events.cpp \
../src/GUI/DevEnv/DevEnv_Init.cpp 

OBJS += \
./src/GUI/DevEnv/DevEnv_Events.o \
./src/GUI/DevEnv/DevEnv_Init.o 

CPP_DEPS += \
./src/GUI/DevEnv/DevEnv_Events.d \
./src/GUI/DevEnv/DevEnv_Init.d 


# Each subdirectory must supply rules for building sources it contributes
src/GUI/DevEnv/%.o: ../src/GUI/DevEnv/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -I/media/NBackups/Dev/Cpp/EterniaLib/include -I/media/NBackups/Dev/Cpp/EterniaGameLogic/include -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


