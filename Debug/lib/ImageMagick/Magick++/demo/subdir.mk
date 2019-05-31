################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../lib/ImageMagick/Magick++/demo/analyze.cpp \
../lib/ImageMagick/Magick++/demo/button.cpp \
../lib/ImageMagick/Magick++/demo/demo.cpp \
../lib/ImageMagick/Magick++/demo/detrans.cpp \
../lib/ImageMagick/Magick++/demo/flip.cpp \
../lib/ImageMagick/Magick++/demo/gravity.cpp \
../lib/ImageMagick/Magick++/demo/piddle.cpp \
../lib/ImageMagick/Magick++/demo/shapes.cpp \
../lib/ImageMagick/Magick++/demo/zoom.cpp 

OBJS += \
./lib/ImageMagick/Magick++/demo/analyze.o \
./lib/ImageMagick/Magick++/demo/button.o \
./lib/ImageMagick/Magick++/demo/demo.o \
./lib/ImageMagick/Magick++/demo/detrans.o \
./lib/ImageMagick/Magick++/demo/flip.o \
./lib/ImageMagick/Magick++/demo/gravity.o \
./lib/ImageMagick/Magick++/demo/piddle.o \
./lib/ImageMagick/Magick++/demo/shapes.o \
./lib/ImageMagick/Magick++/demo/zoom.o 

CPP_DEPS += \
./lib/ImageMagick/Magick++/demo/analyze.d \
./lib/ImageMagick/Magick++/demo/button.d \
./lib/ImageMagick/Magick++/demo/demo.d \
./lib/ImageMagick/Magick++/demo/detrans.d \
./lib/ImageMagick/Magick++/demo/flip.d \
./lib/ImageMagick/Magick++/demo/gravity.d \
./lib/ImageMagick/Magick++/demo/piddle.d \
./lib/ImageMagick/Magick++/demo/shapes.d \
./lib/ImageMagick/Magick++/demo/zoom.d 


# Each subdirectory must supply rules for building sources it contributes
lib/ImageMagick/Magick++/demo/%.o: ../lib/ImageMagick/Magick++/demo/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -I/media/NBackups/Dev/Cpp/EterniaLib/include -I/media/NBackups/Dev/Cpp/EterniaGameLogic/include -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


