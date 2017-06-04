################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/sha512.cpp 

C_SRCS += \
../src/fe25519.c \
../src/ge25519.c \
../src/keypair.c \
../src/sc25519.c \
../src/sign.c 

OBJS += \
./src/fe25519.o \
./src/ge25519.o \
./src/keypair.o \
./src/sc25519.o \
./src/sha512.o \
./src/sign.o 

CPP_DEPS += \
./src/sha512.d 

C_DEPS += \
./src/fe25519.d \
./src/ge25519.d \
./src/keypair.d \
./src/sc25519.d \
./src/sign.d 


# Each subdirectory must supply rules for building sources it contributes
src/%.o: ../src/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -DAESL_TB -D__llvm__ -D__llvm__ -I/Xilinx/Vivado_HLS/2017.1/include/ap_sysc -I/Xilinx/Vivado_HLS/2017.1/lnx64/tools/auto_cc/include -I/Xilinx/Vivado_HLS/2017.1/include/etc -I/Xilinx/Vivado_HLS/2017.1/include -I/Xilinx/Vivado_HLS/2017.1/lnx64/tools/systemc/include -I/home/michael/hardware_security/zcu102/root_of_trust/operational_os/hls -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/%.o: ../src/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -DAESL_TB -D__llvm__ -D__llvm__ -I/Xilinx/Vivado_HLS/2017.1/include/ap_sysc -I/Xilinx/Vivado_HLS/2017.1/lnx64/tools/auto_cc/include -I/Xilinx/Vivado_HLS/2017.1/include/etc -I/Xilinx/Vivado_HLS/2017.1/include -I/Xilinx/Vivado_HLS/2017.1/lnx64/tools/systemc/include -I/home/michael/hardware_security/zcu102/root_of_trust/operational_os/hls -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


