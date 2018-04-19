// ==============================================================
// File generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.1
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ==============================================================

// AXILiteS
// 0x00 : Control signals
//        bit 0  - ap_start (Read/Write/COH)
//        bit 1  - ap_done (Read/COR)
//        bit 2  - ap_idle (Read)
//        bit 3  - ap_ready (Read)
//        bit 7  - auto_restart (Read/Write)
//        others - reserved
// 0x04 : Global Interrupt Enable Register
//        bit 0  - Global Interrupt Enable (Read/Write)
//        others - reserved
// 0x08 : IP Interrupt Enable Register (Read/Write)
//        bit 0  - Channel 0 (ap_done)
//        bit 1  - Channel 1 (ap_ready)
//        others - reserved
// 0x0c : IP Interrupt Status Register (Read/TOW)
//        bit 0  - Channel 0 (ap_done)
//        bit 1  - Channel 1 (ap_ready)
//        others - reserved
// 0x10 : Data signal of operation
//        bit 31~0 - operation[31:0] (Read/Write)
// 0x14 : Control signal of operation
//        bit 0  - operation_ap_vld (Read/Write/SC)
//        others - reserved
// 0x80 : Data signal of db_size_in
//        bit 31~0 - db_size_in[31:0] (Read/Write)
// 0x84 : reserved
// 0x88 : Data signal of error_out
//        bit 31~0 - error_out[31:0] (Read)
// 0x8c : reserved
// 0x90 : Data signal of contacts_size_out
//        bit 31~0 - contacts_size_out[31:0] (Read)
// 0x94 : reserved
// 0x40 ~
// 0x7f : Memory 'contact_in' (64 * 8b)
//        Word n : bit [ 7: 0] - contact_in[4n]
//                 bit [15: 8] - contact_in[4n+1]
//                 bit [23:16] - contact_in[4n+2]
//                 bit [31:24] - contact_in[4n+3]
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define XCONTACT_DISCOVERY_AXILITES_ADDR_AP_CTRL                0x00
#define XCONTACT_DISCOVERY_AXILITES_ADDR_GIE                    0x04
#define XCONTACT_DISCOVERY_AXILITES_ADDR_IER                    0x08
#define XCONTACT_DISCOVERY_AXILITES_ADDR_ISR                    0x0c
#define XCONTACT_DISCOVERY_AXILITES_ADDR_OPERATION_DATA         0x10
#define XCONTACT_DISCOVERY_AXILITES_BITS_OPERATION_DATA         32
#define XCONTACT_DISCOVERY_AXILITES_ADDR_OPERATION_CTRL         0x14
#define XCONTACT_DISCOVERY_AXILITES_ADDR_DB_SIZE_IN_DATA        0x80
#define XCONTACT_DISCOVERY_AXILITES_BITS_DB_SIZE_IN_DATA        32
#define XCONTACT_DISCOVERY_AXILITES_ADDR_ERROR_OUT_DATA         0x88
#define XCONTACT_DISCOVERY_AXILITES_BITS_ERROR_OUT_DATA         32
#define XCONTACT_DISCOVERY_AXILITES_ADDR_CONTACTS_SIZE_OUT_DATA 0x90
#define XCONTACT_DISCOVERY_AXILITES_BITS_CONTACTS_SIZE_OUT_DATA 32
#define XCONTACT_DISCOVERY_AXILITES_ADDR_CONTACT_IN_BASE        0x40
#define XCONTACT_DISCOVERY_AXILITES_ADDR_CONTACT_IN_HIGH        0x7f
#define XCONTACT_DISCOVERY_AXILITES_WIDTH_CONTACT_IN            8
#define XCONTACT_DISCOVERY_AXILITES_DEPTH_CONTACT_IN            64
