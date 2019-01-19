################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../lib/cpython/Parser/acceler.c \
../lib/cpython/Parser/bitset.c \
../lib/cpython/Parser/firstsets.c \
../lib/cpython/Parser/grammar.c \
../lib/cpython/Parser/grammar1.c \
../lib/cpython/Parser/listnode.c \
../lib/cpython/Parser/metagrammar.c \
../lib/cpython/Parser/myreadline.c \
../lib/cpython/Parser/node.c \
../lib/cpython/Parser/parser.c \
../lib/cpython/Parser/parsetok.c \
../lib/cpython/Parser/parsetok_pgen.c \
../lib/cpython/Parser/pgen.c \
../lib/cpython/Parser/pgenmain.c \
../lib/cpython/Parser/printgrammar.c \
../lib/cpython/Parser/token.c \
../lib/cpython/Parser/tokenizer.c \
../lib/cpython/Parser/tokenizer_pgen.c 

O_SRCS += \
../lib/cpython/Parser/acceler.o \
../lib/cpython/Parser/bitset.o \
../lib/cpython/Parser/firstsets.o \
../lib/cpython/Parser/grammar.o \
../lib/cpython/Parser/grammar1.o \
../lib/cpython/Parser/listnode.o \
../lib/cpython/Parser/metagrammar.o \
../lib/cpython/Parser/myreadline.o \
../lib/cpython/Parser/node.o \
../lib/cpython/Parser/parser.o \
../lib/cpython/Parser/parsetok.o \
../lib/cpython/Parser/pgen.o \
../lib/cpython/Parser/token.o \
../lib/cpython/Parser/tokenizer.o 

OBJS += \
./lib/cpython/Parser/acceler.o \
./lib/cpython/Parser/bitset.o \
./lib/cpython/Parser/firstsets.o \
./lib/cpython/Parser/grammar.o \
./lib/cpython/Parser/grammar1.o \
./lib/cpython/Parser/listnode.o \
./lib/cpython/Parser/metagrammar.o \
./lib/cpython/Parser/myreadline.o \
./lib/cpython/Parser/node.o \
./lib/cpython/Parser/parser.o \
./lib/cpython/Parser/parsetok.o \
./lib/cpython/Parser/parsetok_pgen.o \
./lib/cpython/Parser/pgen.o \
./lib/cpython/Parser/pgenmain.o \
./lib/cpython/Parser/printgrammar.o \
./lib/cpython/Parser/token.o \
./lib/cpython/Parser/tokenizer.o \
./lib/cpython/Parser/tokenizer_pgen.o 

C_DEPS += \
./lib/cpython/Parser/acceler.d \
./lib/cpython/Parser/bitset.d \
./lib/cpython/Parser/firstsets.d \
./lib/cpython/Parser/grammar.d \
./lib/cpython/Parser/grammar1.d \
./lib/cpython/Parser/listnode.d \
./lib/cpython/Parser/metagrammar.d \
./lib/cpython/Parser/myreadline.d \
./lib/cpython/Parser/node.d \
./lib/cpython/Parser/parser.d \
./lib/cpython/Parser/parsetok.d \
./lib/cpython/Parser/parsetok_pgen.d \
./lib/cpython/Parser/pgen.d \
./lib/cpython/Parser/pgenmain.d \
./lib/cpython/Parser/printgrammar.d \
./lib/cpython/Parser/token.d \
./lib/cpython/Parser/tokenizer.d \
./lib/cpython/Parser/tokenizer_pgen.d 


# Each subdirectory must supply rules for building sources it contributes
lib/cpython/Parser/%.o: ../lib/cpython/Parser/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


