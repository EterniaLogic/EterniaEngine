################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CXX_SRCS += \
../FBXCommon/AnimationUtility.cxx \
../FBXCommon/Common.cxx \
../FBXCommon/GeometryUtility.cxx 

CXX_DEPS += \
./FBXCommon/AnimationUtility.d \
./FBXCommon/Common.d \
./FBXCommon/GeometryUtility.d 

OBJS += \
./FBXCommon/AnimationUtility.o \
./FBXCommon/Common.o \
./FBXCommon/GeometryUtility.o 


# Each subdirectory must supply rules for building sources it contributes
FBXCommon/%.o: ../FBXCommon/%.cxx
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -I/media/NBackups/Dev/Cpp/EterniaLib/include -I/media/NBackups/Dev/Cpp/EterniaGameLogic/include -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


