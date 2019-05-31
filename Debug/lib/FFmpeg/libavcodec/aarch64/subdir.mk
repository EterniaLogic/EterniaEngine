################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../lib/FFmpeg/libavcodec/aarch64/aacpsdsp_init_aarch64.c \
../lib/FFmpeg/libavcodec/aarch64/fft_init_aarch64.c \
../lib/FFmpeg/libavcodec/aarch64/fmtconvert_init.c \
../lib/FFmpeg/libavcodec/aarch64/h264chroma_init_aarch64.c \
../lib/FFmpeg/libavcodec/aarch64/h264dsp_init_aarch64.c \
../lib/FFmpeg/libavcodec/aarch64/h264pred_init.c \
../lib/FFmpeg/libavcodec/aarch64/h264qpel_init_aarch64.c \
../lib/FFmpeg/libavcodec/aarch64/hpeldsp_init_aarch64.c \
../lib/FFmpeg/libavcodec/aarch64/idctdsp_init_aarch64.c \
../lib/FFmpeg/libavcodec/aarch64/mpegaudiodsp_init.c \
../lib/FFmpeg/libavcodec/aarch64/neontest.c \
../lib/FFmpeg/libavcodec/aarch64/rv40dsp_init_aarch64.c \
../lib/FFmpeg/libavcodec/aarch64/sbrdsp_init_aarch64.c \
../lib/FFmpeg/libavcodec/aarch64/synth_filter_init.c \
../lib/FFmpeg/libavcodec/aarch64/vc1dsp_init_aarch64.c \
../lib/FFmpeg/libavcodec/aarch64/videodsp_init.c \
../lib/FFmpeg/libavcodec/aarch64/vorbisdsp_init.c \
../lib/FFmpeg/libavcodec/aarch64/vp9dsp_init_10bpp_aarch64.c \
../lib/FFmpeg/libavcodec/aarch64/vp9dsp_init_12bpp_aarch64.c \
../lib/FFmpeg/libavcodec/aarch64/vp9dsp_init_16bpp_aarch64_template.c \
../lib/FFmpeg/libavcodec/aarch64/vp9dsp_init_aarch64.c 

S_UPPER_SRCS += \
../lib/FFmpeg/libavcodec/aarch64/aacpsdsp_neon.S \
../lib/FFmpeg/libavcodec/aarch64/fft_neon.S \
../lib/FFmpeg/libavcodec/aarch64/fmtconvert_neon.S \
../lib/FFmpeg/libavcodec/aarch64/h264cmc_neon.S \
../lib/FFmpeg/libavcodec/aarch64/h264dsp_neon.S \
../lib/FFmpeg/libavcodec/aarch64/h264idct_neon.S \
../lib/FFmpeg/libavcodec/aarch64/h264pred_neon.S \
../lib/FFmpeg/libavcodec/aarch64/h264qpel_neon.S \
../lib/FFmpeg/libavcodec/aarch64/hpeldsp_neon.S \
../lib/FFmpeg/libavcodec/aarch64/mdct_neon.S \
../lib/FFmpeg/libavcodec/aarch64/mpegaudiodsp_neon.S \
../lib/FFmpeg/libavcodec/aarch64/neon.S \
../lib/FFmpeg/libavcodec/aarch64/sbrdsp_neon.S \
../lib/FFmpeg/libavcodec/aarch64/simple_idct_neon.S \
../lib/FFmpeg/libavcodec/aarch64/synth_filter_neon.S \
../lib/FFmpeg/libavcodec/aarch64/videodsp.S \
../lib/FFmpeg/libavcodec/aarch64/vorbisdsp_neon.S \
../lib/FFmpeg/libavcodec/aarch64/vp9itxfm_16bpp_neon.S \
../lib/FFmpeg/libavcodec/aarch64/vp9itxfm_neon.S \
../lib/FFmpeg/libavcodec/aarch64/vp9lpf_16bpp_neon.S \
../lib/FFmpeg/libavcodec/aarch64/vp9lpf_neon.S \
../lib/FFmpeg/libavcodec/aarch64/vp9mc_16bpp_neon.S \
../lib/FFmpeg/libavcodec/aarch64/vp9mc_neon.S 

OBJS += \
./lib/FFmpeg/libavcodec/aarch64/aacpsdsp_init_aarch64.o \
./lib/FFmpeg/libavcodec/aarch64/aacpsdsp_neon.o \
./lib/FFmpeg/libavcodec/aarch64/fft_init_aarch64.o \
./lib/FFmpeg/libavcodec/aarch64/fft_neon.o \
./lib/FFmpeg/libavcodec/aarch64/fmtconvert_init.o \
./lib/FFmpeg/libavcodec/aarch64/fmtconvert_neon.o \
./lib/FFmpeg/libavcodec/aarch64/h264chroma_init_aarch64.o \
./lib/FFmpeg/libavcodec/aarch64/h264cmc_neon.o \
./lib/FFmpeg/libavcodec/aarch64/h264dsp_init_aarch64.o \
./lib/FFmpeg/libavcodec/aarch64/h264dsp_neon.o \
./lib/FFmpeg/libavcodec/aarch64/h264idct_neon.o \
./lib/FFmpeg/libavcodec/aarch64/h264pred_init.o \
./lib/FFmpeg/libavcodec/aarch64/h264pred_neon.o \
./lib/FFmpeg/libavcodec/aarch64/h264qpel_init_aarch64.o \
./lib/FFmpeg/libavcodec/aarch64/h264qpel_neon.o \
./lib/FFmpeg/libavcodec/aarch64/hpeldsp_init_aarch64.o \
./lib/FFmpeg/libavcodec/aarch64/hpeldsp_neon.o \
./lib/FFmpeg/libavcodec/aarch64/idctdsp_init_aarch64.o \
./lib/FFmpeg/libavcodec/aarch64/mdct_neon.o \
./lib/FFmpeg/libavcodec/aarch64/mpegaudiodsp_init.o \
./lib/FFmpeg/libavcodec/aarch64/mpegaudiodsp_neon.o \
./lib/FFmpeg/libavcodec/aarch64/neon.o \
./lib/FFmpeg/libavcodec/aarch64/neontest.o \
./lib/FFmpeg/libavcodec/aarch64/rv40dsp_init_aarch64.o \
./lib/FFmpeg/libavcodec/aarch64/sbrdsp_init_aarch64.o \
./lib/FFmpeg/libavcodec/aarch64/sbrdsp_neon.o \
./lib/FFmpeg/libavcodec/aarch64/simple_idct_neon.o \
./lib/FFmpeg/libavcodec/aarch64/synth_filter_init.o \
./lib/FFmpeg/libavcodec/aarch64/synth_filter_neon.o \
./lib/FFmpeg/libavcodec/aarch64/vc1dsp_init_aarch64.o \
./lib/FFmpeg/libavcodec/aarch64/videodsp.o \
./lib/FFmpeg/libavcodec/aarch64/videodsp_init.o \
./lib/FFmpeg/libavcodec/aarch64/vorbisdsp_init.o \
./lib/FFmpeg/libavcodec/aarch64/vorbisdsp_neon.o \
./lib/FFmpeg/libavcodec/aarch64/vp9dsp_init_10bpp_aarch64.o \
./lib/FFmpeg/libavcodec/aarch64/vp9dsp_init_12bpp_aarch64.o \
./lib/FFmpeg/libavcodec/aarch64/vp9dsp_init_16bpp_aarch64_template.o \
./lib/FFmpeg/libavcodec/aarch64/vp9dsp_init_aarch64.o \
./lib/FFmpeg/libavcodec/aarch64/vp9itxfm_16bpp_neon.o \
./lib/FFmpeg/libavcodec/aarch64/vp9itxfm_neon.o \
./lib/FFmpeg/libavcodec/aarch64/vp9lpf_16bpp_neon.o \
./lib/FFmpeg/libavcodec/aarch64/vp9lpf_neon.o \
./lib/FFmpeg/libavcodec/aarch64/vp9mc_16bpp_neon.o \
./lib/FFmpeg/libavcodec/aarch64/vp9mc_neon.o 

C_DEPS += \
./lib/FFmpeg/libavcodec/aarch64/aacpsdsp_init_aarch64.d \
./lib/FFmpeg/libavcodec/aarch64/fft_init_aarch64.d \
./lib/FFmpeg/libavcodec/aarch64/fmtconvert_init.d \
./lib/FFmpeg/libavcodec/aarch64/h264chroma_init_aarch64.d \
./lib/FFmpeg/libavcodec/aarch64/h264dsp_init_aarch64.d \
./lib/FFmpeg/libavcodec/aarch64/h264pred_init.d \
./lib/FFmpeg/libavcodec/aarch64/h264qpel_init_aarch64.d \
./lib/FFmpeg/libavcodec/aarch64/hpeldsp_init_aarch64.d \
./lib/FFmpeg/libavcodec/aarch64/idctdsp_init_aarch64.d \
./lib/FFmpeg/libavcodec/aarch64/mpegaudiodsp_init.d \
./lib/FFmpeg/libavcodec/aarch64/neontest.d \
./lib/FFmpeg/libavcodec/aarch64/rv40dsp_init_aarch64.d \
./lib/FFmpeg/libavcodec/aarch64/sbrdsp_init_aarch64.d \
./lib/FFmpeg/libavcodec/aarch64/synth_filter_init.d \
./lib/FFmpeg/libavcodec/aarch64/vc1dsp_init_aarch64.d \
./lib/FFmpeg/libavcodec/aarch64/videodsp_init.d \
./lib/FFmpeg/libavcodec/aarch64/vorbisdsp_init.d \
./lib/FFmpeg/libavcodec/aarch64/vp9dsp_init_10bpp_aarch64.d \
./lib/FFmpeg/libavcodec/aarch64/vp9dsp_init_12bpp_aarch64.d \
./lib/FFmpeg/libavcodec/aarch64/vp9dsp_init_16bpp_aarch64_template.d \
./lib/FFmpeg/libavcodec/aarch64/vp9dsp_init_aarch64.d 


# Each subdirectory must supply rules for building sources it contributes
lib/FFmpeg/libavcodec/aarch64/%.o: ../lib/FFmpeg/libavcodec/aarch64/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

lib/FFmpeg/libavcodec/aarch64/%.o: ../lib/FFmpeg/libavcodec/aarch64/%.S
	@echo 'Building file: $<'
	@echo 'Invoking: GCC Assembler'
	as  -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


