#!/bin/bash

bootgen -image icap_test_add_five.bif -arch zynqmp -process_bitstream bin -w
bootgen -image icap_test_add_ten.bif -arch zynqmp -process_bitstream bin -w
