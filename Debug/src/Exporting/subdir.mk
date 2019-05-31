################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/Exporting/generateAssets.cpp \
../src/Exporting/generateExecutables.cpp \
../src/Exporting/generateLocalizations.cpp \
../src/Exporting/generateMipMaps.cpp \
../src/Exporting/generatePackages.cpp \
../src/Exporting/generateScripts.cpp \
../src/Exporting/generateSettings.cpp 

OBJS += \
./src/Exporting/generateAssets.o \
./src/Exporting/generateExecutables.o \
./src/Exporting/generateLocalizations.o \
./src/Exporting/generateMipMaps.o \
./src/Exporting/generatePackages.o \
./src/Exporting/generateScripts.o \
./src/Exporting/generateSettings.o 

CPP_DEPS += \
./src/Exporting/generateAssets.d \
./src/Exporting/generateExecutables.d \
./src/Exporting/generateLocalizations.d \
./src/Exporting/generateMipMaps.d \
./src/Exporting/generatePackages.d \
./src/Exporting/generateScripts.d \
./src/Exporting/generateSettings.d 


# Each subdirectory must supply rules for building sources it contributes
src/Exporting/%.o: ../src/Exporting/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -I/media/NBackups/Dev/Cpp/EterniaLib/include -I/media/NBackups/Dev/Cpp/EterniaGameLogic/include -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


