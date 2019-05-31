################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../lib/openal-soft/utils/alsoft-config/main.cpp \
../lib/openal-soft/utils/alsoft-config/mainwindow.cpp \
../lib/openal-soft/utils/alsoft-config/moc_mainwindow.cpp 

OBJS += \
./lib/openal-soft/utils/alsoft-config/main.o \
./lib/openal-soft/utils/alsoft-config/mainwindow.o \
./lib/openal-soft/utils/alsoft-config/moc_mainwindow.o 

CPP_DEPS += \
./lib/openal-soft/utils/alsoft-config/main.d \
./lib/openal-soft/utils/alsoft-config/mainwindow.d \
./lib/openal-soft/utils/alsoft-config/moc_mainwindow.d 


# Each subdirectory must supply rules for building sources it contributes
lib/openal-soft/utils/alsoft-config/%.o: ../lib/openal-soft/utils/alsoft-config/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -I/media/NBackups/Dev/Cpp/EterniaLib/include -I/media/NBackups/Dev/Cpp/EterniaGameLogic/include -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


