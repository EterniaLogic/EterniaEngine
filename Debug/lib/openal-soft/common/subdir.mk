################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../lib/openal-soft/common/alcomplex.cpp \
../lib/openal-soft/common/almalloc.cpp \
../lib/openal-soft/common/threads.cpp 

OBJS += \
./lib/openal-soft/common/alcomplex.o \
./lib/openal-soft/common/almalloc.o \
./lib/openal-soft/common/threads.o 

CPP_DEPS += \
./lib/openal-soft/common/alcomplex.d \
./lib/openal-soft/common/almalloc.d \
./lib/openal-soft/common/threads.d 


# Each subdirectory must supply rules for building sources it contributes
lib/openal-soft/common/%.o: ../lib/openal-soft/common/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -I/media/NBackups/Dev/Cpp/EterniaLib/include -I/media/NBackups/Dev/Cpp/EterniaGameLogic/include -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


