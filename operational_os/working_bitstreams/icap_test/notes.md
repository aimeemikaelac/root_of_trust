- Got working using the 2016.4 Linux kernel, ATF and u-boot. 

- Need to have a version of u-boot that doesn't look for a PMU fw else boot hangs.

- Using pmu fw makes memory-mapped access to FPGA from Linux kill the kernel

- Can build and modify the FSBL from the Xilinx embeddedsw repo for the 2016.4 tag
  - Need to use the fsbl to toggle the pcap_ctrl bit to enable the ICAP
  
- Need to use a device tree image that has the ethernet working
