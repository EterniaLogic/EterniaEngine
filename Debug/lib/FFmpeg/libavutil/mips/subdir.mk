################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../lib/FFmpeg/libavutil/mips/float_dsp_mips.c 

OBJS += \
./lib/FFmpeg/libavutil/mips/float_dsp_mips.o 

C_DEPS += \
./lib/FFmpeg/libavutil/mips/float_dsp_mips.d 


# Each subdirectory must supply rules for building sources it contributes
lib/FFmpeg/libavutil/mips/%.o: ../lib/FFmpeg/libavutil/mips/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


