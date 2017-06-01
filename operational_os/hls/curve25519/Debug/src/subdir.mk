################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/curve25519-donna.c 

OBJS += \
./src/curve25519-donna.o \
./src/donna_tb.o 

C_DEPS += \
./src/curve25519-donna.d \
./src/donna_tb.d 


# Each subdirectory must supply rules for building sources it contributes
src/%.o: ../src/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -DAESL_TB -D__llvm__ -D__llvm__ -I/Xilinx/Vivado_HLS/2017.1/include/ap_sysc -I/Xilinx/Vivado_HLS/2017.1/lnx64/tools/auto_cc/include -I/Xilinx/Vivado_HLS/2017.1/include/etc -I/Xilinx/Vivado_HLS/2017.1/include -I/home/michael/xilinx_workspace -I/Xilinx/Vivado_HLS/2017.1/lnx64/tools/systemc/include -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


