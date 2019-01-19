################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CC_SRCS += \
../lib/zlib/contrib/iostream3/test.cc \
../lib/zlib/contrib/iostream3/zfstream.cc 

CC_DEPS += \
./lib/zlib/contrib/iostream3/test.d \
./lib/zlib/contrib/iostream3/zfstream.d 

OBJS += \
./lib/zlib/contrib/iostream3/test.o \
./lib/zlib/contrib/iostream3/zfstream.o 


# Each subdirectory must supply rules for building sources it contributes
lib/zlib/contrib/iostream3/%.o: ../lib/zlib/contrib/iostream3/%.cc
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -I/media/NBackups/Dev/Cpp/EterniaLib/include -I/media/NBackups/Dev/Cpp/EterniaGameLogic/include -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


