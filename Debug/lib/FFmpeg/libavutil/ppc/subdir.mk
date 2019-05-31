################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../lib/FFmpeg/libavutil/ppc/cpu.c \
../lib/FFmpeg/libavutil/ppc/float_dsp_altivec.c \
../lib/FFmpeg/libavutil/ppc/float_dsp_init.c \
../lib/FFmpeg/libavutil/ppc/float_dsp_vsx.c 

OBJS += \
./lib/FFmpeg/libavutil/ppc/cpu.o \
./lib/FFmpeg/libavutil/ppc/float_dsp_altivec.o \
./lib/FFmpeg/libavutil/ppc/float_dsp_init.o \
./lib/FFmpeg/libavutil/ppc/float_dsp_vsx.o 

C_DEPS += \
./lib/FFmpeg/libavutil/ppc/cpu.d \
./lib/FFmpeg/libavutil/ppc/float_dsp_altivec.d \
./lib/FFmpeg/libavutil/ppc/float_dsp_init.d \
./lib/FFmpeg/libavutil/ppc/float_dsp_vsx.d 


# Each subdirectory must supply rules for building sources it contributes
lib/FFmpeg/libavutil/ppc/%.o: ../lib/FFmpeg/libavutil/ppc/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


