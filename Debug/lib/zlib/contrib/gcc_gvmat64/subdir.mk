################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
S_UPPER_SRCS += \
../lib/zlib/contrib/gcc_gvmat64/gvmat64.S 

OBJS += \
./lib/zlib/contrib/gcc_gvmat64/gvmat64.o 


# Each subdirectory must supply rules for building sources it contributes
lib/zlib/contrib/gcc_gvmat64/%.o: ../lib/zlib/contrib/gcc_gvmat64/%.S
	@echo 'Building file: $<'
	@echo 'Invoking: GCC Assembler'
	as  -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


