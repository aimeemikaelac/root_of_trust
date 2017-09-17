################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/secure_enclave_key_store_tb.cpp 

OBJS += \
./testbench/secure_enclave_key_store_tb.o 

CPP_DEPS += \
./testbench/secure_enclave_key_store_tb.d 


# Each subdirectory must supply rules for building sources it contributes
testbench/secure_enclave_key_store_tb.o: /home/michael/xilinx_workspace/secure_enclave_key_store/src/secure_enclave_key_store_tb.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -I../src -I../../../../../usr/local/ssl/include -I/Xilinx/Vivado_HLS/2016.2/include/etc -I/Xilinx/Vivado_HLS/2016.2/include/ap_sysc -I/Xilinx/Vivado_HLS/2016.2/lnx64/tools/systemc/include -I/Xilinx/Vivado_HLS/2016.2/include -I/home/michael/xilinx_workspace/secure_enclave_key_store/src -I/home/michael/xilinx_workspace -I/Xilinx/Vivado_HLS/2016.2/lnx64/tools/auto_cc/include -I/usr/local/ssl/include -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"testbench/secure_enclave_key_store_tb.d" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


