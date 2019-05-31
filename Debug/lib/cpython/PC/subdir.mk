################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../lib/cpython/PC/pyshellext.cpp \
../lib/cpython/PC/python_uwp.cpp 

C_SRCS += \
../lib/cpython/PC/WinMain.c \
../lib/cpython/PC/_msi.c \
../lib/cpython/PC/_testconsole.c \
../lib/cpython/PC/config.c \
../lib/cpython/PC/dl_nt.c \
../lib/cpython/PC/empty.c \
../lib/cpython/PC/frozen_dllmain.c \
../lib/cpython/PC/generrmap.c \
../lib/cpython/PC/getpathp.c \
../lib/cpython/PC/invalid_parameter_handler.c \
../lib/cpython/PC/launcher.c \
../lib/cpython/PC/msvcrtmodule.c \
../lib/cpython/PC/python3dll.c \
../lib/cpython/PC/winreg.c \
../lib/cpython/PC/winsound.c 

OBJS += \
./lib/cpython/PC/WinMain.o \
./lib/cpython/PC/_msi.o \
./lib/cpython/PC/_testconsole.o \
./lib/cpython/PC/config.o \
./lib/cpython/PC/dl_nt.o \
./lib/cpython/PC/empty.o \
./lib/cpython/PC/frozen_dllmain.o \
./lib/cpython/PC/generrmap.o \
./lib/cpython/PC/getpathp.o \
./lib/cpython/PC/invalid_parameter_handler.o \
./lib/cpython/PC/launcher.o \
./lib/cpython/PC/msvcrtmodule.o \
./lib/cpython/PC/pyshellext.o \
./lib/cpython/PC/python3dll.o \
./lib/cpython/PC/python_uwp.o \
./lib/cpython/PC/winreg.o \
./lib/cpython/PC/winsound.o 

CPP_DEPS += \
./lib/cpython/PC/pyshellext.d \
./lib/cpython/PC/python_uwp.d 

C_DEPS += \
./lib/cpython/PC/WinMain.d \
./lib/cpython/PC/_msi.d \
./lib/cpython/PC/_testconsole.d \
./lib/cpython/PC/config.d \
./lib/cpython/PC/dl_nt.d \
./lib/cpython/PC/empty.d \
./lib/cpython/PC/frozen_dllmain.d \
./lib/cpython/PC/generrmap.d \
./lib/cpython/PC/getpathp.d \
./lib/cpython/PC/invalid_parameter_handler.d \
./lib/cpython/PC/launcher.d \
./lib/cpython/PC/msvcrtmodule.d \
./lib/cpython/PC/python3dll.d \
./lib/cpython/PC/winreg.d \
./lib/cpython/PC/winsound.d 


# Each subdirectory must supply rules for building sources it contributes
lib/cpython/PC/%.o: ../lib/cpython/PC/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

lib/cpython/PC/%.o: ../lib/cpython/PC/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -I/media/NBackups/Dev/Cpp/EterniaLib/include -I/media/NBackups/Dev/Cpp/EterniaGameLogic/include -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


