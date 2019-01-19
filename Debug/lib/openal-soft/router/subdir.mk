################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../lib/openal-soft/router/al.cpp \
../lib/openal-soft/router/alc.cpp \
../lib/openal-soft/router/router.cpp 

OBJS += \
./lib/openal-soft/router/al.o \
./lib/openal-soft/router/alc.o \
./lib/openal-soft/router/router.o 

CPP_DEPS += \
./lib/openal-soft/router/al.d \
./lib/openal-soft/router/alc.d \
./lib/openal-soft/router/router.d 


# Each subdirectory must supply rules for building sources it contributes
lib/openal-soft/router/%.o: ../lib/openal-soft/router/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -I/media/NBackups/Dev/Cpp/EterniaLib/include -I/media/NBackups/Dev/Cpp/EterniaGameLogic/include -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


