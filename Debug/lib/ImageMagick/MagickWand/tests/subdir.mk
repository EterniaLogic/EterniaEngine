################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../lib/ImageMagick/MagickWand/tests/add_first.c \
../lib/ImageMagick/MagickWand/tests/add_first_lists.c \
../lib/ImageMagick/MagickWand/tests/add_index.c \
../lib/ImageMagick/MagickWand/tests/add_last.c \
../lib/ImageMagick/MagickWand/tests/add_last_lists.c \
../lib/ImageMagick/MagickWand/tests/add_mixed.c \
../lib/ImageMagick/MagickWand/tests/add_mixed_lists.c \
../lib/ImageMagick/MagickWand/tests/add_norm.c \
../lib/ImageMagick/MagickWand/tests/add_norm_lists.c \
../lib/ImageMagick/MagickWand/tests/loop_over_lists.c \
../lib/ImageMagick/MagickWand/tests/script-token-test.c 

OBJS += \
./lib/ImageMagick/MagickWand/tests/add_first.o \
./lib/ImageMagick/MagickWand/tests/add_first_lists.o \
./lib/ImageMagick/MagickWand/tests/add_index.o \
./lib/ImageMagick/MagickWand/tests/add_last.o \
./lib/ImageMagick/MagickWand/tests/add_last_lists.o \
./lib/ImageMagick/MagickWand/tests/add_mixed.o \
./lib/ImageMagick/MagickWand/tests/add_mixed_lists.o \
./lib/ImageMagick/MagickWand/tests/add_norm.o \
./lib/ImageMagick/MagickWand/tests/add_norm_lists.o \
./lib/ImageMagick/MagickWand/tests/loop_over_lists.o \
./lib/ImageMagick/MagickWand/tests/script-token-test.o 

C_DEPS += \
./lib/ImageMagick/MagickWand/tests/add_first.d \
./lib/ImageMagick/MagickWand/tests/add_first_lists.d \
./lib/ImageMagick/MagickWand/tests/add_index.d \
./lib/ImageMagick/MagickWand/tests/add_last.d \
./lib/ImageMagick/MagickWand/tests/add_last_lists.d \
./lib/ImageMagick/MagickWand/tests/add_mixed.d \
./lib/ImageMagick/MagickWand/tests/add_mixed_lists.d \
./lib/ImageMagick/MagickWand/tests/add_norm.d \
./lib/ImageMagick/MagickWand/tests/add_norm_lists.d \
./lib/ImageMagick/MagickWand/tests/loop_over_lists.d \
./lib/ImageMagick/MagickWand/tests/script-token-test.d 


# Each subdirectory must supply rules for building sources it contributes
lib/ImageMagick/MagickWand/tests/%.o: ../lib/ImageMagick/MagickWand/tests/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


