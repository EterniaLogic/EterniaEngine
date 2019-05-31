################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/Helper/Camera.cpp \
../src/Helper/Compressable.cpp \
../src/Helper/Loader.cpp \
../src/Helper/log.cpp 

OBJS += \
./src/Helper/Camera.o \
./src/Helper/Compressable.o \
./src/Helper/Loader.o \
./src/Helper/log.o 

CPP_DEPS += \
./src/Helper/Camera.d \
./src/Helper/Compressable.d \
./src/Helper/Loader.d \
./src/Helper/log.d 


# Each subdirectory must supply rules for building sources it contributes
src/Helper/%.o: ../src/Helper/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -I/media/NBackups/Dev/Cpp/EterniaLib/include -I/media/NBackups/Dev/Cpp/EterniaGameLogic/include -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


