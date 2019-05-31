################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/GUI/DrawArea.cpp \
../src/GUI/GLabel.cpp \
../src/GUI/GObject.cpp \
../src/GUI/GSimpleDrawers.cpp \
../src/GUI/GSlider.cpp \
../src/GUI/GTextBox.cpp \
../src/GUI/GTreeView.cpp \
../src/GUI/GWindow.cpp 

OBJS += \
./src/GUI/DrawArea.o \
./src/GUI/GLabel.o \
./src/GUI/GObject.o \
./src/GUI/GSimpleDrawers.o \
./src/GUI/GSlider.o \
./src/GUI/GTextBox.o \
./src/GUI/GTreeView.o \
./src/GUI/GWindow.o 

CPP_DEPS += \
./src/GUI/DrawArea.d \
./src/GUI/GLabel.d \
./src/GUI/GObject.d \
./src/GUI/GSimpleDrawers.d \
./src/GUI/GSlider.d \
./src/GUI/GTextBox.d \
./src/GUI/GTreeView.d \
./src/GUI/GWindow.d 


# Each subdirectory must supply rules for building sources it contributes
src/GUI/%.o: ../src/GUI/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -I/media/NBackups/Dev/Cpp/EterniaLib/include -I/media/NBackups/Dev/Cpp/EterniaGameLogic/include -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


