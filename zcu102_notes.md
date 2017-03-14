# Notes about the ZCU102

## Getting the board to boot
- The Petalinux can be used to generate a working system using the [rev1 BSP](https://www.xilinx.com/member/forms/download/xef.html?filename=xilinx-zcu102-zu9-es2-rev1.0-v2016.4-final1.bsp&akdm=1)
  - The problem with this is that I can't figure out how to modify the device tree. I can change the kernel config and u-boot
  config, and even generate a boot image using the petalinux tools, but the devicetree won't update
