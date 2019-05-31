################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/GUI/DevEnv/DevGUIs/DevDockableWindow.cpp \
../src/GUI/DevEnv/DevGUIs/DevDockingTabArea.cpp \
../src/GUI/DevEnv/DevGUIs/DevMenuBar.cpp \
../src/GUI/DevEnv/DevGUIs/DevMenuItem.cpp \
../src/GUI/DevEnv/DevGUIs/DevProjectEditor.cpp 

OBJS += \
./src/GUI/DevEnv/DevGUIs/DevDockableWindow.o \
./src/GUI/DevEnv/DevGUIs/DevDockingTabArea.o \
./src/GUI/DevEnv/DevGUIs/DevMenuBar.o \
./src/GUI/DevEnv/DevGUIs/DevMenuItem.o \
./src/GUI/DevEnv/DevGUIs/DevProjectEditor.o 

CPP_DEPS += \
./src/GUI/DevEnv/DevGUIs/DevDockableWindow.d \
./src/GUI/DevEnv/DevGUIs/DevDockingTabArea.d \
./src/GUI/DevEnv/DevGUIs/DevMenuBar.d \
./src/GUI/DevEnv/DevGUIs/DevMenuItem.d \
./src/GUI/DevEnv/DevGUIs/DevProjectEditor.d 


# Each subdirectory must supply rules for building sources it contributes
src/GUI/DevEnv/DevGUIs/%.o: ../src/GUI/DevEnv/DevGUIs/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -I/media/NBackups/Dev/Cpp/EterniaLib/include -I/media/NBackups/Dev/Cpp/EterniaGameLogic/include -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


