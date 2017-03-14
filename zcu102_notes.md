# Notes about the ZCU102

## Getting the board to boot
- Petalinux can be used to generate a working system using the [rev1 BSP](https://www.xilinx.com/member/forms/download/xef.html?filename=xilinx-zcu102-zu9-es2-rev1.0-v2016.4-final1.bsp&akdm=1)
  - The problem with this is that I can't figure out how to modify the device tree. I can change the kernel config and u-boot
  config, and even generate a boot image using the petalinux tools, but the devicetree won't update (any changes I make are
  overwritten, even when following Xilinx's instructions to prevent this from happening)
  - Petalinux will build a boot image (boot.bin) and a flattened image tree (image.ub) for you. The flattened image tree contains:
    - Kernel image
    - device tree (system.dtb)
  - There doesn't seem to be a way to build it such that it will recognize a device tree that is not in the image, as the
  u-boot in boot.bin will only look at image
  - Petalinux can be used to boot a Linux OS on the other partition of the SD card, such as an [aarch linaro distro](https://releases.linaro.org/ubuntu/images/developer-arm64/15.12/linaro-vivid-developer-20151215-114.tar.gz)
  - You can also use a different FSBl or u-boot .elf. Its only the device tree that can't be replaced
- To boot without petalinux:
  - Get a FSBL that is built for the rev1 ZCU102
  - Build the Xilinx Linux kernel for arm64 and the xilinx_zynqmp_defconfig target (Image)
  - Build the Xilinx u-boot for arm64 and the xilinx_zynqmp_zcu102_revB_defconfig target (u-boot.elf)
  - Get a device tree and modify to taste, from one of the reference designs or Petalinux (system.dtb)
    - The Xilinx u-boot overrides the bootargs in the device (the 'chosen' attribute in the device tree). This can be fixed by
    specifying the bootargs by setting u-boot variables at the boot command line or with uEnv.txt
  - A PMU firmware, which can be obtained from Petalinux
  - **Most important** You need something in TrustZone to boot the kernel after the FSBL boots
    - A boot image for the Zedboard can be built with material similar to the above items, but the ZCU102 requires a TrustZone
    bootloader of some sort. Petalinux builds this for you, but you would never know since it does not come up anywhere in the
    Xilinx documentation
    - A TrustZone-compatible bootloader can be obtained from Petalinux too (bl31.elf)
  - A bootgen .bif to create a boot image and put the different partitions in the right place
    - The TrustZone bootloader needs to be loaded into TrustZone
    - Examples/templates are available (or will be soon) in this repo somewhere
## Accssing the Board
- Make sure to turn off hardware control flow for any serial terminal connections to the uart (use the first of the 4 provided consoles, such as /dev/ttyUSB. The others are usually connected to the pmufw, the real-time processor and the power management unit)
-  The board does not seem to want to connect to all monitors. I've had success with a direct display port connection, but its impractical cause that is the monitor I connect to my laptop

## Generating a boot image on the ZCU102
- Xilinx for some reason will not disclose how to create a signed/encrypted boot image without bootgen
- Bootgen can be run on the board using qemu to emulate x86_64, in either system or binary emulation
  - In binary emulation, the needed x86_64 libraries (libc, etc...) need to be placed in the folders that the binary expects
  on the aarch file system. qemu-x86_64 will then execute bootgen successfully (not too many libraries need to be ported as
  bootgen appears to be statically linked)
  - System emulation requires a disk iamge containing an x86_64 fs, which takes up a lot of space and is very slow
