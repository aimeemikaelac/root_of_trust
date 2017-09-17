################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/aes.cpp \
../src/secure_enclave_key_store_main.cpp \
../src/secure_enclave_key_store_tb.cpp 

C_SRCS += \
../src/aes.c 

OBJS += \
./testbench/src/aes.o \
./testbench/src/secure_enclave_key_store_main.o \
./testbench/src/secure_enclave_key_store_tb.o 

CPP_DEPS += \
./testbench/src/aes.d \
./testbench/src/secure_enclave_key_store_main.d \
./testbench/src/secure_enclave_key_store_tb.d 

C_DEPS += \
./testbench/src/aes.d 


# Each subdirectory must supply rules for building sources it contributes
testbench/src/aes.o: /home/michael/xilinx_workspace/secure_enclave_key_store/src/aes.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -DAESL_TB -D__llvm__ -D__llvm__ -I/Xilinx/Vivado_HLS/2016.2/include/etc -I/Xilinx/Vivado_HLS/2016.2/include/ap_sysc -I/Xilinx/Vivado_HLS/2016.2/lnx64/tools/systemc/include -I/Xilinx/Vivado_HLS/2016.2/include -I/home/michael/xilinx_workspace/. -I/home/michael/xilinx_workspace -I/Xilinx/Vivado_HLS/2016.2/lnx64/tools/auto_cc/include -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

testbench/src/aes.o: /home/michael/xilinx_workspace/secure_enclave_key_store/src/aes.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -DAESL_TB -D__llvm__ -D__llvm__ -I/Xilinx/Vivado_HLS/2016.2/include/etc -I/Xilinx/Vivado_HLS/2016.2/include/ap_sysc -I/Xilinx/Vivado_HLS/2016.2/lnx64/tools/systemc/include -I/Xilinx/Vivado_HLS/2016.2/include -I/home/michael/xilinx_workspace/. -I/home/michael/xilinx_workspace -I/Xilinx/Vivado_HLS/2016.2/lnx64/tools/auto_cc/include -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

testbench/src/secure_enclave_key_store_main.o: /home/michael/xilinx_workspace/secure_enclave_key_store/src/secure_enclave_key_store_main.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -DAESL_TB -D__llvm__ -D__llvm__ -I/Xilinx/Vivado_HLS/2016.2/include/etc -I/Xilinx/Vivado_HLS/2016.2/include/ap_sysc -I/Xilinx/Vivado_HLS/2016.2/lnx64/tools/systemc/include -I/Xilinx/Vivado_HLS/2016.2/include -I/home/michael/xilinx_workspace/. -I/home/michael/xilinx_workspace -I/Xilinx/Vivado_HLS/2016.2/lnx64/tools/auto_cc/include -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

testbench/src/secure_enclave_key_store_tb.o: /home/michael/xilinx_workspace/secure_enclave_key_store/src/secure_enclave_key_store_tb.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -DAESL_TB -D__llvm__ -D__llvm__ -I/Xilinx/Vivado_HLS/2016.2/include/etc -I/Xilinx/Vivado_HLS/2016.2/include/ap_sysc -I/Xilinx/Vivado_HLS/2016.2/lnx64/tools/systemc/include -I/Xilinx/Vivado_HLS/2016.2/include -I/home/michael/xilinx_workspace/. -I/home/michael/xilinx_workspace -I/Xilinx/Vivado_HLS/2016.2/lnx64/tools/auto_cc/include -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


