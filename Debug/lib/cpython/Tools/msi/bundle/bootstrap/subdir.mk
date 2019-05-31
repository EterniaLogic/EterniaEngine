################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../lib/cpython/Tools/msi/bundle/bootstrap/PythonBootstrapperApplication.cpp \
../lib/cpython/Tools/msi/bundle/bootstrap/pch.cpp \
../lib/cpython/Tools/msi/bundle/bootstrap/pythonba.cpp 

OBJS += \
./lib/cpython/Tools/msi/bundle/bootstrap/PythonBootstrapperApplication.o \
./lib/cpython/Tools/msi/bundle/bootstrap/pch.o \
./lib/cpython/Tools/msi/bundle/bootstrap/pythonba.o 

CPP_DEPS += \
./lib/cpython/Tools/msi/bundle/bootstrap/PythonBootstrapperApplication.d \
./lib/cpython/Tools/msi/bundle/bootstrap/pch.d \
./lib/cpython/Tools/msi/bundle/bootstrap/pythonba.d 


# Each subdirectory must supply rules for building sources it contributes
lib/cpython/Tools/msi/bundle/bootstrap/%.o: ../lib/cpython/Tools/msi/bundle/bootstrap/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -I/media/NBackups/Dev/Cpp/EterniaLib/include -I/media/NBackups/Dev/Cpp/EterniaGameLogic/include -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


