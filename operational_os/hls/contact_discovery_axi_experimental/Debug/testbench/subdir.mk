################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/contact_discovery_tb.cpp 

OBJS += \
./testbench/contact_discovery_tb.o 

CPP_DEPS += \
./testbench/contact_discovery_tb.d 


# Each subdirectory must supply rules for building sources it contributes
testbench/contact_discovery_tb.o: /home/aimee/root_of_trust/operational_os/hls/contact_discovery_axi_experimental/src/contact_discovery_tb.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -DAESL_TB -D__llvm__ -D__llvm__ -I/home/aimee/root_of_trust/operational_os/hls -I/Xilinx/Vivado_HLS/2017.1/include/ap_sysc -I/Xilinx/Vivado_HLS/2017.1/lnx64/tools/auto_cc/include -I/Xilinx/Vivado_HLS/2017.1/include/etc -I/Xilinx/Vivado_HLS/2017.1/include -I/Xilinx/Vivado_HLS/2017.1/lnx64/tools/systemc/include -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


