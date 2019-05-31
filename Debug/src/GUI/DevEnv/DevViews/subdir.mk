################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/GUI/DevEnv/DevViews/DevModelEditor.cpp 

OBJS += \
./src/GUI/DevEnv/DevViews/DevModelEditor.o 

CPP_DEPS += \
./src/GUI/DevEnv/DevViews/DevModelEditor.d 


# Each subdirectory must supply rules for building sources it contributes
src/GUI/DevEnv/DevViews/%.o: ../src/GUI/DevEnv/DevViews/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -I/media/NBackups/Dev/Cpp/EterniaLib/include -I/media/NBackups/Dev/Cpp/EterniaGameLogic/include -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


