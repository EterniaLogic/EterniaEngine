################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../lib/ImageMagick/Magick++/lib/Blob.cpp \
../lib/ImageMagick/Magick++/lib/BlobRef.cpp \
../lib/ImageMagick/Magick++/lib/CoderInfo.cpp \
../lib/ImageMagick/Magick++/lib/Color.cpp \
../lib/ImageMagick/Magick++/lib/Drawable.cpp \
../lib/ImageMagick/Magick++/lib/Exception.cpp \
../lib/ImageMagick/Magick++/lib/Functions.cpp \
../lib/ImageMagick/Magick++/lib/Geometry.cpp \
../lib/ImageMagick/Magick++/lib/Image.cpp \
../lib/ImageMagick/Magick++/lib/ImageRef.cpp \
../lib/ImageMagick/Magick++/lib/Montage.cpp \
../lib/ImageMagick/Magick++/lib/Options.cpp \
../lib/ImageMagick/Magick++/lib/Pixels.cpp \
../lib/ImageMagick/Magick++/lib/ResourceLimits.cpp \
../lib/ImageMagick/Magick++/lib/STL.cpp \
../lib/ImageMagick/Magick++/lib/SecurityPolicy.cpp \
../lib/ImageMagick/Magick++/lib/Statistic.cpp \
../lib/ImageMagick/Magick++/lib/Thread.cpp \
../lib/ImageMagick/Magick++/lib/TypeMetric.cpp 

O_SRCS += \
../lib/ImageMagick/Magick++/lib/libMagick___7_Q16HDRI_la-Blob.o \
../lib/ImageMagick/Magick++/lib/libMagick___7_Q16HDRI_la-BlobRef.o \
../lib/ImageMagick/Magick++/lib/libMagick___7_Q16HDRI_la-CoderInfo.o \
../lib/ImageMagick/Magick++/lib/libMagick___7_Q16HDRI_la-Color.o \
../lib/ImageMagick/Magick++/lib/libMagick___7_Q16HDRI_la-Drawable.o \
../lib/ImageMagick/Magick++/lib/libMagick___7_Q16HDRI_la-Exception.o \
../lib/ImageMagick/Magick++/lib/libMagick___7_Q16HDRI_la-Functions.o \
../lib/ImageMagick/Magick++/lib/libMagick___7_Q16HDRI_la-Geometry.o \
../lib/ImageMagick/Magick++/lib/libMagick___7_Q16HDRI_la-Image.o \
../lib/ImageMagick/Magick++/lib/libMagick___7_Q16HDRI_la-ImageRef.o \
../lib/ImageMagick/Magick++/lib/libMagick___7_Q16HDRI_la-Montage.o \
../lib/ImageMagick/Magick++/lib/libMagick___7_Q16HDRI_la-Options.o \
../lib/ImageMagick/Magick++/lib/libMagick___7_Q16HDRI_la-Pixels.o \
../lib/ImageMagick/Magick++/lib/libMagick___7_Q16HDRI_la-ResourceLimits.o \
../lib/ImageMagick/Magick++/lib/libMagick___7_Q16HDRI_la-STL.o \
../lib/ImageMagick/Magick++/lib/libMagick___7_Q16HDRI_la-SecurityPolicy.o \
../lib/ImageMagick/Magick++/lib/libMagick___7_Q16HDRI_la-Statistic.o \
../lib/ImageMagick/Magick++/lib/libMagick___7_Q16HDRI_la-Thread.o \
../lib/ImageMagick/Magick++/lib/libMagick___7_Q16HDRI_la-TypeMetric.o 

OBJS += \
./lib/ImageMagick/Magick++/lib/Blob.o \
./lib/ImageMagick/Magick++/lib/BlobRef.o \
./lib/ImageMagick/Magick++/lib/CoderInfo.o \
./lib/ImageMagick/Magick++/lib/Color.o \
./lib/ImageMagick/Magick++/lib/Drawable.o \
./lib/ImageMagick/Magick++/lib/Exception.o \
./lib/ImageMagick/Magick++/lib/Functions.o \
./lib/ImageMagick/Magick++/lib/Geometry.o \
./lib/ImageMagick/Magick++/lib/Image.o \
./lib/ImageMagick/Magick++/lib/ImageRef.o \
./lib/ImageMagick/Magick++/lib/Montage.o \
./lib/ImageMagick/Magick++/lib/Options.o \
./lib/ImageMagick/Magick++/lib/Pixels.o \
./lib/ImageMagick/Magick++/lib/ResourceLimits.o \
./lib/ImageMagick/Magick++/lib/STL.o \
./lib/ImageMagick/Magick++/lib/SecurityPolicy.o \
./lib/ImageMagick/Magick++/lib/Statistic.o \
./lib/ImageMagick/Magick++/lib/Thread.o \
./lib/ImageMagick/Magick++/lib/TypeMetric.o 

CPP_DEPS += \
./lib/ImageMagick/Magick++/lib/Blob.d \
./lib/ImageMagick/Magick++/lib/BlobRef.d \
./lib/ImageMagick/Magick++/lib/CoderInfo.d \
./lib/ImageMagick/Magick++/lib/Color.d \
./lib/ImageMagick/Magick++/lib/Drawable.d \
./lib/ImageMagick/Magick++/lib/Exception.d \
./lib/ImageMagick/Magick++/lib/Functions.d \
./lib/ImageMagick/Magick++/lib/Geometry.d \
./lib/ImageMagick/Magick++/lib/Image.d \
./lib/ImageMagick/Magick++/lib/ImageRef.d \
./lib/ImageMagick/Magick++/lib/Montage.d \
./lib/ImageMagick/Magick++/lib/Options.d \
./lib/ImageMagick/Magick++/lib/Pixels.d \
./lib/ImageMagick/Magick++/lib/ResourceLimits.d \
./lib/ImageMagick/Magick++/lib/STL.d \
./lib/ImageMagick/Magick++/lib/SecurityPolicy.d \
./lib/ImageMagick/Magick++/lib/Statistic.d \
./lib/ImageMagick/Magick++/lib/Thread.d \
./lib/ImageMagick/Magick++/lib/TypeMetric.d 


# Each subdirectory must supply rules for building sources it contributes
lib/ImageMagick/Magick++/lib/%.o: ../lib/ImageMagick/Magick++/lib/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -I/media/NBackups/Dev/Cpp/EterniaLib/include -I/media/NBackups/Dev/Cpp/EterniaGameLogic/include -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


