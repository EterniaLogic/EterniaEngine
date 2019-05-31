################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../lib/ImageMagick/Magick++/tests/appendImages.cpp \
../lib/ImageMagick/Magick++/tests/attributes.cpp \
../lib/ImageMagick/Magick++/tests/averageImages.cpp \
../lib/ImageMagick/Magick++/tests/coalesceImages.cpp \
../lib/ImageMagick/Magick++/tests/coderInfo.cpp \
../lib/ImageMagick/Magick++/tests/color.cpp \
../lib/ImageMagick/Magick++/tests/colorHistogram.cpp \
../lib/ImageMagick/Magick++/tests/exceptions.cpp \
../lib/ImageMagick/Magick++/tests/geometry.cpp \
../lib/ImageMagick/Magick++/tests/montageImages.cpp \
../lib/ImageMagick/Magick++/tests/morphImages.cpp \
../lib/ImageMagick/Magick++/tests/readWriteBlob.cpp \
../lib/ImageMagick/Magick++/tests/readWriteImages.cpp 

OBJS += \
./lib/ImageMagick/Magick++/tests/appendImages.o \
./lib/ImageMagick/Magick++/tests/attributes.o \
./lib/ImageMagick/Magick++/tests/averageImages.o \
./lib/ImageMagick/Magick++/tests/coalesceImages.o \
./lib/ImageMagick/Magick++/tests/coderInfo.o \
./lib/ImageMagick/Magick++/tests/color.o \
./lib/ImageMagick/Magick++/tests/colorHistogram.o \
./lib/ImageMagick/Magick++/tests/exceptions.o \
./lib/ImageMagick/Magick++/tests/geometry.o \
./lib/ImageMagick/Magick++/tests/montageImages.o \
./lib/ImageMagick/Magick++/tests/morphImages.o \
./lib/ImageMagick/Magick++/tests/readWriteBlob.o \
./lib/ImageMagick/Magick++/tests/readWriteImages.o 

CPP_DEPS += \
./lib/ImageMagick/Magick++/tests/appendImages.d \
./lib/ImageMagick/Magick++/tests/attributes.d \
./lib/ImageMagick/Magick++/tests/averageImages.d \
./lib/ImageMagick/Magick++/tests/coalesceImages.d \
./lib/ImageMagick/Magick++/tests/coderInfo.d \
./lib/ImageMagick/Magick++/tests/color.d \
./lib/ImageMagick/Magick++/tests/colorHistogram.d \
./lib/ImageMagick/Magick++/tests/exceptions.d \
./lib/ImageMagick/Magick++/tests/geometry.d \
./lib/ImageMagick/Magick++/tests/montageImages.d \
./lib/ImageMagick/Magick++/tests/morphImages.d \
./lib/ImageMagick/Magick++/tests/readWriteBlob.d \
./lib/ImageMagick/Magick++/tests/readWriteImages.d 


# Each subdirectory must supply rules for building sources it contributes
lib/ImageMagick/Magick++/tests/%.o: ../lib/ImageMagick/Magick++/tests/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -I/media/NBackups/Dev/Cpp/EterniaLib/include -I/media/NBackups/Dev/Cpp/EterniaGameLogic/include -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


