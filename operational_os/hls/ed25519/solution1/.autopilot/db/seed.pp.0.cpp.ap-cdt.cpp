#pragma line 1 "ed25519/src/seed.cpp"
#pragma line 1 "ed25519/src/seed.cpp" 1
#pragma line 1 "<built-in>" 1
#pragma line 1 "<built-in>" 3
#pragma line 155 "<built-in>" 3
#pragma line 1 "<command line>" 1
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma line 1 "/Xilinx/Vivado_HLS/2017.1/common/technology/autopilot/etc/autopilot_ssdm_op.h" 1
/* autopilot_ssdm_op.h*/
/*
#-  (c) Copyright 2011-2017 Xilinx, Inc. All rights reserved.
#-
#-  This file contains confidential and proprietary information
#-  of Xilinx, Inc. and is protected under U.S. and
#-  international copyright and other intellectual property
#-  laws.
#-
#-  DISCLAIMER
#-  This disclaimer is not a license and does not grant any
#-  rights to the materials distributed herewith. Except as
#-  otherwise provided in a valid license issued to you by
#-  Xilinx, and to the maximum extent permitted by applicable
#-  law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
#-  WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
#-  AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
#-  BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
#-  INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
#-  (2) Xilinx shall not be liable (whether in contract or tort,
#-  including negligence, or under any other theory of
#-  liability) for any loss or damage of any kind or nature
#-  related to, arising under or in connection with these
#-  materials, including for any direct, or any indirect,
#-  special, incidental, or consequential loss or damage
#-  (including loss of data, profits, goodwill, or any type of
#-  loss or damage suffered as a result of any action brought
#-  by a third party) even if such damage or loss was
#-  reasonably foreseeable or Xilinx had been advised of the
#-  possibility of the same.
#-
#-  CRITICAL APPLICATIONS
#-  Xilinx products are not designed or intended to be fail-
#-  safe, or for use in any application requiring fail-safe
#-  performance, such as life-support or safety devices or
#-  systems, Class III medical devices, nuclear facilities,
#-  applications related to the deployment of airbags, or any
#-  other applications that could lead to death, personal
#-  injury, or severe property or environmental damage
#-  (individually and collectively, "Critical
#-  Applications"). Customer assumes the sole risk and
#-  liability of any use of Xilinx products in Critical
#-  Applications, subject only to applicable laws and
#-  regulations governing limitations on product liability.
#-
#-  THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
#-  PART OF THIS FILE AT ALL TIMES. 
#- ************************************************************************
#pragma empty_line
 *
 * $Id$
 */
#pragma line 145 "/Xilinx/Vivado_HLS/2017.1/common/technology/autopilot/etc/autopilot_ssdm_op.h"
/*#define AP_SPEC_ATTR __attribute__ ((pure))*/
//adu: patched
#pragma line 156 "/Xilinx/Vivado_HLS/2017.1/common/technology/autopilot/etc/autopilot_ssdm_op.h"
extern "C" {
#pragma empty_line
    /****** SSDM Intrinsics: OPERATIONS ***/
    // Interface operations
#pragma empty_line
    //typedef unsigned int __attribute__ ((bitwidth(1))) _uint1_;
    typedef bool _uint1_;
#pragma empty_line
    void _ssdm_op_IfRead(...) __attribute__ ((nothrow));
    void _ssdm_op_IfWrite(...) __attribute__ ((nothrow));
    _uint1_ _ssdm_op_IfNbRead(...) __attribute__ ((nothrow));
    _uint1_ _ssdm_op_IfNbWrite(...) __attribute__ ((nothrow));
    _uint1_ _ssdm_op_IfCanRead(...) __attribute__ ((nothrow));
    _uint1_ _ssdm_op_IfCanWrite(...) __attribute__ ((nothrow));
#pragma empty_line
    // Stream Intrinsics
    void _ssdm_StreamRead(...) __attribute__ ((nothrow));
    void _ssdm_StreamWrite(...) __attribute__ ((nothrow));
    _uint1_ _ssdm_StreamNbRead(...) __attribute__ ((nothrow));
    _uint1_ _ssdm_StreamNbWrite(...) __attribute__ ((nothrow));
    _uint1_ _ssdm_StreamCanRead(...) __attribute__ ((nothrow));
    _uint1_ _ssdm_StreamCanWrite(...) __attribute__ ((nothrow));
    unsigned _ssdm_StreamSize(...) __attribute__ ((nothrow));
#pragma empty_line
    // Misc
    void _ssdm_op_MemShiftRead(...) __attribute__ ((nothrow));
#pragma empty_line
    void _ssdm_op_Wait(...) __attribute__ ((nothrow));
    void _ssdm_op_Poll(...) __attribute__ ((nothrow));
#pragma empty_line
    void _ssdm_op_Return(...) __attribute__ ((nothrow));
#pragma empty_line
    /* SSDM Intrinsics: SPECIFICATIONS */
    void _ssdm_op_SpecSynModule(...) __attribute__ ((nothrow));
    void _ssdm_op_SpecTopModule(...) __attribute__ ((nothrow));
    void _ssdm_op_SpecProcessDecl(...) __attribute__ ((nothrow));
    void _ssdm_op_SpecProcessDef(...) __attribute__ ((nothrow));
    void _ssdm_op_SpecPort(...) __attribute__ ((nothrow));
    void _ssdm_op_SpecConnection(...) __attribute__ ((nothrow));
    void _ssdm_op_SpecChannel(...) __attribute__ ((nothrow));
    void _ssdm_op_SpecSensitive(...) __attribute__ ((nothrow));
    void _ssdm_op_SpecModuleInst(...) __attribute__ ((nothrow));
    void _ssdm_op_SpecPortMap(...) __attribute__ ((nothrow));
#pragma empty_line
    void _ssdm_op_SpecReset(...) __attribute__ ((nothrow));
#pragma empty_line
    void _ssdm_op_SpecPlatform(...) __attribute__ ((nothrow));
    void _ssdm_op_SpecClockDomain(...) __attribute__ ((nothrow));
    void _ssdm_op_SpecPowerDomain(...) __attribute__ ((nothrow));
#pragma empty_line
    int _ssdm_op_SpecRegionBegin(...) __attribute__ ((nothrow));
    int _ssdm_op_SpecRegionEnd(...) __attribute__ ((nothrow));
#pragma empty_line
    void _ssdm_op_SpecLoopName(...) __attribute__ ((nothrow));
#pragma empty_line
    void _ssdm_op_SpecLoopTripCount(...) __attribute__ ((nothrow));
#pragma empty_line
    int _ssdm_op_SpecStateBegin(...) __attribute__ ((nothrow));
    int _ssdm_op_SpecStateEnd(...) __attribute__ ((nothrow));
#pragma empty_line
    void _ssdm_op_SpecInterface(...) __attribute__ ((nothrow));
#pragma empty_line
    void _ssdm_op_SpecPipeline(...) __attribute__ ((nothrow));
    void _ssdm_op_SpecDataflowPipeline(...) __attribute__ ((nothrow));
#pragma empty_line
#pragma empty_line
    void _ssdm_op_SpecLatency(...) __attribute__ ((nothrow));
    void _ssdm_op_SpecParallel(...) __attribute__ ((nothrow));
    void _ssdm_op_SpecProtocol(...) __attribute__ ((nothrow));
    void _ssdm_op_SpecOccurrence(...) __attribute__ ((nothrow));
#pragma empty_line
    void _ssdm_op_SpecResource(...) __attribute__ ((nothrow));
    void _ssdm_op_SpecResourceLimit(...) __attribute__ ((nothrow));
    void _ssdm_op_SpecCHCore(...) __attribute__ ((nothrow));
    void _ssdm_op_SpecFUCore(...) __attribute__ ((nothrow));
    void _ssdm_op_SpecIFCore(...) __attribute__ ((nothrow));
    void _ssdm_op_SpecIPCore(...) __attribute__ ((nothrow));
    void _ssdm_op_SpecKeepValue(...) __attribute__ ((nothrow));
    void _ssdm_op_SpecMemCore(...) __attribute__ ((nothrow));
#pragma empty_line
    void _ssdm_op_SpecExt(...) __attribute__ ((nothrow));
    /*void* _ssdm_op_SpecProcess(...) SSDM_SPEC_ATTR;
    void* _ssdm_op_SpecEdge(...) SSDM_SPEC_ATTR; */
#pragma empty_line
    /* Presynthesis directive functions */
    void _ssdm_SpecArrayDimSize(...) __attribute__ ((nothrow));
#pragma empty_line
    void _ssdm_RegionBegin(...) __attribute__ ((nothrow));
    void _ssdm_RegionEnd(...) __attribute__ ((nothrow));
#pragma empty_line
    void _ssdm_Unroll(...) __attribute__ ((nothrow));
    void _ssdm_UnrollRegion(...) __attribute__ ((nothrow));
#pragma empty_line
    void _ssdm_InlineAll(...) __attribute__ ((nothrow));
    void _ssdm_InlineLoop(...) __attribute__ ((nothrow));
    void _ssdm_Inline(...) __attribute__ ((nothrow));
    void _ssdm_InlineSelf(...) __attribute__ ((nothrow));
    void _ssdm_InlineRegion(...) __attribute__ ((nothrow));
#pragma empty_line
    void _ssdm_SpecArrayMap(...) __attribute__ ((nothrow));
    void _ssdm_SpecArrayPartition(...) __attribute__ ((nothrow));
    void _ssdm_SpecArrayReshape(...) __attribute__ ((nothrow));
#pragma empty_line
    void _ssdm_SpecStream(...) __attribute__ ((nothrow));
#pragma empty_line
    void _ssdm_SpecExpr(...) __attribute__ ((nothrow));
    void _ssdm_SpecExprBalance(...) __attribute__ ((nothrow));
#pragma empty_line
    void _ssdm_SpecDependence(...) __attribute__ ((nothrow));
#pragma empty_line
    void _ssdm_SpecLoopMerge(...) __attribute__ ((nothrow));
    void _ssdm_SpecLoopFlatten(...) __attribute__ ((nothrow));
    void _ssdm_SpecLoopRewind(...) __attribute__ ((nothrow));
#pragma empty_line
    void _ssdm_SpecFuncInstantiation(...) __attribute__ ((nothrow));
    void _ssdm_SpecFuncBuffer(...) __attribute__ ((nothrow));
    void _ssdm_SpecFuncExtract(...) __attribute__ ((nothrow));
    void _ssdm_SpecConstant(...) __attribute__ ((nothrow));
#pragma empty_line
    void _ssdm_DataPack(...) __attribute__ ((nothrow));
    void _ssdm_SpecDataPack(...) __attribute__ ((nothrow));
#pragma empty_line
    void _ssdm_op_SpecBitsMap(...) __attribute__ ((nothrow));
    void _ssdm_op_SpecLicense(...) __attribute__ ((nothrow));
#pragma empty_line
    void __xilinx_ip_top(...) __attribute__ ((nothrow));
#pragma empty_line
#pragma empty_line
}
#pragma line 413 "/Xilinx/Vivado_HLS/2017.1/common/technology/autopilot/etc/autopilot_ssdm_op.h"
/*#define _ssdm_op_WaitUntil(X) while (!(X)) _ssdm_op_Wait(1);
#define _ssdm_op_Delayed(X) X */
#pragma line 427 "/Xilinx/Vivado_HLS/2017.1/common/technology/autopilot/etc/autopilot_ssdm_op.h"
// 67d7842dbbe25473c3c32b93c0da8047785f30d78e8a024de1b57352245f9689
#pragma line 7 "<command line>" 2
#pragma line 1 "<built-in>" 2
#pragma line 1 "ed25519/src/seed.cpp" 2
#pragma line 1 "ed25519/src/ed25519.h" 1
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma line 1 "/Xilinx/Vivado_HLS/2017.1/lnx64/tools/clang/bin/../lib/clang/3.1/include/stddef.h" 1 3
/*===---- stddef.h - Basic type definitions --------------------------------===
 *
 * Copyright (c) 2008 Eli Friedman
 *
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to deal
 * in the Software without restriction, including without limitation the rights
 * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in
 * all copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
 * THE SOFTWARE.
 *
 *===-----------------------------------------------------------------------===
 */
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
typedef __typeof__(((int*)0)-((int*)0)) ptrdiff_t;
#pragma empty_line
#pragma empty_line
#pragma empty_line
typedef __typeof__(sizeof(int)) size_t;
#pragma line 56 "/Xilinx/Vivado_HLS/2017.1/lnx64/tools/clang/bin/../lib/clang/3.1/include/stddef.h" 3
/* Some C libraries expect to see a wint_t here. Others (notably MinGW) will use
__WINT_TYPE__ directly; accommodate both by requiring __need_wint_t */
#pragma line 5 "ed25519/src/ed25519.h" 2
#pragma line 1 "/Xilinx/Vivado_HLS/2017.1/common/technology/autopilot/hls_stream.h" 1
/* -*- c++ -*-*/
/*
#-  (c) Copyright 2011-2017 Xilinx, Inc. All rights reserved.
#-
#-  This file contains confidential and proprietary information
#-  of Xilinx, Inc. and is protected under U.S. and
#-  international copyright and other intellectual property
#-  laws.
#-
#-  DISCLAIMER
#-  This disclaimer is not a license and does not grant any
#-  rights to the materials distributed herewith. Except as
#-  otherwise provided in a valid license issued to you by
#-  Xilinx, and to the maximum extent permitted by applicable
#-  law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
#-  WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
#-  AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
#-  BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
#-  INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
#-  (2) Xilinx shall not be liable (whether in contract or tort,
#-  including negligence, or under any other theory of
#-  liability) for any loss or damage of any kind or nature
#-  related to, arising under or in connection with these
#-  materials, including for any direct, or any indirect,
#-  special, incidental, or consequential loss or damage
#-  (including loss of data, profits, goodwill, or any type of
#-  loss or damage suffered as a result of any action brought
#-  by a third party) even if such damage or loss was
#-  reasonably foreseeable or Xilinx had been advised of the
#-  possibility of the same.
#-
#-  CRITICAL APPLICATIONS
#-  Xilinx products are not designed or intended to be fail-
#-  safe, or for use in any application requiring fail-safe
#-  performance, such as life-support or safety devices or
#-  systems, Class III medical devices, nuclear facilities,
#-  applications related to the deployment of airbags, or any
#-  other applications that could lead to death, personal
#-  injury, or severe property or environmental damage
#-  (individually and collectively, "Critical
#-  Applications"). Customer assumes the sole risk and
#-  liability of any use of Xilinx products in Critical
#-  Applications, subject only to applicable laws and
#-  regulations governing limitations on product liability.
#-
#-  THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
#-  PART OF THIS FILE AT ALL TIMES. 
#- ************************************************************************
#pragma empty_line
 *
 *
 */
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
/*
 * This file contains a C++ model of hls::stream.
 * It defines AutoESL synthesis model.
 */
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma line 1 "/Xilinx/Vivado_HLS/2017.1/common/technology/autopilot/etc/autopilot_enum.h" 1
/*
#-  (c) Copyright 2011-2017 Xilinx, Inc. All rights reserved.
#-
#-  This file contains confidential and proprietary information
#-  of Xilinx, Inc. and is protected under U.S. and
#-  international copyright and other intellectual property
#-  laws.
#-
#-  DISCLAIMER
#-  This disclaimer is not a license and does not grant any
#-  rights to the materials distributed herewith. Except as
#-  otherwise provided in a valid license issued to you by
#-  Xilinx, and to the maximum extent permitted by applicable
#-  law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
#-  WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
#-  AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
#-  BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
#-  INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
#-  (2) Xilinx shall not be liable (whether in contract or tort,
#-  including negligence, or under any other theory of
#-  liability) for any loss or damage of any kind or nature
#-  related to, arising under or in connection with these
#-  materials, including for any direct, or any indirect,
#-  special, incidental, or consequential loss or damage
#-  (including loss of data, profits, goodwill, or any type of
#-  loss or damage suffered as a result of any action brought
#-  by a third party) even if such damage or loss was
#-  reasonably foreseeable or Xilinx had been advised of the
#-  possibility of the same.
#-
#-  CRITICAL APPLICATIONS
#-  Xilinx products are not designed or intended to be fail-
#-  safe, or for use in any application requiring fail-safe
#-  performance, such as life-support or safety devices or
#-  systems, Class III medical devices, nuclear facilities,
#-  applications related to the deployment of airbags, or any
#-  other applications that could lead to death, personal
#-  injury, or severe property or environmental damage
#-  (individually and collectively, "Critical
#-  Applications"). Customer assumes the sole risk and
#-  liability of any use of Xilinx products in Critical
#-  Applications, subject only to applicable laws and
#-  regulations governing limitations on product liability.
#-
#-  THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
#-  PART OF THIS FILE AT ALL TIMES. 
#- ************************************************************************
#pragma empty_line
 *
 * $Id$
 */
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
/* Data Types */
enum SsdmDataTypes {
    _ssdm_sc_int = 0,
    _ssdm_c_int = _ssdm_sc_int,
    _ssdm_sc_uint = 1,
    _ssdm_c_uint = _ssdm_sc_uint,
    _ssdm_sc_bigint = 2,
    _ssdm_sc_biguint = 3,
};
#pragma empty_line
#pragma empty_line
/* Ports */
enum SsdmPortTypes {
    _ssdm_sc_in = 0,
    _ssdm_sc_out = 1,
    _ssdm_sc_inout = 2,
    _ssdm_sc_in_clk,
#pragma empty_line
    _ssdm_fifo_in,
    _ssdm_sc_fifo_in = _ssdm_fifo_in,
    _ssdm_tlm_fifo_in = _ssdm_fifo_in,
    _ssdm_fifo_out,
    _ssdm_sc_fifo_out = _ssdm_fifo_out,
    _ssdm_tlm_fifo_out = _ssdm_fifo_out,
    _ssdm_fifo_inout,
    _ssdm_sc_fifo_inout = _ssdm_fifo_inout,
    _ssdm_tlm_fifo_inout = _ssdm_fifo_inout,
    _ssdm_sc_bus,
    _ssdm_hls_bus_port = _ssdm_sc_bus,
    _ssdm_AXI4M_bus_port = _ssdm_sc_bus,
    _ssdm_port_end,
};
#pragma empty_line
#pragma empty_line
/* Threads (Processes) */
enum SsdmProcessTypes {
    _ssdm_method = 0,
    _ssdm_sc_method = _ssdm_method,
    _ssdm_thread = 1,
    _ssdm_sc_thread = _ssdm_thread,
    _ssdm_cthread = 2,
    _ssdm_sc_cthread = _ssdm_cthread,
    _ssdm_process_end,
};
#pragma empty_line
#pragma empty_line
/* Threads (Processes) */
enum SsdmSensitiveTypes {
    _ssdm_sensitive = 0,
    _ssdm_sensitive_pos,
    _ssdm_sensitive_neg,
    _ssdm_sensitive_reset0, /* Level = High*/
    _ssdm_sensitive_reset1, /* Level = Low*/
    _ssdm_sensitive_end,
};
#pragma empty_line
#pragma empty_line
/* Channels */
enum SsdmChannelTypes {
    _ssdm_sc_sig,
    _ssdm_fifo,
    _ssdm_sc_fifo = _ssdm_fifo,
    _ssdm_mem_fifo,
    _ssdm_sc_mem_fifo = _ssdm_mem_fifo,
};
#pragma empty_line
/* Regions */
enum SsdmRegionTypes {
    _ssdm_region_reset,
    _ssdm_region_protocol,
    _ssdm_region_pipeline,
    _ssdm_region_parallel,
};
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
// 67d7842dbbe25473c3c32b93c0da8047785f30d78e8a024de1b57352245f9689
#pragma line 67 "/Xilinx/Vivado_HLS/2017.1/common/technology/autopilot/hls_stream.h" 2
#pragma empty_line
#pragma empty_line
namespace hls {
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
//////////////////////////////////////////////
// Synthesis models for stream
//////////////////////////////////////////////
template<typename __STREAM_T__>
class stream
{
  public:
    /// Constructors
    inline __attribute__((always_inline)) stream() {
    }
#pragma empty_line
    inline __attribute__((always_inline)) stream(const char* name) {
    }
#pragma empty_line
  /// Make copy constructor and assignment operator private
  private:
    inline __attribute__((always_inline)) stream(const stream< __STREAM_T__ >& chn):V(chn.V) {
    }
#pragma empty_line
    inline __attribute__((always_inline)) stream& operator= (const stream< __STREAM_T__ >& chn) {
        V = chn.V;
        return *this;
    }
#pragma empty_line
  public:
    /// Overload >> and << operators to implement read() and write()
    inline __attribute__((always_inline)) void operator >> (__STREAM_T__& rdata) {
        read(rdata);
    }
#pragma empty_line
    inline __attribute__((always_inline)) void operator << (const __STREAM_T__& wdata) {
        write(wdata);
    }
#pragma empty_line
  /// Public API
  public:
    /// Empty & Full
    inline __attribute__((always_inline)) bool empty() const {
        bool tmp = _ssdm_StreamCanRead(&V);
        return !tmp;
    }
#pragma empty_line
    inline __attribute__((always_inline)) bool full() const {
        bool tmp = _ssdm_StreamCanWrite(&V);
        return !tmp;
    }
#pragma empty_line
    /// Blocking read
    inline __attribute__((always_inline)) void read(__STREAM_T__& dout) {
        __STREAM_T__ tmp;
        _ssdm_StreamRead(&V, &tmp);
        dout = tmp;
    }
#pragma empty_line
    inline __attribute__((always_inline)) __STREAM_T__ read() {
        __STREAM_T__ tmp;
        _ssdm_StreamRead(&V, &tmp);
        return tmp;
    }
#pragma empty_line
    /// Nonblocking read
    inline __attribute__((always_inline)) bool read_nb(__STREAM_T__& dout) {
        __STREAM_T__ tmp;
        bool empty_n = _ssdm_StreamNbRead(&V, &tmp);
        dout = tmp;
        return empty_n;
    }
#pragma empty_line
    /// Blocking write
    inline __attribute__((always_inline)) void write(const __STREAM_T__& din) {
        __STREAM_T__ tmp = din;
        _ssdm_StreamWrite(&V, &tmp);
    }
#pragma empty_line
    /// Nonblocking write
    inline __attribute__((always_inline)) bool write_nb(const __STREAM_T__& din) {
        __STREAM_T__ tmp = din;
        bool full_n = _ssdm_StreamNbWrite(&V, &tmp);
        return full_n;
    }
#pragma empty_line
    /// Fifo size
    inline __attribute__((always_inline)) unsigned size() {
        unsigned size = _ssdm_StreamSize(&V);
        return size;
    }
#pragma empty_line
  public:
    __STREAM_T__ V;
};
#pragma empty_line
} // namespace hls
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
// 67d7842dbbe25473c3c32b93c0da8047785f30d78e8a024de1b57352245f9689
#pragma line 6 "ed25519/src/ed25519.h" 2
#pragma empty_line
#pragma empty_line
//#define FIXEDINT_H_INCLUDED
#pragma empty_line
#pragma empty_line
typedef hls::stream<unsigned char> mem_stream;
#pragma line 27 "ed25519/src/ed25519.h"
extern "C" {
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
void ed25519_create_keypair(unsigned char *public_key, unsigned char *private_key, const unsigned char *seed);
void ed25519_sign(unsigned char *signature, const unsigned char *message, size_t message_len, const unsigned char *public_key, const unsigned char *private_key);
int ed25519_verify(const unsigned char *signature, const unsigned char *message, size_t message_len, const unsigned char *public_key);
void ed25519_add_scalar(unsigned char *public_key, unsigned char *private_key, const unsigned char *scalar);
void ed25519_key_exchange(unsigned char *shared_secret, const unsigned char *public_key, const unsigned char *private_key);
#pragma empty_line
#pragma empty_line
#pragma empty_line
}
#pragma line 2 "ed25519/src/seed.cpp" 2
#pragma empty_line
