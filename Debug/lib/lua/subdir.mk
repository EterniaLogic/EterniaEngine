################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../lib/lua/lapi.c \
../lib/lua/lauxlib.c \
../lib/lua/lbaselib.c \
../lib/lua/lcode.c \
../lib/lua/lcorolib.c \
../lib/lua/lctype.c \
../lib/lua/ldblib.c \
../lib/lua/ldebug.c \
../lib/lua/ldo.c \
../lib/lua/ldump.c \
../lib/lua/lfunc.c \
../lib/lua/lgc.c \
../lib/lua/linit.c \
../lib/lua/liolib.c \
../lib/lua/llex.c \
../lib/lua/lmathlib.c \
../lib/lua/lmem.c \
../lib/lua/loadlib.c \
../lib/lua/lobject.c \
../lib/lua/lopcodes.c \
../lib/lua/loslib.c \
../lib/lua/lparser.c \
../lib/lua/lstate.c \
../lib/lua/lstring.c \
../lib/lua/lstrlib.c \
../lib/lua/ltable.c \
../lib/lua/ltablib.c \
../lib/lua/ltests.c \
../lib/lua/ltm.c \
../lib/lua/lua.c \
../lib/lua/lundump.c \
../lib/lua/lutf8lib.c \
../lib/lua/lvm.c \
../lib/lua/lzio.c 

O_SRCS += \
../lib/lua/lapi.o \
../lib/lua/lauxlib.o \
../lib/lua/lbaselib.o \
../lib/lua/lcode.o \
../lib/lua/lcorolib.o \
../lib/lua/lctype.o \
../lib/lua/ldblib.o \
../lib/lua/ldebug.o \
../lib/lua/ldo.o \
../lib/lua/ldump.o \
../lib/lua/lfunc.o \
../lib/lua/lgc.o \
../lib/lua/linit.o \
../lib/lua/liolib.o \
../lib/lua/llex.o \
../lib/lua/lmathlib.o \
../lib/lua/lmem.o \
../lib/lua/loadlib.o \
../lib/lua/lobject.o \
../lib/lua/lopcodes.o \
../lib/lua/loslib.o \
../lib/lua/lparser.o \
../lib/lua/lstate.o \
../lib/lua/lstring.o \
../lib/lua/lstrlib.o \
../lib/lua/ltable.o \
../lib/lua/ltablib.o \
../lib/lua/ltests.o \
../lib/lua/ltm.o \
../lib/lua/lua.o \
../lib/lua/lundump.o \
../lib/lua/lutf8lib.o \
../lib/lua/lvm.o \
../lib/lua/lzio.o 

OBJS += \
./lib/lua/lapi.o \
./lib/lua/lauxlib.o \
./lib/lua/lbaselib.o \
./lib/lua/lcode.o \
./lib/lua/lcorolib.o \
./lib/lua/lctype.o \
./lib/lua/ldblib.o \
./lib/lua/ldebug.o \
./lib/lua/ldo.o \
./lib/lua/ldump.o \
./lib/lua/lfunc.o \
./lib/lua/lgc.o \
./lib/lua/linit.o \
./lib/lua/liolib.o \
./lib/lua/llex.o \
./lib/lua/lmathlib.o \
./lib/lua/lmem.o \
./lib/lua/loadlib.o \
./lib/lua/lobject.o \
./lib/lua/lopcodes.o \
./lib/lua/loslib.o \
./lib/lua/lparser.o \
./lib/lua/lstate.o \
./lib/lua/lstring.o \
./lib/lua/lstrlib.o \
./lib/lua/ltable.o \
./lib/lua/ltablib.o \
./lib/lua/ltests.o \
./lib/lua/ltm.o \
./lib/lua/lua.o \
./lib/lua/lundump.o \
./lib/lua/lutf8lib.o \
./lib/lua/lvm.o \
./lib/lua/lzio.o 

C_DEPS += \
./lib/lua/lapi.d \
./lib/lua/lauxlib.d \
./lib/lua/lbaselib.d \
./lib/lua/lcode.d \
./lib/lua/lcorolib.d \
./lib/lua/lctype.d \
./lib/lua/ldblib.d \
./lib/lua/ldebug.d \
./lib/lua/ldo.d \
./lib/lua/ldump.d \
./lib/lua/lfunc.d \
./lib/lua/lgc.d \
./lib/lua/linit.d \
./lib/lua/liolib.d \
./lib/lua/llex.d \
./lib/lua/lmathlib.d \
./lib/lua/lmem.d \
./lib/lua/loadlib.d \
./lib/lua/lobject.d \
./lib/lua/lopcodes.d \
./lib/lua/loslib.d \
./lib/lua/lparser.d \
./lib/lua/lstate.d \
./lib/lua/lstring.d \
./lib/lua/lstrlib.d \
./lib/lua/ltable.d \
./lib/lua/ltablib.d \
./lib/lua/ltests.d \
./lib/lua/ltm.d \
./lib/lua/lua.d \
./lib/lua/lundump.d \
./lib/lua/lutf8lib.d \
./lib/lua/lvm.d \
./lib/lua/lzio.d 


# Each subdirectory must supply rules for building sources it contributes
lib/lua/%.o: ../lib/lua/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


