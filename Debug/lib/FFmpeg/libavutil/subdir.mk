################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../lib/FFmpeg/libavutil/adler32.c \
../lib/FFmpeg/libavutil/aes.c \
../lib/FFmpeg/libavutil/aes_ctr.c \
../lib/FFmpeg/libavutil/audio_fifo.c \
../lib/FFmpeg/libavutil/avsscanf.c \
../lib/FFmpeg/libavutil/avstring.c \
../lib/FFmpeg/libavutil/base64.c \
../lib/FFmpeg/libavutil/blowfish.c \
../lib/FFmpeg/libavutil/bprint.c \
../lib/FFmpeg/libavutil/buffer.c \
../lib/FFmpeg/libavutil/camellia.c \
../lib/FFmpeg/libavutil/cast5.c \
../lib/FFmpeg/libavutil/channel_layout.c \
../lib/FFmpeg/libavutil/color_utils.c \
../lib/FFmpeg/libavutil/cpu.c \
../lib/FFmpeg/libavutil/crc.c \
../lib/FFmpeg/libavutil/cuda_check.c \
../lib/FFmpeg/libavutil/des.c \
../lib/FFmpeg/libavutil/dict.c \
../lib/FFmpeg/libavutil/display.c \
../lib/FFmpeg/libavutil/downmix_info.c \
../lib/FFmpeg/libavutil/encryption_info.c \
../lib/FFmpeg/libavutil/error.c \
../lib/FFmpeg/libavutil/eval.c \
../lib/FFmpeg/libavutil/fifo.c \
../lib/FFmpeg/libavutil/file.c \
../lib/FFmpeg/libavutil/file_open.c \
../lib/FFmpeg/libavutil/fixed_dsp.c \
../lib/FFmpeg/libavutil/float_dsp.c \
../lib/FFmpeg/libavutil/frame.c \
../lib/FFmpeg/libavutil/hash.c \
../lib/FFmpeg/libavutil/hdr_dynamic_metadata.c \
../lib/FFmpeg/libavutil/hmac.c \
../lib/FFmpeg/libavutil/hwcontext.c \
../lib/FFmpeg/libavutil/hwcontext_cuda.c \
../lib/FFmpeg/libavutil/hwcontext_d3d11va.c \
../lib/FFmpeg/libavutil/hwcontext_drm.c \
../lib/FFmpeg/libavutil/hwcontext_dxva2.c \
../lib/FFmpeg/libavutil/hwcontext_mediacodec.c \
../lib/FFmpeg/libavutil/hwcontext_opencl.c \
../lib/FFmpeg/libavutil/hwcontext_qsv.c \
../lib/FFmpeg/libavutil/hwcontext_vaapi.c \
../lib/FFmpeg/libavutil/hwcontext_vdpau.c \
../lib/FFmpeg/libavutil/hwcontext_videotoolbox.c \
../lib/FFmpeg/libavutil/imgutils.c \
../lib/FFmpeg/libavutil/integer.c \
../lib/FFmpeg/libavutil/intmath.c \
../lib/FFmpeg/libavutil/lfg.c \
../lib/FFmpeg/libavutil/lls.c \
../lib/FFmpeg/libavutil/log.c \
../lib/FFmpeg/libavutil/log2_tab.c \
../lib/FFmpeg/libavutil/lzo.c \
../lib/FFmpeg/libavutil/mastering_display_metadata.c \
../lib/FFmpeg/libavutil/mathematics.c \
../lib/FFmpeg/libavutil/md5.c \
../lib/FFmpeg/libavutil/mem.c \
../lib/FFmpeg/libavutil/murmur3.c \
../lib/FFmpeg/libavutil/opt.c \
../lib/FFmpeg/libavutil/parseutils.c \
../lib/FFmpeg/libavutil/pca.c \
../lib/FFmpeg/libavutil/pixdesc.c \
../lib/FFmpeg/libavutil/pixelutils.c \
../lib/FFmpeg/libavutil/random_seed.c \
../lib/FFmpeg/libavutil/rational.c \
../lib/FFmpeg/libavutil/rc4.c \
../lib/FFmpeg/libavutil/reverse.c \
../lib/FFmpeg/libavutil/ripemd.c \
../lib/FFmpeg/libavutil/samplefmt.c \
../lib/FFmpeg/libavutil/sha.c \
../lib/FFmpeg/libavutil/sha512.c \
../lib/FFmpeg/libavutil/slicethread.c \
../lib/FFmpeg/libavutil/spherical.c \
../lib/FFmpeg/libavutil/stereo3d.c \
../lib/FFmpeg/libavutil/tea.c \
../lib/FFmpeg/libavutil/threadmessage.c \
../lib/FFmpeg/libavutil/time.c \
../lib/FFmpeg/libavutil/timecode.c \
../lib/FFmpeg/libavutil/tree.c \
../lib/FFmpeg/libavutil/twofish.c \
../lib/FFmpeg/libavutil/utils.c \
../lib/FFmpeg/libavutil/xga_font_data.c \
../lib/FFmpeg/libavutil/xtea.c 

O_SRCS += \
../lib/FFmpeg/libavutil/adler32.o \
../lib/FFmpeg/libavutil/aes.o \
../lib/FFmpeg/libavutil/aes_ctr.o \
../lib/FFmpeg/libavutil/audio_fifo.o \
../lib/FFmpeg/libavutil/avsscanf.o \
../lib/FFmpeg/libavutil/avstring.o \
../lib/FFmpeg/libavutil/base64.o \
../lib/FFmpeg/libavutil/blowfish.o \
../lib/FFmpeg/libavutil/bprint.o \
../lib/FFmpeg/libavutil/buffer.o \
../lib/FFmpeg/libavutil/camellia.o \
../lib/FFmpeg/libavutil/cast5.o \
../lib/FFmpeg/libavutil/channel_layout.o \
../lib/FFmpeg/libavutil/color_utils.o \
../lib/FFmpeg/libavutil/cpu.o \
../lib/FFmpeg/libavutil/crc.o \
../lib/FFmpeg/libavutil/des.o \
../lib/FFmpeg/libavutil/dict.o \
../lib/FFmpeg/libavutil/display.o \
../lib/FFmpeg/libavutil/downmix_info.o \
../lib/FFmpeg/libavutil/encryption_info.o \
../lib/FFmpeg/libavutil/error.o \
../lib/FFmpeg/libavutil/eval.o \
../lib/FFmpeg/libavutil/fifo.o \
../lib/FFmpeg/libavutil/file.o \
../lib/FFmpeg/libavutil/file_open.o \
../lib/FFmpeg/libavutil/fixed_dsp.o \
../lib/FFmpeg/libavutil/float_dsp.o \
../lib/FFmpeg/libavutil/frame.o \
../lib/FFmpeg/libavutil/hash.o \
../lib/FFmpeg/libavutil/hdr_dynamic_metadata.o \
../lib/FFmpeg/libavutil/hmac.o \
../lib/FFmpeg/libavutil/hwcontext.o \
../lib/FFmpeg/libavutil/imgutils.o \
../lib/FFmpeg/libavutil/integer.o \
../lib/FFmpeg/libavutil/intmath.o \
../lib/FFmpeg/libavutil/lfg.o \
../lib/FFmpeg/libavutil/lls.o \
../lib/FFmpeg/libavutil/log.o \
../lib/FFmpeg/libavutil/log2_tab.o \
../lib/FFmpeg/libavutil/lzo.o \
../lib/FFmpeg/libavutil/mastering_display_metadata.o \
../lib/FFmpeg/libavutil/mathematics.o \
../lib/FFmpeg/libavutil/md5.o \
../lib/FFmpeg/libavutil/mem.o \
../lib/FFmpeg/libavutil/murmur3.o \
../lib/FFmpeg/libavutil/opt.o \
../lib/FFmpeg/libavutil/parseutils.o \
../lib/FFmpeg/libavutil/pixdesc.o \
../lib/FFmpeg/libavutil/pixelutils.o \
../lib/FFmpeg/libavutil/random_seed.o \
../lib/FFmpeg/libavutil/rational.o \
../lib/FFmpeg/libavutil/rc4.o \
../lib/FFmpeg/libavutil/reverse.o \
../lib/FFmpeg/libavutil/ripemd.o \
../lib/FFmpeg/libavutil/samplefmt.o \
../lib/FFmpeg/libavutil/sha.o \
../lib/FFmpeg/libavutil/sha512.o \
../lib/FFmpeg/libavutil/slicethread.o \
../lib/FFmpeg/libavutil/spherical.o \
../lib/FFmpeg/libavutil/stereo3d.o \
../lib/FFmpeg/libavutil/tea.o \
../lib/FFmpeg/libavutil/threadmessage.o \
../lib/FFmpeg/libavutil/time.o \
../lib/FFmpeg/libavutil/timecode.o \
../lib/FFmpeg/libavutil/tree.o \
../lib/FFmpeg/libavutil/twofish.o \
../lib/FFmpeg/libavutil/utils.o \
../lib/FFmpeg/libavutil/xga_font_data.o \
../lib/FFmpeg/libavutil/xtea.o 

OBJS += \
./lib/FFmpeg/libavutil/adler32.o \
./lib/FFmpeg/libavutil/aes.o \
./lib/FFmpeg/libavutil/aes_ctr.o \
./lib/FFmpeg/libavutil/audio_fifo.o \
./lib/FFmpeg/libavutil/avsscanf.o \
./lib/FFmpeg/libavutil/avstring.o \
./lib/FFmpeg/libavutil/base64.o \
./lib/FFmpeg/libavutil/blowfish.o \
./lib/FFmpeg/libavutil/bprint.o \
./lib/FFmpeg/libavutil/buffer.o \
./lib/FFmpeg/libavutil/camellia.o \
./lib/FFmpeg/libavutil/cast5.o \
./lib/FFmpeg/libavutil/channel_layout.o \
./lib/FFmpeg/libavutil/color_utils.o \
./lib/FFmpeg/libavutil/cpu.o \
./lib/FFmpeg/libavutil/crc.o \
./lib/FFmpeg/libavutil/cuda_check.o \
./lib/FFmpeg/libavutil/des.o \
./lib/FFmpeg/libavutil/dict.o \
./lib/FFmpeg/libavutil/display.o \
./lib/FFmpeg/libavutil/downmix_info.o \
./lib/FFmpeg/libavutil/encryption_info.o \
./lib/FFmpeg/libavutil/error.o \
./lib/FFmpeg/libavutil/eval.o \
./lib/FFmpeg/libavutil/fifo.o \
./lib/FFmpeg/libavutil/file.o \
./lib/FFmpeg/libavutil/file_open.o \
./lib/FFmpeg/libavutil/fixed_dsp.o \
./lib/FFmpeg/libavutil/float_dsp.o \
./lib/FFmpeg/libavutil/frame.o \
./lib/FFmpeg/libavutil/hash.o \
./lib/FFmpeg/libavutil/hdr_dynamic_metadata.o \
./lib/FFmpeg/libavutil/hmac.o \
./lib/FFmpeg/libavutil/hwcontext.o \
./lib/FFmpeg/libavutil/hwcontext_cuda.o \
./lib/FFmpeg/libavutil/hwcontext_d3d11va.o \
./lib/FFmpeg/libavutil/hwcontext_drm.o \
./lib/FFmpeg/libavutil/hwcontext_dxva2.o \
./lib/FFmpeg/libavutil/hwcontext_mediacodec.o \
./lib/FFmpeg/libavutil/hwcontext_opencl.o \
./lib/FFmpeg/libavutil/hwcontext_qsv.o \
./lib/FFmpeg/libavutil/hwcontext_vaapi.o \
./lib/FFmpeg/libavutil/hwcontext_vdpau.o \
./lib/FFmpeg/libavutil/hwcontext_videotoolbox.o \
./lib/FFmpeg/libavutil/imgutils.o \
./lib/FFmpeg/libavutil/integer.o \
./lib/FFmpeg/libavutil/intmath.o \
./lib/FFmpeg/libavutil/lfg.o \
./lib/FFmpeg/libavutil/lls.o \
./lib/FFmpeg/libavutil/log.o \
./lib/FFmpeg/libavutil/log2_tab.o \
./lib/FFmpeg/libavutil/lzo.o \
./lib/FFmpeg/libavutil/mastering_display_metadata.o \
./lib/FFmpeg/libavutil/mathematics.o \
./lib/FFmpeg/libavutil/md5.o \
./lib/FFmpeg/libavutil/mem.o \
./lib/FFmpeg/libavutil/murmur3.o \
./lib/FFmpeg/libavutil/opt.o \
./lib/FFmpeg/libavutil/parseutils.o \
./lib/FFmpeg/libavutil/pca.o \
./lib/FFmpeg/libavutil/pixdesc.o \
./lib/FFmpeg/libavutil/pixelutils.o \
./lib/FFmpeg/libavutil/random_seed.o \
./lib/FFmpeg/libavutil/rational.o \
./lib/FFmpeg/libavutil/rc4.o \
./lib/FFmpeg/libavutil/reverse.o \
./lib/FFmpeg/libavutil/ripemd.o \
./lib/FFmpeg/libavutil/samplefmt.o \
./lib/FFmpeg/libavutil/sha.o \
./lib/FFmpeg/libavutil/sha512.o \
./lib/FFmpeg/libavutil/slicethread.o \
./lib/FFmpeg/libavutil/spherical.o \
./lib/FFmpeg/libavutil/stereo3d.o \
./lib/FFmpeg/libavutil/tea.o \
./lib/FFmpeg/libavutil/threadmessage.o \
./lib/FFmpeg/libavutil/time.o \
./lib/FFmpeg/libavutil/timecode.o \
./lib/FFmpeg/libavutil/tree.o \
./lib/FFmpeg/libavutil/twofish.o \
./lib/FFmpeg/libavutil/utils.o \
./lib/FFmpeg/libavutil/xga_font_data.o \
./lib/FFmpeg/libavutil/xtea.o 

C_DEPS += \
./lib/FFmpeg/libavutil/adler32.d \
./lib/FFmpeg/libavutil/aes.d \
./lib/FFmpeg/libavutil/aes_ctr.d \
./lib/FFmpeg/libavutil/audio_fifo.d \
./lib/FFmpeg/libavutil/avsscanf.d \
./lib/FFmpeg/libavutil/avstring.d \
./lib/FFmpeg/libavutil/base64.d \
./lib/FFmpeg/libavutil/blowfish.d \
./lib/FFmpeg/libavutil/bprint.d \
./lib/FFmpeg/libavutil/buffer.d \
./lib/FFmpeg/libavutil/camellia.d \
./lib/FFmpeg/libavutil/cast5.d \
./lib/FFmpeg/libavutil/channel_layout.d \
./lib/FFmpeg/libavutil/color_utils.d \
./lib/FFmpeg/libavutil/cpu.d \
./lib/FFmpeg/libavutil/crc.d \
./lib/FFmpeg/libavutil/cuda_check.d \
./lib/FFmpeg/libavutil/des.d \
./lib/FFmpeg/libavutil/dict.d \
./lib/FFmpeg/libavutil/display.d \
./lib/FFmpeg/libavutil/downmix_info.d \
./lib/FFmpeg/libavutil/encryption_info.d \
./lib/FFmpeg/libavutil/error.d \
./lib/FFmpeg/libavutil/eval.d \
./lib/FFmpeg/libavutil/fifo.d \
./lib/FFmpeg/libavutil/file.d \
./lib/FFmpeg/libavutil/file_open.d \
./lib/FFmpeg/libavutil/fixed_dsp.d \
./lib/FFmpeg/libavutil/float_dsp.d \
./lib/FFmpeg/libavutil/frame.d \
./lib/FFmpeg/libavutil/hash.d \
./lib/FFmpeg/libavutil/hdr_dynamic_metadata.d \
./lib/FFmpeg/libavutil/hmac.d \
./lib/FFmpeg/libavutil/hwcontext.d \
./lib/FFmpeg/libavutil/hwcontext_cuda.d \
./lib/FFmpeg/libavutil/hwcontext_d3d11va.d \
./lib/FFmpeg/libavutil/hwcontext_drm.d \
./lib/FFmpeg/libavutil/hwcontext_dxva2.d \
./lib/FFmpeg/libavutil/hwcontext_mediacodec.d \
./lib/FFmpeg/libavutil/hwcontext_opencl.d \
./lib/FFmpeg/libavutil/hwcontext_qsv.d \
./lib/FFmpeg/libavutil/hwcontext_vaapi.d \
./lib/FFmpeg/libavutil/hwcontext_vdpau.d \
./lib/FFmpeg/libavutil/hwcontext_videotoolbox.d \
./lib/FFmpeg/libavutil/imgutils.d \
./lib/FFmpeg/libavutil/integer.d \
./lib/FFmpeg/libavutil/intmath.d \
./lib/FFmpeg/libavutil/lfg.d \
./lib/FFmpeg/libavutil/lls.d \
./lib/FFmpeg/libavutil/log.d \
./lib/FFmpeg/libavutil/log2_tab.d \
./lib/FFmpeg/libavutil/lzo.d \
./lib/FFmpeg/libavutil/mastering_display_metadata.d \
./lib/FFmpeg/libavutil/mathematics.d \
./lib/FFmpeg/libavutil/md5.d \
./lib/FFmpeg/libavutil/mem.d \
./lib/FFmpeg/libavutil/murmur3.d \
./lib/FFmpeg/libavutil/opt.d \
./lib/FFmpeg/libavutil/parseutils.d \
./lib/FFmpeg/libavutil/pca.d \
./lib/FFmpeg/libavutil/pixdesc.d \
./lib/FFmpeg/libavutil/pixelutils.d \
./lib/FFmpeg/libavutil/random_seed.d \
./lib/FFmpeg/libavutil/rational.d \
./lib/FFmpeg/libavutil/rc4.d \
./lib/FFmpeg/libavutil/reverse.d \
./lib/FFmpeg/libavutil/ripemd.d \
./lib/FFmpeg/libavutil/samplefmt.d \
./lib/FFmpeg/libavutil/sha.d \
./lib/FFmpeg/libavutil/sha512.d \
./lib/FFmpeg/libavutil/slicethread.d \
./lib/FFmpeg/libavutil/spherical.d \
./lib/FFmpeg/libavutil/stereo3d.d \
./lib/FFmpeg/libavutil/tea.d \
./lib/FFmpeg/libavutil/threadmessage.d \
./lib/FFmpeg/libavutil/time.d \
./lib/FFmpeg/libavutil/timecode.d \
./lib/FFmpeg/libavutil/tree.d \
./lib/FFmpeg/libavutil/twofish.d \
./lib/FFmpeg/libavutil/utils.d \
./lib/FFmpeg/libavutil/xga_font_data.d \
./lib/FFmpeg/libavutil/xtea.d 


# Each subdirectory must supply rules for building sources it contributes
lib/FFmpeg/libavutil/%.o: ../lib/FFmpeg/libavutil/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


