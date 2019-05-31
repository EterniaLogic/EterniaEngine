################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../lib/FFmpeg/libavfilter/aarch64/vf_nlmeans_init.c 

S_UPPER_SRCS += \
../lib/FFmpeg/libavfilter/aarch64/vf_nlmeans_neon.S 

OBJS += \
./lib/FFmpeg/libavfilter/aarch64/vf_nlmeans_init.o \
./lib/FFmpeg/libavfilter/aarch64/vf_nlmeans_neon.o 

C_DEPS += \
./lib/FFmpeg/libavfilter/aarch64/vf_nlmeans_init.d 


# Each subdirectory must supply rules for building sources it contributes
lib/FFmpeg/libavfilter/aarch64/%.o: ../lib/FFmpeg/libavfilter/aarch64/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

lib/FFmpeg/libavfilter/aarch64/%.o: ../lib/FFmpeg/libavfilter/aarch64/%.S
	@echo 'Building file: $<'
	@echo 'Invoking: GCC Assembler'
	as  -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


