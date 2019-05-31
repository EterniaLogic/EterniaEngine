################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../lib/FFmpeg/tools/aviocat.c \
../lib/FFmpeg/tools/coverity.c \
../lib/FFmpeg/tools/crypto_bench.c \
../lib/FFmpeg/tools/cws2fws.c \
../lib/FFmpeg/tools/enum_options.c \
../lib/FFmpeg/tools/ffescape.c \
../lib/FFmpeg/tools/ffeval.c \
../lib/FFmpeg/tools/ffhash.c \
../lib/FFmpeg/tools/fourcc2pixfmt.c \
../lib/FFmpeg/tools/graph2dot.c \
../lib/FFmpeg/tools/ismindex.c \
../lib/FFmpeg/tools/pktdumper.c \
../lib/FFmpeg/tools/probetest.c \
../lib/FFmpeg/tools/qt-faststart.c \
../lib/FFmpeg/tools/seek_print.c \
../lib/FFmpeg/tools/sidxindex.c \
../lib/FFmpeg/tools/sofa2wavs.c \
../lib/FFmpeg/tools/target_dec_fuzzer.c \
../lib/FFmpeg/tools/trasher.c \
../lib/FFmpeg/tools/uncoded_frame.c \
../lib/FFmpeg/tools/yuvcmp.c \
../lib/FFmpeg/tools/zmqsend.c 

OBJS += \
./lib/FFmpeg/tools/aviocat.o \
./lib/FFmpeg/tools/coverity.o \
./lib/FFmpeg/tools/crypto_bench.o \
./lib/FFmpeg/tools/cws2fws.o \
./lib/FFmpeg/tools/enum_options.o \
./lib/FFmpeg/tools/ffescape.o \
./lib/FFmpeg/tools/ffeval.o \
./lib/FFmpeg/tools/ffhash.o \
./lib/FFmpeg/tools/fourcc2pixfmt.o \
./lib/FFmpeg/tools/graph2dot.o \
./lib/FFmpeg/tools/ismindex.o \
./lib/FFmpeg/tools/pktdumper.o \
./lib/FFmpeg/tools/probetest.o \
./lib/FFmpeg/tools/qt-faststart.o \
./lib/FFmpeg/tools/seek_print.o \
./lib/FFmpeg/tools/sidxindex.o \
./lib/FFmpeg/tools/sofa2wavs.o \
./lib/FFmpeg/tools/target_dec_fuzzer.o \
./lib/FFmpeg/tools/trasher.o \
./lib/FFmpeg/tools/uncoded_frame.o \
./lib/FFmpeg/tools/yuvcmp.o \
./lib/FFmpeg/tools/zmqsend.o 

C_DEPS += \
./lib/FFmpeg/tools/aviocat.d \
./lib/FFmpeg/tools/coverity.d \
./lib/FFmpeg/tools/crypto_bench.d \
./lib/FFmpeg/tools/cws2fws.d \
./lib/FFmpeg/tools/enum_options.d \
./lib/FFmpeg/tools/ffescape.d \
./lib/FFmpeg/tools/ffeval.d \
./lib/FFmpeg/tools/ffhash.d \
./lib/FFmpeg/tools/fourcc2pixfmt.d \
./lib/FFmpeg/tools/graph2dot.d \
./lib/FFmpeg/tools/ismindex.d \
./lib/FFmpeg/tools/pktdumper.d \
./lib/FFmpeg/tools/probetest.d \
./lib/FFmpeg/tools/qt-faststart.d \
./lib/FFmpeg/tools/seek_print.d \
./lib/FFmpeg/tools/sidxindex.d \
./lib/FFmpeg/tools/sofa2wavs.d \
./lib/FFmpeg/tools/target_dec_fuzzer.d \
./lib/FFmpeg/tools/trasher.d \
./lib/FFmpeg/tools/uncoded_frame.d \
./lib/FFmpeg/tools/yuvcmp.d \
./lib/FFmpeg/tools/zmqsend.d 


# Each subdirectory must supply rules for building sources it contributes
lib/FFmpeg/tools/%.o: ../lib/FFmpeg/tools/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


