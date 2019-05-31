################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src_old/Event_old/Event.cpp \
../src_old/Event_old/EventRequirement.cpp \
../src_old/Event_old/EventScheduler.cpp \
../src_old/Event_old/EventTrigger.cpp 

OBJS += \
./src_old/Event_old/Event.o \
./src_old/Event_old/EventRequirement.o \
./src_old/Event_old/EventScheduler.o \
./src_old/Event_old/EventTrigger.o 

CPP_DEPS += \
./src_old/Event_old/Event.d \
./src_old/Event_old/EventRequirement.d \
./src_old/Event_old/EventScheduler.d \
./src_old/Event_old/EventTrigger.d 


# Each subdirectory must supply rules for building sources it contributes
src_old/Event_old/%.o: ../src_old/Event_old/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -I/media/NBackups/Dev/Cpp/EterniaLib/include -I/media/NBackups/Dev/Cpp/EterniaGameLogic/include -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


