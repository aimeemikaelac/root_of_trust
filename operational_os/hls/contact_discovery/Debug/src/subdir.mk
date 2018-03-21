################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/contact_discovery.cpp 

C_SRCS += \
../src/aes.c 

OBJS += \
./src/aes.o \
./src/contact_discovery.o \
./src/contact_discovery_tb.o \
./src/sha512.o 

CPP_DEPS += \
./src/contact_discovery.d \
./src/contact_discovery_tb.d 

C_DEPS += \
./src/aes.d \
./src/sha512.d 


# Each subdirectory must supply rules for building sources it contributes
src/%.o: ../src/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -DAESL_TB -D__llvm__ -D__llvm__ -I/home/aimee/root_of_trust/operational_os/hls -I/Xilinx/Vivado_HLS/2017.2/include -I/Xilinx/Vivado_HLS/2017.2/lnx64/tools/auto_cc/include -I/Xilinx/Vivado_HLS/2017.2/include/etc -I/Xilinx/Vivado_HLS/2017.2/include/ap_sysc -I/Xilinx/Vivado_HLS/2017.2/lnx64/tools/systemc/include -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/%.o: ../src/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -DAESL_TB -D__llvm__ -D__llvm__ -I/home/aimee/root_of_trust/operational_os/hls -I/Xilinx/Vivado_HLS/2017.2/include -I/Xilinx/Vivado_HLS/2017.2/lnx64/tools/auto_cc/include -I/Xilinx/Vivado_HLS/2017.2/include/etc -I/Xilinx/Vivado_HLS/2017.2/include/ap_sysc -I/Xilinx/Vivado_HLS/2017.2/lnx64/tools/systemc/include -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


