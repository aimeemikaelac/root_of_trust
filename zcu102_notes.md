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
