################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../lib/zlib/contrib/iostream/test.cpp \
../lib/zlib/contrib/iostream/zfstream.cpp 

OBJS += \
./lib/zlib/contrib/iostream/test.o \
./lib/zlib/contrib/iostream/zfstream.o 

CPP_DEPS += \
./lib/zlib/contrib/iostream/test.d \
./lib/zlib/contrib/iostream/zfstream.d 


# Each subdirectory must supply rules for building sources it contributes
lib/zlib/contrib/iostream/%.o: ../lib/zlib/contrib/iostream/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -I/media/NBackups/Dev/Cpp/EterniaLib/include -I/media/NBackups/Dev/Cpp/EterniaGameLogic/include -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


