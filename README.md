# root_of_trust
Device-Locked Root-of-trust using hardware security systems of Xilinx ZCU102 board and Zynq Ultrascale+ SoC

Some of this code, especially the Xilinx SDK code references or makes use of the Xilinx SDK, which is available at the 
Xilinx website, with some open source components available on the [Xilinx GitHub](https://github.com/Xilinx/embeddedsw)

Currently, all functionality exists as python scripts that are called in booted Ubuntu systems or bare metal applications
built with the XSDK. For example, to run the provisioning OS, the stage 1 boot binary must be booted and then the provisioning
script called. In future, this will be done using a signed ramdisk image rather than the filesystem.

## Dependencies
The various scripts rely on certain Python packages, which in turn rely on certain Ubuntu packages.

Ubuntu packages:
- **python2**
- **python-pip**

Python packages:
- **pycryptodomex**
