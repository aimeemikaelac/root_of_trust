################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/axi_to_128_bit.cpp 

OBJS += \
./src/axi_to_128_bit.o \
./src/axi_to_128_bit_tb.o 

CPP_DEPS += \
./src/axi_to_128_bit.d \
./src/axi_to_128_bit_tb.d 


# Each subdirectory must supply rules for building sources it contributes
src/%.o: ../src/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -DAESL_TB -D__llvm__ -D__llvm__ -I/Xilinx/Vivado_HLS/2017.2/include -I/Xilinx/Vivado_HLS/2017.2/lnx64/tools/auto_cc/include -I/Xilinx/Vivado_HLS/2017.2/include/etc -I/Xilinx/Vivado_HLS/2017.2/include/ap_sysc -I/Xilinx/Vivado_HLS/2017.2/lnx64/tools/systemc/include -I/home/michael/hardware_security/zcu102/root_of_trust/operational_os/hls -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


