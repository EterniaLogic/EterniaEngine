################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../lib/FFmpeg/libpostproc/postprocess.c \
../lib/FFmpeg/libpostproc/postprocess_altivec_template.c \
../lib/FFmpeg/libpostproc/postprocess_template.c 

OBJS += \
./lib/FFmpeg/libpostproc/postprocess.o \
./lib/FFmpeg/libpostproc/postprocess_altivec_template.o \
./lib/FFmpeg/libpostproc/postprocess_template.o 

C_DEPS += \
./lib/FFmpeg/libpostproc/postprocess.d \
./lib/FFmpeg/libpostproc/postprocess_altivec_template.d \
./lib/FFmpeg/libpostproc/postprocess_template.d 


# Each subdirectory must supply rules for building sources it contributes
lib/FFmpeg/libpostproc/%.o: ../lib/FFmpeg/libpostproc/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


