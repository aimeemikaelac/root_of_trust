################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../Debug/aes.cpp 

OBJS += \
./source/aes.o \
./source/secure_enclave_key_store_main.o 

CPP_DEPS += \
./source/aes.d \
./source/secure_enclave_key_store_main.d 


# Each subdirectory must supply rules for building sources it contributes
source/aes.o: /home/michael/xilinx_workspace/secure_enclave_key_store/Debug/aes.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -Isecure_enclave_key_store/src -I/Xilinx/Vivado_HLS/2016.2/include/etc -I/Xilinx/Vivado_HLS/2016.2/include/ap_sysc -I/Xilinx/Vivado_HLS/2016.2/lnx64/tools/systemc/include -I/Xilinx/Vivado_HLS/2016.2/include -I/home/michael/xilinx_workspace/secure_enclave_key_store/src -I/home/michael/xilinx_workspace -I/Xilinx/Vivado_HLS/2016.2/lnx64/tools/auto_cc/include -I/usr/local/ssl/include -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"source/aes.d" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

source/secure_enclave_key_store_main.o: /home/michael/xilinx_workspace/secure_enclave_key_store/src/secure_enclave_key_store_main.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -Isecure_enclave_key_store/src -I/Xilinx/Vivado_HLS/2016.2/include/etc -I/Xilinx/Vivado_HLS/2016.2/include/ap_sysc -I/Xilinx/Vivado_HLS/2016.2/lnx64/tools/systemc/include -I/Xilinx/Vivado_HLS/2016.2/include -I/home/michael/xilinx_workspace/secure_enclave_key_store/src -I/home/michael/xilinx_workspace -I/Xilinx/Vivado_HLS/2016.2/lnx64/tools/auto_cc/include -I/usr/local/ssl/include -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"source/secure_enclave_key_store_main.d" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


