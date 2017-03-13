from distutils.core import setup, Extension

ext = Extension('fpga', 
                sources=["filesystem_fpga.c", 
                         "aes_basic_uio_driver/xaes_basic_linux.c", 
                         "aes_basic_uio_driver/xaes_basic_sinit.c",
                         "aes_basic_uio_driver/xaes_basic.c"],
                include_dirs=['aes_basic_uio_driver'])

setup(name='fpga', version='1.0', description='FPGA extensions for AES encrypted FUSE filesystem', ext_modules=[ext])
