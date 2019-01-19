################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CC_SRCS += \
../lib/ImageMagick/Magick++/fuzz/crop_fuzzer.cc \
../lib/ImageMagick/Magick++/fuzz/encoder_fuzzer.cc \
../lib/ImageMagick/Magick++/fuzz/encoder_gradient_fuzzer.cc \
../lib/ImageMagick/Magick++/fuzz/encoder_label_fuzzer.cc \
../lib/ImageMagick/Magick++/fuzz/encoder_list.cc \
../lib/ImageMagick/Magick++/fuzz/encoder_pattern_fuzzer.cc \
../lib/ImageMagick/Magick++/fuzz/encoder_plasma_fuzzer.cc \
../lib/ImageMagick/Magick++/fuzz/encoder_radial-gradient_fuzzer.cc \
../lib/ImageMagick/Magick++/fuzz/encoder_utils.cc \
../lib/ImageMagick/Magick++/fuzz/encoder_xc_fuzzer.cc \
../lib/ImageMagick/Magick++/fuzz/enhance_fuzzer.cc \
../lib/ImageMagick/Magick++/fuzz/huffman_decode_fuzzer.cc \
../lib/ImageMagick/Magick++/fuzz/main.cc \
../lib/ImageMagick/Magick++/fuzz/ping_fuzzer.cc \
../lib/ImageMagick/Magick++/fuzz/rotate_fuzzer.cc \
../lib/ImageMagick/Magick++/fuzz/travis.cc \
../lib/ImageMagick/Magick++/fuzz/utils.cc 

CC_DEPS += \
./lib/ImageMagick/Magick++/fuzz/crop_fuzzer.d \
./lib/ImageMagick/Magick++/fuzz/encoder_fuzzer.d \
./lib/ImageMagick/Magick++/fuzz/encoder_gradient_fuzzer.d \
./lib/ImageMagick/Magick++/fuzz/encoder_label_fuzzer.d \
./lib/ImageMagick/Magick++/fuzz/encoder_list.d \
./lib/ImageMagick/Magick++/fuzz/encoder_pattern_fuzzer.d \
./lib/ImageMagick/Magick++/fuzz/encoder_plasma_fuzzer.d \
./lib/ImageMagick/Magick++/fuzz/encoder_radial-gradient_fuzzer.d \
./lib/ImageMagick/Magick++/fuzz/encoder_utils.d \
./lib/ImageMagick/Magick++/fuzz/encoder_xc_fuzzer.d \
./lib/ImageMagick/Magick++/fuzz/enhance_fuzzer.d \
./lib/ImageMagick/Magick++/fuzz/huffman_decode_fuzzer.d \
./lib/ImageMagick/Magick++/fuzz/main.d \
./lib/ImageMagick/Magick++/fuzz/ping_fuzzer.d \
./lib/ImageMagick/Magick++/fuzz/rotate_fuzzer.d \
./lib/ImageMagick/Magick++/fuzz/travis.d \
./lib/ImageMagick/Magick++/fuzz/utils.d 

OBJS += \
./lib/ImageMagick/Magick++/fuzz/crop_fuzzer.o \
./lib/ImageMagick/Magick++/fuzz/encoder_fuzzer.o \
./lib/ImageMagick/Magick++/fuzz/encoder_gradient_fuzzer.o \
./lib/ImageMagick/Magick++/fuzz/encoder_label_fuzzer.o \
./lib/ImageMagick/Magick++/fuzz/encoder_list.o \
./lib/ImageMagick/Magick++/fuzz/encoder_pattern_fuzzer.o \
./lib/ImageMagick/Magick++/fuzz/encoder_plasma_fuzzer.o \
./lib/ImageMagick/Magick++/fuzz/encoder_radial-gradient_fuzzer.o \
./lib/ImageMagick/Magick++/fuzz/encoder_utils.o \
./lib/ImageMagick/Magick++/fuzz/encoder_xc_fuzzer.o \
./lib/ImageMagick/Magick++/fuzz/enhance_fuzzer.o \
./lib/ImageMagick/Magick++/fuzz/huffman_decode_fuzzer.o \
./lib/ImageMagick/Magick++/fuzz/main.o \
./lib/ImageMagick/Magick++/fuzz/ping_fuzzer.o \
./lib/ImageMagick/Magick++/fuzz/rotate_fuzzer.o \
./lib/ImageMagick/Magick++/fuzz/travis.o \
./lib/ImageMagick/Magick++/fuzz/utils.o 


# Each subdirectory must supply rules for building sources it contributes
lib/ImageMagick/Magick++/fuzz/%.o: ../lib/ImageMagick/Magick++/fuzz/%.cc
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -I/media/NBackups/Dev/Cpp/EterniaLib/include -I/media/NBackups/Dev/Cpp/EterniaGameLogic/include -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


