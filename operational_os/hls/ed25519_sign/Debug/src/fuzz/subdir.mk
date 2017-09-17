################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/fuzz/curve25519-ref10.c \
../src/fuzz/ed25519-donna-sse2.c \
../src/fuzz/ed25519-donna.c \
../src/fuzz/ed25519-ref10.c \
../src/fuzz/fuzz-curve25519.c \
../src/fuzz/fuzz-ed25519.c 

OBJS += \
./src/fuzz/curve25519-ref10.o \
./src/fuzz/ed25519-donna-sse2.o \
./src/fuzz/ed25519-donna.o \
./src/fuzz/ed25519-ref10.o \
./src/fuzz/fuzz-curve25519.o \
./src/fuzz/fuzz-ed25519.o 

C_DEPS += \
./src/fuzz/curve25519-ref10.d \
./src/fuzz/ed25519-donna-sse2.d \
./src/fuzz/ed25519-donna.d \
./src/fuzz/ed25519-ref10.d \
./src/fuzz/fuzz-curve25519.d \
./src/fuzz/fuzz-ed25519.d 


# Each subdirectory must supply rules for building sources it contributes
src/fuzz/%.o: ../src/fuzz/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -DAESL_TB -D__llvm__ -D__llvm__ -I/Xilinx/Vivado_HLS/2017.1/include/ap_sysc -I/Xilinx/Vivado_HLS/2017.1/lnx64/tools/auto_cc/include -I/Xilinx/Vivado_HLS/2017.1/include/etc -I/Xilinx/Vivado_HLS/2017.1/include -I/Xilinx/Vivado_HLS/2017.1/lnx64/tools/systemc/include -I/home/michael/hardware_security/zcu102/root_of_trust/operational_os/hls -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


