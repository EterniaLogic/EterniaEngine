################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../lib/openal-soft/utils/makehrtf.cpp 

C_SRCS += \
../lib/openal-soft/utils/getopt.c \
../lib/openal-soft/utils/openal-info.c 

OBJS += \
./lib/openal-soft/utils/getopt.o \
./lib/openal-soft/utils/makehrtf.o \
./lib/openal-soft/utils/openal-info.o 

CPP_DEPS += \
./lib/openal-soft/utils/makehrtf.d 

C_DEPS += \
./lib/openal-soft/utils/getopt.d \
./lib/openal-soft/utils/openal-info.d 


# Each subdirectory must supply rules for building sources it contributes
lib/openal-soft/utils/%.o: ../lib/openal-soft/utils/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

lib/openal-soft/utils/%.o: ../lib/openal-soft/utils/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -I/media/NBackups/Dev/Cpp/EterniaLib/include -I/media/NBackups/Dev/Cpp/EterniaGameLogic/include -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


