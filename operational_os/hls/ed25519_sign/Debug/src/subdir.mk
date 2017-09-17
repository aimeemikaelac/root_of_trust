################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/ed25519.c \
../src/test-internals.c \
../src/test.c 

OBJS += \
./src/ed25519.o \
./src/test-internals.o \
./src/test.o 

C_DEPS += \
./src/ed25519.d \
./src/test-internals.d \
./src/test.d 


# Each subdirectory must supply rules for building sources it contributes
src/%.o: ../src/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -DAESL_TB -D__llvm__ -D__llvm__ -I/Xilinx/Vivado_HLS/2017.1/include/ap_sysc -I/Xilinx/Vivado_HLS/2017.1/lnx64/tools/auto_cc/include -I/Xilinx/Vivado_HLS/2017.1/include/etc -I/Xilinx/Vivado_HLS/2017.1/include -I/Xilinx/Vivado_HLS/2017.1/lnx64/tools/systemc/include -I/home/michael/hardware_security/zcu102/root_of_trust/operational_os/hls -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


