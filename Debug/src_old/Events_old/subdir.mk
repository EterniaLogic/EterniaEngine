################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src_old/Events_old/KeyHandleEvent.cpp \
../src_old/Events_old/MouseHandleEvent.cpp 

OBJS += \
./src_old/Events_old/KeyHandleEvent.o \
./src_old/Events_old/MouseHandleEvent.o 

CPP_DEPS += \
./src_old/Events_old/KeyHandleEvent.d \
./src_old/Events_old/MouseHandleEvent.d 


# Each subdirectory must supply rules for building sources it contributes
src_old/Events_old/%.o: ../src_old/Events_old/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -I/media/NBackups/Dev/Cpp/EterniaLib/include -I/media/NBackups/Dev/Cpp/EterniaGameLogic/include -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


