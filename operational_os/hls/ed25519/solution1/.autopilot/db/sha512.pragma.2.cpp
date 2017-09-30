# 1 "/home/michael/hardware_security/zcu102/root_of_trust/operational_os/hls/ed25519/solution1/.autopilot/db/sha512.pragma.1.cpp"
# 1 "/home/michael/hardware_security/zcu102/root_of_trust/operational_os/hls/ed25519/solution1/.autopilot/db/sha512.pragma.1.cpp" 1
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 155 "<built-in>" 3
# 1 "<command line>" 1





# 1 "/Xilinx/Vivado_HLS/2017.2/common/technology/autopilot/etc/autopilot_ssdm_op.h" 1
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

 *
 * $Id$
 */
# 145 "/Xilinx/Vivado_HLS/2017.2/common/technology/autopilot/etc/autopilot_ssdm_op.h"
/*#define AP_SPEC_ATTR __attribute__ ((pure))*/
//adu: patched
# 156 "/Xilinx/Vivado_HLS/2017.2/common/technology/autopilot/etc/autopilot_ssdm_op.h"
extern "C" {

    /****** SSDM Intrinsics: OPERATIONS ***/
    // Interface operations

    //typedef unsigned int __attribute__ ((bitwidth(1))) _uint1_;
    typedef bool _uint1_;

    void _ssdm_op_IfRead(...) __attribute__ ((nothrow));
    void _ssdm_op_IfWrite(...) __attribute__ ((nothrow));
    _uint1_ _ssdm_op_IfNbRead(...) __attribute__ ((nothrow));
    _uint1_ _ssdm_op_IfNbWrite(...) __attribute__ ((nothrow));
    _uint1_ _ssdm_op_IfCanRead(...) __attribute__ ((nothrow));
    _uint1_ _ssdm_op_IfCanWrite(...) __attribute__ ((nothrow));

    // Stream Intrinsics
    void _ssdm_StreamRead(...) __attribute__ ((nothrow));
    void _ssdm_StreamWrite(...) __attribute__ ((nothrow));
    _uint1_ _ssdm_StreamNbRead(...) __attribute__ ((nothrow));
    _uint1_ _ssdm_StreamNbWrite(...) __attribute__ ((nothrow));
    _uint1_ _ssdm_StreamCanRead(...) __attribute__ ((nothrow));
    _uint1_ _ssdm_StreamCanWrite(...) __attribute__ ((nothrow));
    unsigned _ssdm_StreamSize(...) __attribute__ ((nothrow));

    // Misc
    void _ssdm_op_MemShiftRead(...) __attribute__ ((nothrow));

    void _ssdm_op_Wait(...) __attribute__ ((nothrow));
    void _ssdm_op_Poll(...) __attribute__ ((nothrow));

    void _ssdm_op_Return(...) __attribute__ ((nothrow));

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

    void _ssdm_op_SpecReset(...) __attribute__ ((nothrow));

    void _ssdm_op_SpecPlatform(...) __attribute__ ((nothrow));
    void _ssdm_op_SpecClockDomain(...) __attribute__ ((nothrow));
    void _ssdm_op_SpecPowerDomain(...) __attribute__ ((nothrow));

    int _ssdm_op_SpecRegionBegin(...) __attribute__ ((nothrow));
    int _ssdm_op_SpecRegionEnd(...) __attribute__ ((nothrow));

    void _ssdm_op_SpecLoopName(...) __attribute__ ((nothrow));

    void _ssdm_op_SpecLoopTripCount(...) __attribute__ ((nothrow));

    int _ssdm_op_SpecStateBegin(...) __attribute__ ((nothrow));
    int _ssdm_op_SpecStateEnd(...) __attribute__ ((nothrow));

    void _ssdm_op_SpecInterface(...) __attribute__ ((nothrow));

    void _ssdm_op_SpecPipeline(...) __attribute__ ((nothrow));
    void _ssdm_op_SpecDataflowPipeline(...) __attribute__ ((nothrow));


    void _ssdm_op_SpecLatency(...) __attribute__ ((nothrow));
    void _ssdm_op_SpecParallel(...) __attribute__ ((nothrow));
    void _ssdm_op_SpecProtocol(...) __attribute__ ((nothrow));
    void _ssdm_op_SpecOccurrence(...) __attribute__ ((nothrow));

    void _ssdm_op_SpecResource(...) __attribute__ ((nothrow));
    void _ssdm_op_SpecResourceLimit(...) __attribute__ ((nothrow));
    void _ssdm_op_SpecCHCore(...) __attribute__ ((nothrow));
    void _ssdm_op_SpecFUCore(...) __attribute__ ((nothrow));
    void _ssdm_op_SpecIFCore(...) __attribute__ ((nothrow));
    void _ssdm_op_SpecIPCore(...) __attribute__ ((nothrow));
    void _ssdm_op_SpecKeepValue(...) __attribute__ ((nothrow));
    void _ssdm_op_SpecMemCore(...) __attribute__ ((nothrow));

    void _ssdm_op_SpecExt(...) __attribute__ ((nothrow));
    /*void* _ssdm_op_SpecProcess(...) SSDM_SPEC_ATTR;
    void* _ssdm_op_SpecEdge(...) SSDM_SPEC_ATTR; */

    /* Presynthesis directive functions */
    void _ssdm_SpecArrayDimSize(...) __attribute__ ((nothrow));

    void _ssdm_RegionBegin(...) __attribute__ ((nothrow));
    void _ssdm_RegionEnd(...) __attribute__ ((nothrow));

    void _ssdm_Unroll(...) __attribute__ ((nothrow));
    void _ssdm_UnrollRegion(...) __attribute__ ((nothrow));

    void _ssdm_InlineAll(...) __attribute__ ((nothrow));
    void _ssdm_InlineLoop(...) __attribute__ ((nothrow));
    void _ssdm_Inline(...) __attribute__ ((nothrow));
    void _ssdm_InlineSelf(...) __attribute__ ((nothrow));
    void _ssdm_InlineRegion(...) __attribute__ ((nothrow));

    void _ssdm_SpecArrayMap(...) __attribute__ ((nothrow));
    void _ssdm_SpecArrayPartition(...) __attribute__ ((nothrow));
    void _ssdm_SpecArrayReshape(...) __attribute__ ((nothrow));

    void _ssdm_SpecStream(...) __attribute__ ((nothrow));

    void _ssdm_SpecExpr(...) __attribute__ ((nothrow));
    void _ssdm_SpecExprBalance(...) __attribute__ ((nothrow));

    void _ssdm_SpecDependence(...) __attribute__ ((nothrow));

    void _ssdm_SpecLoopMerge(...) __attribute__ ((nothrow));
    void _ssdm_SpecLoopFlatten(...) __attribute__ ((nothrow));
    void _ssdm_SpecLoopRewind(...) __attribute__ ((nothrow));

    void _ssdm_SpecFuncInstantiation(...) __attribute__ ((nothrow));
    void _ssdm_SpecFuncBuffer(...) __attribute__ ((nothrow));
    void _ssdm_SpecFuncExtract(...) __attribute__ ((nothrow));
    void _ssdm_SpecConstant(...) __attribute__ ((nothrow));

    void _ssdm_DataPack(...) __attribute__ ((nothrow));
    void _ssdm_SpecDataPack(...) __attribute__ ((nothrow));

    void _ssdm_op_SpecBitsMap(...) __attribute__ ((nothrow));
    void _ssdm_op_SpecLicense(...) __attribute__ ((nothrow));

    void __xilinx_ip_top(...) __attribute__ ((nothrow));


}
# 413 "/Xilinx/Vivado_HLS/2017.2/common/technology/autopilot/etc/autopilot_ssdm_op.h"
/*#define _ssdm_op_WaitUntil(X) while (!(X)) _ssdm_op_Wait(1);
#define _ssdm_op_Delayed(X) X */
# 427 "/Xilinx/Vivado_HLS/2017.2/common/technology/autopilot/etc/autopilot_ssdm_op.h"
// 67d7842dbbe25473c3c32b93c0da8047785f30d78e8a024de1b57352245f9689
# 7 "<command line>" 2
# 1 "<built-in>" 2
# 1 "/home/michael/hardware_security/zcu102/root_of_trust/operational_os/hls/ed25519/solution1/.autopilot/db/sha512.pragma.1.cpp" 2
# 1 "ed25519/src/sha512.cpp"
# 1 "ed25519/src/sha512.cpp" 1
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 155 "<built-in>" 3
# 1 "<command line>" 1





# 1 "/Xilinx/Vivado_HLS/2017.2/common/technology/autopilot/etc/autopilot_ssdm_op.h" 1
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

 *
 * $Id$
 */
# 145 "/Xilinx/Vivado_HLS/2017.2/common/technology/autopilot/etc/autopilot_ssdm_op.h"
/*#define AP_SPEC_ATTR __attribute__ ((pure))*/
//adu: patched
# 156 "/Xilinx/Vivado_HLS/2017.2/common/technology/autopilot/etc/autopilot_ssdm_op.h"
extern "C" {

    /****** SSDM Intrinsics: OPERATIONS ***/
    // Interface operations

    //typedef unsigned int __attribute__ ((bitwidth(1))) _uint1_;
    typedef bool _uint1_;

    void _ssdm_op_IfRead(...) __attribute__ ((nothrow));
    void _ssdm_op_IfWrite(...) __attribute__ ((nothrow));
    _uint1_ _ssdm_op_IfNbRead(...) __attribute__ ((nothrow));
    _uint1_ _ssdm_op_IfNbWrite(...) __attribute__ ((nothrow));
    _uint1_ _ssdm_op_IfCanRead(...) __attribute__ ((nothrow));
    _uint1_ _ssdm_op_IfCanWrite(...) __attribute__ ((nothrow));

    // Stream Intrinsics
    void _ssdm_StreamRead(...) __attribute__ ((nothrow));
    void _ssdm_StreamWrite(...) __attribute__ ((nothrow));
    _uint1_ _ssdm_StreamNbRead(...) __attribute__ ((nothrow));
    _uint1_ _ssdm_StreamNbWrite(...) __attribute__ ((nothrow));
    _uint1_ _ssdm_StreamCanRead(...) __attribute__ ((nothrow));
    _uint1_ _ssdm_StreamCanWrite(...) __attribute__ ((nothrow));
    unsigned _ssdm_StreamSize(...) __attribute__ ((nothrow));

    // Misc
    void _ssdm_op_MemShiftRead(...) __attribute__ ((nothrow));

    void _ssdm_op_Wait(...) __attribute__ ((nothrow));
    void _ssdm_op_Poll(...) __attribute__ ((nothrow));

    void _ssdm_op_Return(...) __attribute__ ((nothrow));

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

    void _ssdm_op_SpecReset(...) __attribute__ ((nothrow));

    void _ssdm_op_SpecPlatform(...) __attribute__ ((nothrow));
    void _ssdm_op_SpecClockDomain(...) __attribute__ ((nothrow));
    void _ssdm_op_SpecPowerDomain(...) __attribute__ ((nothrow));

    int _ssdm_op_SpecRegionBegin(...) __attribute__ ((nothrow));
    int _ssdm_op_SpecRegionEnd(...) __attribute__ ((nothrow));

    void _ssdm_op_SpecLoopName(...) __attribute__ ((nothrow));

    void _ssdm_op_SpecLoopTripCount(...) __attribute__ ((nothrow));

    int _ssdm_op_SpecStateBegin(...) __attribute__ ((nothrow));
    int _ssdm_op_SpecStateEnd(...) __attribute__ ((nothrow));

    void _ssdm_op_SpecInterface(...) __attribute__ ((nothrow));

    void _ssdm_op_SpecPipeline(...) __attribute__ ((nothrow));
    void _ssdm_op_SpecDataflowPipeline(...) __attribute__ ((nothrow));


    void _ssdm_op_SpecLatency(...) __attribute__ ((nothrow));
    void _ssdm_op_SpecParallel(...) __attribute__ ((nothrow));
    void _ssdm_op_SpecProtocol(...) __attribute__ ((nothrow));
    void _ssdm_op_SpecOccurrence(...) __attribute__ ((nothrow));

    void _ssdm_op_SpecResource(...) __attribute__ ((nothrow));
    void _ssdm_op_SpecResourceLimit(...) __attribute__ ((nothrow));
    void _ssdm_op_SpecCHCore(...) __attribute__ ((nothrow));
    void _ssdm_op_SpecFUCore(...) __attribute__ ((nothrow));
    void _ssdm_op_SpecIFCore(...) __attribute__ ((nothrow));
    void _ssdm_op_SpecIPCore(...) __attribute__ ((nothrow));
    void _ssdm_op_SpecKeepValue(...) __attribute__ ((nothrow));
    void _ssdm_op_SpecMemCore(...) __attribute__ ((nothrow));

    void _ssdm_op_SpecExt(...) __attribute__ ((nothrow));
    /*void* _ssdm_op_SpecProcess(...) SSDM_SPEC_ATTR;
    void* _ssdm_op_SpecEdge(...) SSDM_SPEC_ATTR; */

    /* Presynthesis directive functions */
    void _ssdm_SpecArrayDimSize(...) __attribute__ ((nothrow));

    void _ssdm_RegionBegin(...) __attribute__ ((nothrow));
    void _ssdm_RegionEnd(...) __attribute__ ((nothrow));

    void _ssdm_Unroll(...) __attribute__ ((nothrow));
    void _ssdm_UnrollRegion(...) __attribute__ ((nothrow));

    void _ssdm_InlineAll(...) __attribute__ ((nothrow));
    void _ssdm_InlineLoop(...) __attribute__ ((nothrow));
    void _ssdm_Inline(...) __attribute__ ((nothrow));
    void _ssdm_InlineSelf(...) __attribute__ ((nothrow));
    void _ssdm_InlineRegion(...) __attribute__ ((nothrow));

    void _ssdm_SpecArrayMap(...) __attribute__ ((nothrow));
    void _ssdm_SpecArrayPartition(...) __attribute__ ((nothrow));
    void _ssdm_SpecArrayReshape(...) __attribute__ ((nothrow));

    void _ssdm_SpecStream(...) __attribute__ ((nothrow));

    void _ssdm_SpecExpr(...) __attribute__ ((nothrow));
    void _ssdm_SpecExprBalance(...) __attribute__ ((nothrow));

    void _ssdm_SpecDependence(...) __attribute__ ((nothrow));

    void _ssdm_SpecLoopMerge(...) __attribute__ ((nothrow));
    void _ssdm_SpecLoopFlatten(...) __attribute__ ((nothrow));
    void _ssdm_SpecLoopRewind(...) __attribute__ ((nothrow));

    void _ssdm_SpecFuncInstantiation(...) __attribute__ ((nothrow));
    void _ssdm_SpecFuncBuffer(...) __attribute__ ((nothrow));
    void _ssdm_SpecFuncExtract(...) __attribute__ ((nothrow));
    void _ssdm_SpecConstant(...) __attribute__ ((nothrow));

    void _ssdm_DataPack(...) __attribute__ ((nothrow));
    void _ssdm_SpecDataPack(...) __attribute__ ((nothrow));

    void _ssdm_op_SpecBitsMap(...) __attribute__ ((nothrow));
    void _ssdm_op_SpecLicense(...) __attribute__ ((nothrow));

    void __xilinx_ip_top(...) __attribute__ ((nothrow));


}
# 413 "/Xilinx/Vivado_HLS/2017.2/common/technology/autopilot/etc/autopilot_ssdm_op.h"
/*#define _ssdm_op_WaitUntil(X) while (!(X)) _ssdm_op_Wait(1);
#define _ssdm_op_Delayed(X) X */
# 427 "/Xilinx/Vivado_HLS/2017.2/common/technology/autopilot/etc/autopilot_ssdm_op.h"
// 67d7842dbbe25473c3c32b93c0da8047785f30d78e8a024de1b57352245f9689
# 7 "<command line>" 2
# 1 "<built-in>" 2
# 1 "ed25519/src/sha512.cpp" 2
/* LibTomCrypt, modular cryptographic library -- Tom St Denis
 *
 * LibTomCrypt is a library that provides various cryptographic
 * algorithms in a highly modular and flexible manner.
 *
 * The library is free for all purposes without any express
 * guarantee it works.
 *
 * Tom St Denis, tomstdenis@gmail.com, http://libtom.org
 */



# 1 "ed25519/src/fixedint.h" 1
/*
    Portable header to provide the 32 and 64 bits type.

    Not a compatible replacement for <stdint.h>, do not blindly use it as such.
*/
# 21 "ed25519/src/fixedint.h"
# 1 "/Xilinx/Vivado_HLS/2017.2/lnx64/tools/clang/bin/../lib/clang/3.1/include/limits.h" 1 3
/*===---- limits.h - Standard header for integer sizes --------------------===*\
 *
 * Copyright (c) 2009 Chris Lattner
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
\*===----------------------------------------------------------------------===*/




/* The system's limits.h may, in turn, try to #include_next GCC's limits.h.
   Avert this #include_next madness. */




/* System headers include a number of constants from POSIX in <limits.h>.
   Include it if we're hosted. */




# 1 "/usr/include/limits.h" 1 3 4
/* Copyright (C) 1991-2016 Free Software Foundation, Inc.
   This file is part of the GNU C Library.

   The GNU C Library is free software; you can redistribute it and/or
   modify it under the terms of the GNU Lesser General Public
   License as published by the Free Software Foundation; either
   version 2.1 of the License, or (at your option) any later version.

   The GNU C Library is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
   Lesser General Public License for more details.

   You should have received a copy of the GNU Lesser General Public
   License along with the GNU C Library; if not, see
   <http://www.gnu.org/licenses/>.  */

/*
 *	ISO C99 Standard: 7.10/5.2.4.2.1 Sizes of integer types	<limits.h>
 */






# 1 "/usr/include/features.h" 1 3 4
/* Copyright (C) 1991-2016 Free Software Foundation, Inc.
   This file is part of the GNU C Library.

   The GNU C Library is free software; you can redistribute it and/or
   modify it under the terms of the GNU Lesser General Public
   License as published by the Free Software Foundation; either
   version 2.1 of the License, or (at your option) any later version.

   The GNU C Library is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
   Lesser General Public License for more details.

   You should have received a copy of the GNU Lesser General Public
   License along with the GNU C Library; if not, see
   <http://www.gnu.org/licenses/>.  */




/* These are defined by the user (or the compiler)
   to specify the desired environment:

   __STRICT_ANSI__	ISO Standard C.
   _ISOC99_SOURCE	Extensions to ISO C89 from ISO C99.
   _ISOC11_SOURCE	Extensions to ISO C99 from ISO C11.
   _POSIX_SOURCE	IEEE Std 1003.1.
   _POSIX_C_SOURCE	If ==1, like _POSIX_SOURCE; if >=2 add IEEE Std 1003.2;
			if >=199309L, add IEEE Std 1003.1b-1993;
			if >=199506L, add IEEE Std 1003.1c-1995;
			if >=200112L, all of IEEE 1003.1-2004
			if >=200809L, all of IEEE 1003.1-2008
   _XOPEN_SOURCE	Includes POSIX and XPG things.  Set to 500 if
			Single Unix conformance is wanted, to 600 for the
			sixth revision, to 700 for the seventh revision.
   _XOPEN_SOURCE_EXTENDED XPG things and X/Open Unix extensions.
   _LARGEFILE_SOURCE	Some more functions for correct standard I/O.
   _LARGEFILE64_SOURCE	Additional functionality from LFS for large files.
   _FILE_OFFSET_BITS=N	Select default filesystem interface.
   _ATFILE_SOURCE	Additional *at interfaces.
   _GNU_SOURCE		All of the above, plus GNU extensions.
   _DEFAULT_SOURCE	The default set of features (taking precedence over
			__STRICT_ANSI__).
   _REENTRANT		Select additionally reentrant object.
   _THREAD_SAFE		Same as _REENTRANT, often used by other systems.
   _FORTIFY_SOURCE	If set to numeric value > 0 additional security
			measures are defined, according to level.

   The `-ansi' switch to the GNU C compiler, and standards conformance
   options such as `-std=c99', define __STRICT_ANSI__.  If none of
   these are defined, or if _DEFAULT_SOURCE is defined, the default is
   to have _POSIX_SOURCE set to one and _POSIX_C_SOURCE set to
   200809L, as well as enabling miscellaneous functions from BSD and
   SVID.  If more than one of these are defined, they accumulate.  For
   example __STRICT_ANSI__, _POSIX_SOURCE and _POSIX_C_SOURCE together
   give you ISO C, 1003.1, and 1003.2, but nothing else.

   These are defined by this file and are used by the
   header files to decide what to declare or define:

   __USE_ISOC11		Define ISO C11 things.
   __USE_ISOC99		Define ISO C99 things.
   __USE_ISOC95		Define ISO C90 AMD1 (C95) things.
   __USE_POSIX		Define IEEE Std 1003.1 things.
   __USE_POSIX2		Define IEEE Std 1003.2 things.
   __USE_POSIX199309	Define IEEE Std 1003.1, and .1b things.
   __USE_POSIX199506	Define IEEE Std 1003.1, .1b, .1c and .1i things.
   __USE_XOPEN		Define XPG things.
   __USE_XOPEN_EXTENDED	Define X/Open Unix things.
   __USE_UNIX98		Define Single Unix V2 things.
   __USE_XOPEN2K        Define XPG6 things.
   __USE_XOPEN2KXSI     Define XPG6 XSI things.
   __USE_XOPEN2K8       Define XPG7 things.
   __USE_XOPEN2K8XSI    Define XPG7 XSI things.
   __USE_LARGEFILE	Define correct standard I/O things.
   __USE_LARGEFILE64	Define LFS things with separate names.
   __USE_FILE_OFFSET64	Define 64bit interface as default.
   __USE_MISC		Define things from 4.3BSD or System V Unix.
   __USE_ATFILE		Define *at interfaces and AT_* constants for them.
   __USE_GNU		Define GNU extensions.
   __USE_REENTRANT	Define reentrant/thread-safe *_r functions.
   __USE_FORTIFY_LEVEL	Additional security measures used, according to level.

   The macros `__GNU_LIBRARY__', `__GLIBC__', and `__GLIBC_MINOR__' are
   defined by this file unconditionally.  `__GNU_LIBRARY__' is provided
   only for compatibility.  All new code should use the other symbols
   to test for features.

   All macros listed above as possibly being defined by this file are
   explicitly undefined if they are not explicitly defined.
   Feature-test macros that are not defined by the user or compiler
   but are implied by the other feature-test macros defined (or by the
   lack of any definitions) are defined by the file.  */


/* Undefine everything, so we get a clean slate.  */
# 122 "/usr/include/features.h" 3 4
/* Suppress kernel-name space pollution unless user expressedly asks
   for it.  */




/* Convenience macros to test the versions of glibc and gcc.
   Use them like this:
   #if __GNUC_PREREQ (2,8)
   ... code requiring gcc 2.8 or later ...
   #endif
   Note - they won't work for gcc1 or glibc1, since the _MINOR macros
   were not defined then.  */







/* _BSD_SOURCE and _SVID_SOURCE are deprecated aliases for
   _DEFAULT_SOURCE.  If _DEFAULT_SOURCE is present we do not
   issue a warning; the expectation is that the source is being
   transitioned to use the new macro.  */







/* If _GNU_SOURCE was defined by the user, turn on all the other features.  */
# 177 "/usr/include/features.h" 3 4
/* If nothing (other than _GNU_SOURCE and _DEFAULT_SOURCE) is defined,
   define _DEFAULT_SOURCE.  */
# 188 "/usr/include/features.h" 3 4
/* This is to enable the ISO C11 extension.  */





/* This is to enable the ISO C99 extension.  */





/* This is to enable the ISO C90 Amendment 1:1995 extension.  */





/* This is to enable compatibility for ISO C++11.

   So far g++ does not provide a macro.  Check the temporary macro for
   now, too.  */





/* If none of the ANSI/POSIX macros are defined, or if _DEFAULT_SOURCE
   is defined, use POSIX.1-2008 (or another version depending on
   _XOPEN_SOURCE).  */
# 340 "/usr/include/features.h" 3 4
/* Get definitions of __STDC_* predefined macros, if the compiler has
   not preincluded this header automatically.  */


# 1 "/usr/include/stdc-predef.h" 1 3 4
/* Copyright (C) 1991-2016 Free Software Foundation, Inc.
   This file is part of the GNU C Library.

   The GNU C Library is free software; you can redistribute it and/or
   modify it under the terms of the GNU Lesser General Public
   License as published by the Free Software Foundation; either
   version 2.1 of the License, or (at your option) any later version.

   The GNU C Library is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
   Lesser General Public License for more details.

   You should have received a copy of the GNU Lesser General Public
   License along with the GNU C Library; if not, see
   <http://www.gnu.org/licenses/>.  */




/* This header is separate from features.h so that the compiler can
   include it implicitly at the start of every compilation.  It must
   not itself include <features.h> or any other header that includes
   <features.h> because the implicit include comes before any feature
   test macros that may be defined in a source file before it first
   explicitly includes a system header.  GCC knows the name of this
   header in order to preinclude it.  */

/* glibc's intent is to support the IEC 559 math functionality, real
   and complex.  If the GCC (4.9 and later) predefined macros
   specifying compiler intent are available, use them to determine
   whether the overall intent is to support these features; otherwise,
   presume an older compiler has intent to support these features and
   define these macros by default.  */
# 52 "/usr/include/stdc-predef.h" 3 4
/* wchar_t uses Unicode 9.0.0.  Version 9.0 of the Unicode Standard is
   synchronized with ISO/IEC 10646:2014, fourth edition, plus
   Amd. 1  and Amd. 2 and 273 characters from forthcoming  10646, fifth edition.
   (Amd. 2 was published 2016-05-01,
   see https://www.iso.org/obp/ui/#iso:std:iso-iec:10646:ed-4:v1:amd:2:v1:en) */


/* We do not support C11 <threads.h>.  */
# 343 "/usr/include/features.h" 2 3 4

/* This macro indicates that the installed library is the GNU C Library.
   For historic reasons the value now is 6 and this will stay from now
   on.  The use of this variable is deprecated.  Use __GLIBC__ and
   __GLIBC_MINOR__ now (see below) when you want to test for a specific
   GNU C library version and use the values in <gnu/lib-names.h> to get
   the sonames of the shared libraries.  */



/* Major and minor version number of the GNU C library package.  Use
   these macros to test for features in specific releases.  */






/* This is here only because every header file already includes this one.  */




# 1 "/usr/include/x86_64-linux-gnu/sys/cdefs.h" 1 3 4
/* Copyright (C) 1992-2016 Free Software Foundation, Inc.
   This file is part of the GNU C Library.

   The GNU C Library is free software; you can redistribute it and/or
   modify it under the terms of the GNU Lesser General Public
   License as published by the Free Software Foundation; either
   version 2.1 of the License, or (at your option) any later version.

   The GNU C Library is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
   Lesser General Public License for more details.

   You should have received a copy of the GNU Lesser General Public
   License along with the GNU C Library; if not, see
   <http://www.gnu.org/licenses/>.  */




/* We are almost always included from features.h. */




/* The GNU libc does not support any K&R compilers or the traditional mode
   of ISO C compilers anymore.  Check for some of the combinations not
   anymore supported.  */




/* Some user header file might have defined this before.  */





/* All functions, except those with callbacks or those that
   synchronize memory, are leaf functions.  */
# 49 "/usr/include/x86_64-linux-gnu/sys/cdefs.h" 3 4
/* GCC can always grok prototypes.  For C++ programs we add throw()
   to help it optimize the function calls.  But this works only with
   gcc 2.8.x and egcs.  For gcc 3.2 and up we even mark C functions
   as non-throwing using a function attribute since programs can use
   the -fexceptions options for C code as well.  */
# 80 "/usr/include/x86_64-linux-gnu/sys/cdefs.h" 3 4
/* These two macros are not used in glibc anymore.  They are kept here
   only because some other projects expect the macros to be defined.  */



/* For these things, GCC behaves the ANSI way normally,
   and the non-ANSI way under -traditional.  */




/* This is not a typedef so `const __ptr_t' does the right thing.  */




/* C++ needs to know that types and declarations are C, not C++.  */
# 106 "/usr/include/x86_64-linux-gnu/sys/cdefs.h" 3 4
/* The standard library needs the functions from the ISO C90 standard
   in the std namespace.  At the same time we want to be safe for
   future changes and we include the ISO C99 code in the non-standard
   namespace __c99.  The C++ wrapper header take case of adding the
   definitions to the global namespace.  */
# 119 "/usr/include/x86_64-linux-gnu/sys/cdefs.h" 3 4
/* For compatibility we do not add the declarations into any
   namespace.  They will end up in the global namespace which is what
   old code expects.  */
# 131 "/usr/include/x86_64-linux-gnu/sys/cdefs.h" 3 4
/* Fortify support.  */
# 147 "/usr/include/x86_64-linux-gnu/sys/cdefs.h" 3 4
/* Support for flexible arrays.  */

/* GCC 2.97 supports C99 flexible array members.  */
# 165 "/usr/include/x86_64-linux-gnu/sys/cdefs.h" 3 4
/* __asm__ ("xyz") is used throughout the headers to rename functions
   at the assembly language level.  This is wrapped by the __REDIRECT
   macro, in order to support compilers that can do this some other
   way.  When compilers don't support asm-names at all, we have to do
   preprocessor tricks instead (which don't have exactly the right
   semantics, but it's the best we can do).

   Example:
   int __REDIRECT(setpgrp, (__pid_t pid, __pid_t pgrp), setpgid); */
# 192 "/usr/include/x86_64-linux-gnu/sys/cdefs.h" 3 4
/*
#elif __SOME_OTHER_COMPILER__

# define __REDIRECT(name, proto, alias) name proto; \
	_Pragma("let " #name " = " #alias)
*/


/* GCC has various useful declarations that can be made with the
   `__attribute__' syntax.  All of the ways we use this do fine if
   they are omitted for compilers that don't understand it. */




/* At some point during the gcc 2.96 development the `malloc' attribute
   for functions was introduced.  We don't want to use it unconditionally
   (although this would be possible) since it generates warnings.  */






/* Tell the compiler which arguments to an allocation function
   indicate the size of the allocation.  */







/* At some point during the gcc 2.96 development the `pure' attribute
   for functions was introduced.  We don't want to use it unconditionally
   (although this would be possible) since it generates warnings.  */






/* This declaration tells the compiler that the value is constant.  */






/* At some point during the gcc 3.1 development the `used' attribute
   for functions was introduced.  We don't want to use it unconditionally
   (although this would be possible) since it generates warnings.  */
# 252 "/usr/include/x86_64-linux-gnu/sys/cdefs.h" 3 4
/* gcc allows marking deprecated functions.  */






/* At some point during the gcc 2.8 development the `format_arg' attribute
   for functions was introduced.  We don't want to use it unconditionally
   (although this would be possible) since it generates warnings.
   If several `format_arg' attributes are given for the same function, in
   gcc-3.0 and older, all but the last one are ignored.  In newer gccs,
   all designated arguments are considered.  */






/* At some point during the gcc 2.97 development the `strfmon' format
   attribute for functions was introduced.  We don't want to use it
   unconditionally (although this would be possible) since it
   generates warnings.  */







/* The nonull function attribute allows to mark pointer parameters which
   must not be NULL.  */






/* If fortification mode, we warn about unused results of certain
   function calls which can lead to problems.  */
# 305 "/usr/include/x86_64-linux-gnu/sys/cdefs.h" 3 4
/* Forces a function to be always inlined.  */

/* The Linux kernel defines __always_inline in stddef.h (283d7573), and
   it conflicts with this definition.  Therefore undefine it first to
   allow either header to be included first.  */







/* Associate error messages with the source location of the call site rather
   than with the source location inside the function.  */






/* GCC 4.3 and above with -std=c99 or -std=gnu99 implements ISO C99
   inline semantics, unless -fgnu89-inline is used.  Using __GNUC_STDC_INLINE__
   or __GNUC_GNU_INLINE is not a good enough check for gcc because gcc versions
   older than 4.3 may define these macros and still not guarantee GNU inlining
   semantics.

   clang++ identifies itself as gcc-4.2, but has support for GNU inlining
   semantics, that can be checked fot by using the __GNUC_STDC_INLINE_ and
   __GNUC_GNU_INLINE__ macro definitions.  */
# 351 "/usr/include/x86_64-linux-gnu/sys/cdefs.h" 3 4
/* GCC 4.3 and above allow passing all anonymous arguments of an
   __extern_always_inline function to some other vararg function.  */





/* It is possible to compile containing GCC extensions even if GCC is
   run in pedantic mode if the uses are carefully marked using the
   `__extension__' keyword.  But this is not generally available before
   version 2.8.  */




/* __restrict is known in EGCS 1.2 and above. */




/* ISO C99 also allows to declare arrays as non-overlapping.  The syntax is
     array_name[restrict]
   GCC 3.1 supports this.  */
# 415 "/usr/include/x86_64-linux-gnu/sys/cdefs.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/wordsize.h" 1 3 4
/* Determine the wordsize from the preprocessor defines.  */
# 11 "/usr/include/x86_64-linux-gnu/bits/wordsize.h" 3 4
/* Both x86-64 and x32 use the 64-bit system call interface.  */
# 416 "/usr/include/x86_64-linux-gnu/sys/cdefs.h" 2 3 4
# 365 "/usr/include/features.h" 2 3 4


/* If we don't have __REDIRECT, prototypes will be missing if
   __USE_FILE_OFFSET64 but not __USE_LARGEFILE[64]. */







/* Decide whether we can define 'extern inline' functions in headers.  */







/* This is here only because every header file already includes this one.
   Get the definitions of all the appropriate `__stub_FUNCTION' symbols.
   <gnu/stubs.h> contains `#define __stub_FUNCTION' when FUNCTION is a stub
   that will always return failure (and set errno to ENOSYS).  */


# 1 "/usr/include/x86_64-linux-gnu/gnu/stubs.h" 1 3 4
/* This file is automatically generated.
   This file selects the right generated file of `__stub_FUNCTION' macros
   based on the architecture being compiled for.  */








# 1 "/usr/include/x86_64-linux-gnu/gnu/stubs-64.h" 1 3 4
/* This file is automatically generated.
   It defines a symbol `__stub_FUNCTION' for each function
   in the C library which is a stub, meaning it will fail
   every time called, usually setting errno to ENOSYS.  */
# 11 "/usr/include/x86_64-linux-gnu/gnu/stubs.h" 2 3 4
# 389 "/usr/include/features.h" 2 3 4
# 26 "/usr/include/limits.h" 2 3 4


/* Maximum length of any multibyte character in any locale.
   We define this value here since the gcc header does not define
   the correct value.  */



/* If we are not using GNU CC we have to define all the symbols ourself.
   Otherwise use gcc's definitions (see below).  */
# 116 "/usr/include/limits.h" 3 4
 /* Get the compiler's limits.h, which defines almost all the ISO constants.

    We put this #include_next outside the double inclusion check because
    it should be possible to include this file more than once and still get
    the definitions from gcc's header.  */





/* The <limits.h> files in some gcc versions don't define LLONG_MIN,
   LLONG_MAX, and ULLONG_MAX.  Instead only the values gcc defined for
   ages are available.  */
# 142 "/usr/include/limits.h" 3 4
/* POSIX adds things to <limits.h>.  */


# 1 "/usr/include/x86_64-linux-gnu/bits/posix1_lim.h" 1 3 4
/* Copyright (C) 1991-2016 Free Software Foundation, Inc.
   This file is part of the GNU C Library.

   The GNU C Library is free software; you can redistribute it and/or
   modify it under the terms of the GNU Lesser General Public
   License as published by the Free Software Foundation; either
   version 2.1 of the License, or (at your option) any later version.

   The GNU C Library is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
   Lesser General Public License for more details.

   You should have received a copy of the GNU Lesser General Public
   License along with the GNU C Library; if not, see
   <http://www.gnu.org/licenses/>.  */

/*
 *	POSIX Standard: 2.9.2 Minimum Values	Added to <limits.h>
 *
 *	Never include this file directly; use <limits.h> instead.
 */





/* These are the standard-mandated minimum values.  */

/* Minimum number of operations in one list I/O call.  */


/* Minimal number of outstanding asynchronous I/O operations.  */


/* Maximum length of arguments to `execve', including environment.  */


/* Maximum simultaneous processes per real user ID.  */






/* Minimal number of timer expiration overruns.  */


/* Maximum length of a host name (not including the terminating null)
   as returned from the GETHOSTNAME function.  */


/* Maximum link count of a file.  */


/* Maximum length of login name.  */


/* Number of bytes in a terminal canonical input queue.  */


/* Number of bytes for which space will be
   available in a terminal input queue.  */


/* Maximum number of message queues open for a process.  */


/* Maximum number of supported message priorities.  */


/* Number of bytes in a filename.  */


/* Number of simultaneous supplementary group IDs per process.  */






/* Number of files one process can have open at once.  */







/* Number of descriptors that a process may examine with `pselect' or
   `select'.  */



/* Number of bytes in a pathname.  */


/* Number of bytes than can be written atomically to a pipe.  */


/* The number of repeated occurrences of a BRE permitted by the
   REGEXEC and REGCOMP functions when using the interval notation.  */


/* Minimal number of realtime signals reserved for the application.  */


/* Number of semaphores a process can have.  */


/* Maximal value of a semaphore.  */


/* Number of pending realtime signals.  */


/* Largest value of a `ssize_t'.  */


/* Number of streams a process can have open at once.  */


/* The number of bytes in a symbolic link.  */


/* The number of symbolic links that can be traversed in the
   resolution of a pathname in the absence of a loop.  */


/* Number of timer for a process.  */


/* Maximum number of characters in a tty name.  */


/* Maximum length of a timezone name (element of `tzname').  */







/* Maximum number of connections that can be queued on a socket.  */


/* Maximum number of bytes that can be buffered on a socket for send
   or receive.  */


/* Maximum number of elements in an `iovec' array.  */



/* Maximum clock resolution in nanoseconds.  */



/* Get the implementation-specific values for the above.  */


# 1 "/usr/include/x86_64-linux-gnu/bits/local_lim.h" 1 3 4
/* Minimum guaranteed maximum values for system limits.  Linux version.
   Copyright (C) 1993-2016 Free Software Foundation, Inc.
   This file is part of the GNU C Library.

   The GNU C Library is free software; you can redistribute it and/or
   modify it under the terms of the GNU Lesser General Public License as
   published by the Free Software Foundation; either version 2.1 of the
   License, or (at your option) any later version.

   The GNU C Library is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
   Lesser General Public License for more details.

   You should have received a copy of the GNU Lesser General Public
   License along with the GNU C Library; see the file COPYING.LIB.  If
   not, see <http://www.gnu.org/licenses/>.  */

/* The kernel header pollutes the namespace with the NR_OPEN symbol
   and defines LINK_MAX although filesystems have different maxima.  A
   similar thing is true for OPEN_MAX: the limit can be changed at
   runtime and therefore the macro must not be defined.  Remove this
   after including the header if necessary.  */
# 37 "/usr/include/x86_64-linux-gnu/bits/local_lim.h" 3 4
/* The kernel sources contain a file with all the needed information.  */


# 1 "/usr/include/linux/limits.h" 1 3 4
# 39 "/usr/include/x86_64-linux-gnu/bits/local_lim.h" 2 3 4

/* Have to remove NR_OPEN?  */




/* Have to remove LINK_MAX?  */




/* Have to remove OPEN_MAX?  */




/* Have to remove ARG_MAX?  */





/* The number of data keys per process.  */

/* This is the value this implementation supports.  */


/* Controlling the iterations of destructors for thread-specific data.  */

/* Number of iterations this implementation does.  */


/* The number of threads per process.  */

/* We have no predefined limit on the number of threads.  */


/* Maximum amount by which a process can descrease its asynchronous I/O
   priority level.  */


/* Minimum size for a thread.  We are free to choose a reasonable value.  */


/* Maximum number of timer expiration overruns.  */


/* Maximum tty name length.  */


/* Maximum login name length.  This is arbitrary.  */


/* Maximum host name length.  */


/* Maximum message queue priority level.  */


/* Maximum value the semaphore can have.  */
# 161 "/usr/include/x86_64-linux-gnu/bits/posix1_lim.h" 2 3 4







/* This value is a guaranteed minimum maximum.
   The current maximum can be got from `sysconf'.  */
# 144 "/usr/include/limits.h" 2 3 4



# 1 "/usr/include/x86_64-linux-gnu/bits/posix2_lim.h" 1 3 4
/* Copyright (C) 1991-2016 Free Software Foundation, Inc.
   This file is part of the GNU C Library.

   The GNU C Library is free software; you can redistribute it and/or
   modify it under the terms of the GNU Lesser General Public
   License as published by the Free Software Foundation; either
   version 2.1 of the License, or (at your option) any later version.

   The GNU C Library is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
   Lesser General Public License for more details.

   You should have received a copy of the GNU Lesser General Public
   License along with the GNU C Library; if not, see
   <http://www.gnu.org/licenses/>.  */

/*
 * Never include this file directly; include <limits.h> instead.
 */





/* The maximum `ibase' and `obase' values allowed by the `bc' utility.  */


/* The maximum number of elements allowed in an array by the `bc' utility.  */


/* The maximum `scale' value allowed by the `bc' utility.  */


/* The maximum length of a string constant accepted by the `bc' utility.  */


/* The maximum number of weights that can be assigned to an entry of
   the LC_COLLATE `order' keyword in the locale definition file.  */


/* The maximum number of expressions that can be nested
   within parentheses by the `expr' utility.  */


/* The maximum length, in bytes, of an input line.  */


/* The maximum number of repeated occurrences of a regular expression
   permitted when using the interval notation `\{M,N\}'.  */


/* The maximum number of bytes in a character class name.  We have no
   fixed limit, 2048 is a high number.  */



/* These values are implementation-specific,
   and may vary within the implementation.
   Their precise values can be obtained from sysconf.  */
# 87 "/usr/include/x86_64-linux-gnu/bits/posix2_lim.h" 3 4
/* This value is defined like this in regex.h.  */
# 148 "/usr/include/limits.h" 2 3 4



# 1 "/usr/include/x86_64-linux-gnu/bits/xopen_lim.h" 1 3 4
/* Copyright (C) 1996-2016 Free Software Foundation, Inc.
   This file is part of the GNU C Library.

   The GNU C Library is free software; you can redistribute it and/or
   modify it under the terms of the GNU Lesser General Public
   License as published by the Free Software Foundation; either
   version 2.1 of the License, or (at your option) any later version.

   The GNU C Library is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
   Lesser General Public License for more details.

   You should have received a copy of the GNU Lesser General Public
   License along with the GNU C Library; if not, see
   <http://www.gnu.org/licenses/>.  */

/*
 * Never include this file directly; use <limits.h> instead.
 */

/* Additional definitions from X/Open Portability Guide, Issue 4, Version 2
   System Interfaces and Headers, 4.16 <limits.h>

   Please note only the values which are not greater than the minimum
   stated in the standard document are listed.  The `sysconf' functions
   should be used to obtain the actual value.  */







# 1 "/usr/include/x86_64-linux-gnu/bits/stdio_lim.h" 1 3 4
/* Copyright (C) 1994-2016 Free Software Foundation, Inc.
   This file is part of the GNU C Library.

   The GNU C Library is free software; you can redistribute it and/or
   modify it under the terms of the GNU Lesser General Public
   License as published by the Free Software Foundation; either
   version 2.1 of the License, or (at your option) any later version.

   The GNU C Library is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
   Lesser General Public License for more details.

   You should have received a copy of the GNU Lesser General Public
   License along with the GNU C Library; if not, see
   <http://www.gnu.org/licenses/>.  */
# 34 "/usr/include/x86_64-linux-gnu/bits/xopen_lim.h" 2 3 4

/* We do not provide fixed values for

   ARG_MAX	Maximum length of argument to the `exec' function
		including environment data.

   ATEXIT_MAX	Maximum number of functions that may be registered
		with `atexit'.

   CHILD_MAX	Maximum number of simultaneous processes per real
		user ID.

   OPEN_MAX	Maximum number of files that one process can have open
		at anyone time.

   PAGESIZE
   PAGE_SIZE	Size of bytes of a page.

   PASS_MAX	Maximum number of significant bytes in a password.

   We only provide a fixed limit for

   IOV_MAX	Maximum number of `iovec' structures that one process has
		available for use with `readv' or writev'.

   if this is indeed fixed by the underlying system.
*/


/* Maximum number of `iovec' structures that one process has available
   for use with `readv' or writev'.  */



/* Maximum value of `digit' in calls to the `printf' and `scanf'
   functions.  We have no limit, so return a reasonable value.  */


/* Maximum number of bytes in a `LANG' name.  We have no limit.  */


/* Maximum message number.  We have no limit.  */


/* Maximum number of bytes in N-to-1 collation mapping.  We have no
   limit.  */




/* Maximum set number.  We have no limit.  */


/* Maximum number of bytes in a message.  We have no limit.  */


/* Default process priority.  */



/* Number of bits in a word of type `int'.  */
# 121 "/usr/include/x86_64-linux-gnu/bits/xopen_lim.h" 3 4
/* Number of bits in a word of type `long int'.  */
# 133 "/usr/include/x86_64-linux-gnu/bits/xopen_lim.h" 3 4
/* Safe assumption.  */
# 152 "/usr/include/limits.h" 2 3 4
# 39 "/Xilinx/Vivado_HLS/2017.2/lnx64/tools/clang/bin/../lib/clang/3.1/include/limits.h" 2 3


/* Many system headers try to "help us out" by defining these.  No really, we
   know how big each datatype is. */
# 60 "/Xilinx/Vivado_HLS/2017.2/lnx64/tools/clang/bin/../lib/clang/3.1/include/limits.h" 3
/* C90/99 5.2.4.2.1 */
# 90 "/Xilinx/Vivado_HLS/2017.2/lnx64/tools/clang/bin/../lib/clang/3.1/include/limits.h" 3
/* C99 5.2.4.2.1: Added long long. */
# 102 "/Xilinx/Vivado_HLS/2017.2/lnx64/tools/clang/bin/../lib/clang/3.1/include/limits.h" 3
/* LONG_LONG_MIN/LONG_LONG_MAX/ULONG_LONG_MAX are a GNU extension.  It's too bad
   that we don't have something like #pragma poison that could be used to
   deprecate a macro - the code should just use LLONG_MAX and friends.
 */
# 22 "ed25519/src/fixedint.h" 2

    /* (u)int32_t */




            typedef unsigned int uint32_t;
# 39 "ed25519/src/fixedint.h"
 typedef signed int int32_t;






    /* (u)int64_t */







//        __extension__ typedef long long int64_t;
        __extension__ typedef long int64_t;
        __extension__ typedef unsigned long long uint64_t;
# 13 "ed25519/src/sha512.cpp" 2
# 1 "ed25519/src/sha512.h" 1



# 1 "/Xilinx/Vivado_HLS/2017.2/lnx64/tools/clang/bin/../lib/clang/3.1/include/stddef.h" 1 3
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






typedef __typeof__(((int*)0)-((int*)0)) ptrdiff_t;



typedef __typeof__(sizeof(int)) size_t;
# 56 "/Xilinx/Vivado_HLS/2017.2/lnx64/tools/clang/bin/../lib/clang/3.1/include/stddef.h" 3
/* Some C libraries expect to see a wint_t here. Others (notably MinGW) will use
__WINT_TYPE__ directly; accommodate both by requiring __need_wint_t */
# 5 "ed25519/src/sha512.h" 2

# 1 "ed25519/src/fixedint.h" 1
/*
    Portable header to provide the 32 and 64 bits type.

    Not a compatible replacement for <stdint.h>, do not blindly use it as such.
*/
# 7 "ed25519/src/sha512.h" 2



/* state */
typedef struct sha512_context_ {
    uint64_t length, state[8];
    size_t curlen;
    unsigned char buf[128];
} sha512_context;


int sha512_init(sha512_context * md);
int sha512_final(sha512_context * md, unsigned char *out);
int sha512_update(sha512_context * md, const unsigned char *in, size_t inlen);
int sha512_update_32(sha512_context * md, const unsigned char *in);
int sha512_update_128(sha512_context * md, const unsigned char *in);
int sha512(const unsigned char *message, size_t message_len, unsigned char *out);
# 14 "ed25519/src/sha512.cpp" 2

/* the K array */
static const uint64_t K[80] = {
    0x428a2f98d728ae22ULL, 0x7137449123ef65cdULL,
    0xb5c0fbcfec4d3b2fULL, 0xe9b5dba58189dbbcULL,
    0x3956c25bf348b538ULL, 0x59f111f1b605d019ULL,
    0x923f82a4af194f9bULL, 0xab1c5ed5da6d8118ULL,
    0xd807aa98a3030242ULL, 0x12835b0145706fbeULL,
    0x243185be4ee4b28cULL, 0x550c7dc3d5ffb4e2ULL,
    0x72be5d74f27b896fULL, 0x80deb1fe3b1696b1ULL,
    0x9bdc06a725c71235ULL, 0xc19bf174cf692694ULL,
    0xe49b69c19ef14ad2ULL, 0xefbe4786384f25e3ULL,
    0x0fc19dc68b8cd5b5ULL, 0x240ca1cc77ac9c65ULL,
    0x2de92c6f592b0275ULL, 0x4a7484aa6ea6e483ULL,
    0x5cb0a9dcbd41fbd4ULL, 0x76f988da831153b5ULL,
    0x983e5152ee66dfabULL, 0xa831c66d2db43210ULL,
    0xb00327c898fb213fULL, 0xbf597fc7beef0ee4ULL,
    0xc6e00bf33da88fc2ULL, 0xd5a79147930aa725ULL,
    0x06ca6351e003826fULL, 0x142929670a0e6e70ULL,
    0x27b70a8546d22ffcULL, 0x2e1b21385c26c926ULL,
    0x4d2c6dfc5ac42aedULL, 0x53380d139d95b3dfULL,
    0x650a73548baf63deULL, 0x766a0abb3c77b2a8ULL,
    0x81c2c92e47edaee6ULL, 0x92722c851482353bULL,
    0xa2bfe8a14cf10364ULL, 0xa81a664bbc423001ULL,
    0xc24b8b70d0f89791ULL, 0xc76c51a30654be30ULL,
    0xd192e819d6ef5218ULL, 0xd69906245565a910ULL,
    0xf40e35855771202aULL, 0x106aa07032bbd1b8ULL,
    0x19a4c116b8d2d0c8ULL, 0x1e376c085141ab53ULL,
    0x2748774cdf8eeb99ULL, 0x34b0bcb5e19b48a8ULL,
    0x391c0cb3c5c95a63ULL, 0x4ed8aa4ae3418acbULL,
    0x5b9cca4f7763e373ULL, 0x682e6ff3d6b2b8a3ULL,
    0x748f82ee5defb2fcULL, 0x78a5636f43172f60ULL,
    0x84c87814a1f0ab72ULL, 0x8cc702081a6439ecULL,
    0x90befffa23631e28ULL, 0xa4506cebde82bde9ULL,
    0xbef9a3f7b2c67915ULL, 0xc67178f2e372532bULL,
    0xca273eceea26619cULL, 0xd186b8c721c0c207ULL,
    0xeada7dd6cde0eb1eULL, 0xf57d4f7fee6ed178ULL,
    0x06f067aa72176fbaULL, 0x0a637dc5a2c898a6ULL,
    0x113f9804bef90daeULL, 0x1b710b35131c471bULL,
    0x28db77f523047d84ULL, 0x32caab7b40c72493ULL,
    0x3c9ebe0a15c9bebcULL, 0x431d67c49c100d4cULL,
    0x4cc5d4becb3e42b6ULL, 0x597f299cfc657e2aULL,
    0x5fcb6fab3ad6faecULL, 0x6c44198c4a475817ULL
};

/* Various logical functions */
# 71 "ed25519/src/sha512.cpp"
//#define LOAD64H(x, y)                                                      //   { x = (((uint64_t)((y)[0] & 255))<<56)|(((uint64_t)((y)[1] & 255))<<48) | //         (((uint64_t)((y)[2] & 255))<<40)|(((uint64_t)((y)[3] & 255))<<32) | //         (((uint64_t)((y)[4] & 255))<<24)|(((uint64_t)((y)[5] & 255))<<16) | //         (((uint64_t)((y)[6] & 255))<<8)|(((uint64_t)((y)[7] & 255))); }
# 95 "ed25519/src/sha512.cpp"
/* compress 1024-bits */
static int sha512_compress_128(sha512_context *md, unsigned char buf[128])
{_ssdm_SpecArrayDimSize(buf,128);
_ssdm_op_SpecResourceLimit(1, "mul", "", "", "");
_ssdm_op_SpecResourceLimit(1, "add", "", "", "");
_ssdm_op_SpecResourceLimit(1, "shl", "", "", "");
_ssdm_op_SpecResourceLimit(1, "ashr", "", "", "");
_ssdm_op_SpecResourceLimit(1, "lshr", "", "", "");
_ssdm_op_SpecResourceLimit(1, "icmp", "", "", "");
_ssdm_op_SpecResourceLimit(1, "sub", "", "", "");
 uint64_t S[8], W[80], t0, t1;
    int i;

    /* copy state into S */
    for (i = 0; i < 8; i++) {
        S[i] = md->state[i];
    }

    /* copy the state into 1024-bits into W[0..15] */
    for (i = 0; i < 16; i++) {
        { W[i] = (((uint64_t)((buf + (8*i))[0] & 255))<<56)|(((uint64_t)((buf + (8*i))[1] & 255))<<48) | (((uint64_t)((buf + (8*i))[2] & 255))<<40)|(((uint64_t)((buf + (8*i))[3] & 255))<<32) | (((uint64_t)((buf + (8*i))[4] & 255))<<24)|(((uint64_t)((buf + (8*i))[5] & 255))<<16) | (((uint64_t)((buf + (8*i))[6] & 255))<<8)|(((uint64_t)((buf + (8*i))[7] & 255))); };
    }

    /* fill W[16..79] */
    for (i = 16; i < 80; i++) {
        W[i] = (( ((((W[i - 2])&0xFFFFFFFFFFFFFFFFULL)>>((uint64_t)(19)&63ULL)) | ((W[i - 2])<<((uint64_t)(64 -((19)&63ULL))))) & 0xFFFFFFFFFFFFFFFFULL) ^ ( ((((W[i - 2])&0xFFFFFFFFFFFFFFFFULL)>>((uint64_t)(61)&63ULL)) | ((W[i - 2])<<((uint64_t)(64 -((61)&63ULL))))) & 0xFFFFFFFFFFFFFFFFULL) ^ (((W[i - 2]) &0xFFFFFFFFFFFFFFFFULL)>>((uint64_t)6))) + W[i - 7] + (( ((((W[i - 15])&0xFFFFFFFFFFFFFFFFULL)>>((uint64_t)(1)&63ULL)) | ((W[i - 15])<<((uint64_t)(64 -((1)&63ULL))))) & 0xFFFFFFFFFFFFFFFFULL) ^ ( ((((W[i - 15])&0xFFFFFFFFFFFFFFFFULL)>>((uint64_t)(8)&63ULL)) | ((W[i - 15])<<((uint64_t)(64 -((8)&63ULL))))) & 0xFFFFFFFFFFFFFFFFULL) ^ (((W[i - 15]) &0xFFFFFFFFFFFFFFFFULL)>>((uint64_t)7))) + W[i - 16];
    }

/* Compress */






    for (i = 0; i < 80; i += 8) {
       t0 = S[7] + (( ((((S[4])&0xFFFFFFFFFFFFFFFFULL)>>((uint64_t)(14)&63ULL)) | ((S[4])<<((uint64_t)(64 -((14)&63ULL))))) & 0xFFFFFFFFFFFFFFFFULL) ^ ( ((((S[4])&0xFFFFFFFFFFFFFFFFULL)>>((uint64_t)(18)&63ULL)) | ((S[4])<<((uint64_t)(64 -((18)&63ULL))))) & 0xFFFFFFFFFFFFFFFFULL) ^ ( ((((S[4])&0xFFFFFFFFFFFFFFFFULL)>>((uint64_t)(41)&63ULL)) | ((S[4])<<((uint64_t)(64 -((41)&63ULL))))) & 0xFFFFFFFFFFFFFFFFULL)) + (S[6] ^ (S[4] & (S[5] ^ S[6]))) + K[i+0] + W[i+0]; t1 = (( ((((S[0])&0xFFFFFFFFFFFFFFFFULL)>>((uint64_t)(28)&63ULL)) | ((S[0])<<((uint64_t)(64 -((28)&63ULL))))) & 0xFFFFFFFFFFFFFFFFULL) ^ ( ((((S[0])&0xFFFFFFFFFFFFFFFFULL)>>((uint64_t)(34)&63ULL)) | ((S[0])<<((uint64_t)(64 -((34)&63ULL))))) & 0xFFFFFFFFFFFFFFFFULL) ^ ( ((((S[0])&0xFFFFFFFFFFFFFFFFULL)>>((uint64_t)(39)&63ULL)) | ((S[0])<<((uint64_t)(64 -((39)&63ULL))))) & 0xFFFFFFFFFFFFFFFFULL)) + (((S[0] | S[1]) & S[2]) | (S[0] & S[1])); S[3] += t0; S[7] = t0 + t1;;
       t0 = S[6] + (( ((((S[3])&0xFFFFFFFFFFFFFFFFULL)>>((uint64_t)(14)&63ULL)) | ((S[3])<<((uint64_t)(64 -((14)&63ULL))))) & 0xFFFFFFFFFFFFFFFFULL) ^ ( ((((S[3])&0xFFFFFFFFFFFFFFFFULL)>>((uint64_t)(18)&63ULL)) | ((S[3])<<((uint64_t)(64 -((18)&63ULL))))) & 0xFFFFFFFFFFFFFFFFULL) ^ ( ((((S[3])&0xFFFFFFFFFFFFFFFFULL)>>((uint64_t)(41)&63ULL)) | ((S[3])<<((uint64_t)(64 -((41)&63ULL))))) & 0xFFFFFFFFFFFFFFFFULL)) + (S[5] ^ (S[3] & (S[4] ^ S[5]))) + K[i+1] + W[i+1]; t1 = (( ((((S[7])&0xFFFFFFFFFFFFFFFFULL)>>((uint64_t)(28)&63ULL)) | ((S[7])<<((uint64_t)(64 -((28)&63ULL))))) & 0xFFFFFFFFFFFFFFFFULL) ^ ( ((((S[7])&0xFFFFFFFFFFFFFFFFULL)>>((uint64_t)(34)&63ULL)) | ((S[7])<<((uint64_t)(64 -((34)&63ULL))))) & 0xFFFFFFFFFFFFFFFFULL) ^ ( ((((S[7])&0xFFFFFFFFFFFFFFFFULL)>>((uint64_t)(39)&63ULL)) | ((S[7])<<((uint64_t)(64 -((39)&63ULL))))) & 0xFFFFFFFFFFFFFFFFULL)) + (((S[7] | S[0]) & S[1]) | (S[7] & S[0])); S[2] += t0; S[6] = t0 + t1;;
       t0 = S[5] + (( ((((S[2])&0xFFFFFFFFFFFFFFFFULL)>>((uint64_t)(14)&63ULL)) | ((S[2])<<((uint64_t)(64 -((14)&63ULL))))) & 0xFFFFFFFFFFFFFFFFULL) ^ ( ((((S[2])&0xFFFFFFFFFFFFFFFFULL)>>((uint64_t)(18)&63ULL)) | ((S[2])<<((uint64_t)(64 -((18)&63ULL))))) & 0xFFFFFFFFFFFFFFFFULL) ^ ( ((((S[2])&0xFFFFFFFFFFFFFFFFULL)>>((uint64_t)(41)&63ULL)) | ((S[2])<<((uint64_t)(64 -((41)&63ULL))))) & 0xFFFFFFFFFFFFFFFFULL)) + (S[4] ^ (S[2] & (S[3] ^ S[4]))) + K[i+2] + W[i+2]; t1 = (( ((((S[6])&0xFFFFFFFFFFFFFFFFULL)>>((uint64_t)(28)&63ULL)) | ((S[6])<<((uint64_t)(64 -((28)&63ULL))))) & 0xFFFFFFFFFFFFFFFFULL) ^ ( ((((S[6])&0xFFFFFFFFFFFFFFFFULL)>>((uint64_t)(34)&63ULL)) | ((S[6])<<((uint64_t)(64 -((34)&63ULL))))) & 0xFFFFFFFFFFFFFFFFULL) ^ ( ((((S[6])&0xFFFFFFFFFFFFFFFFULL)>>((uint64_t)(39)&63ULL)) | ((S[6])<<((uint64_t)(64 -((39)&63ULL))))) & 0xFFFFFFFFFFFFFFFFULL)) + (((S[6] | S[7]) & S[0]) | (S[6] & S[7])); S[1] += t0; S[5] = t0 + t1;;
       t0 = S[4] + (( ((((S[1])&0xFFFFFFFFFFFFFFFFULL)>>((uint64_t)(14)&63ULL)) | ((S[1])<<((uint64_t)(64 -((14)&63ULL))))) & 0xFFFFFFFFFFFFFFFFULL) ^ ( ((((S[1])&0xFFFFFFFFFFFFFFFFULL)>>((uint64_t)(18)&63ULL)) | ((S[1])<<((uint64_t)(64 -((18)&63ULL))))) & 0xFFFFFFFFFFFFFFFFULL) ^ ( ((((S[1])&0xFFFFFFFFFFFFFFFFULL)>>((uint64_t)(41)&63ULL)) | ((S[1])<<((uint64_t)(64 -((41)&63ULL))))) & 0xFFFFFFFFFFFFFFFFULL)) + (S[3] ^ (S[1] & (S[2] ^ S[3]))) + K[i+3] + W[i+3]; t1 = (( ((((S[5])&0xFFFFFFFFFFFFFFFFULL)>>((uint64_t)(28)&63ULL)) | ((S[5])<<((uint64_t)(64 -((28)&63ULL))))) & 0xFFFFFFFFFFFFFFFFULL) ^ ( ((((S[5])&0xFFFFFFFFFFFFFFFFULL)>>((uint64_t)(34)&63ULL)) | ((S[5])<<((uint64_t)(64 -((34)&63ULL))))) & 0xFFFFFFFFFFFFFFFFULL) ^ ( ((((S[5])&0xFFFFFFFFFFFFFFFFULL)>>((uint64_t)(39)&63ULL)) | ((S[5])<<((uint64_t)(64 -((39)&63ULL))))) & 0xFFFFFFFFFFFFFFFFULL)) + (((S[5] | S[6]) & S[7]) | (S[5] & S[6])); S[0] += t0; S[4] = t0 + t1;;
       t0 = S[3] + (( ((((S[0])&0xFFFFFFFFFFFFFFFFULL)>>((uint64_t)(14)&63ULL)) | ((S[0])<<((uint64_t)(64 -((14)&63ULL))))) & 0xFFFFFFFFFFFFFFFFULL) ^ ( ((((S[0])&0xFFFFFFFFFFFFFFFFULL)>>((uint64_t)(18)&63ULL)) | ((S[0])<<((uint64_t)(64 -((18)&63ULL))))) & 0xFFFFFFFFFFFFFFFFULL) ^ ( ((((S[0])&0xFFFFFFFFFFFFFFFFULL)>>((uint64_t)(41)&63ULL)) | ((S[0])<<((uint64_t)(64 -((41)&63ULL))))) & 0xFFFFFFFFFFFFFFFFULL)) + (S[2] ^ (S[0] & (S[1] ^ S[2]))) + K[i+4] + W[i+4]; t1 = (( ((((S[4])&0xFFFFFFFFFFFFFFFFULL)>>((uint64_t)(28)&63ULL)) | ((S[4])<<((uint64_t)(64 -((28)&63ULL))))) & 0xFFFFFFFFFFFFFFFFULL) ^ ( ((((S[4])&0xFFFFFFFFFFFFFFFFULL)>>((uint64_t)(34)&63ULL)) | ((S[4])<<((uint64_t)(64 -((34)&63ULL))))) & 0xFFFFFFFFFFFFFFFFULL) ^ ( ((((S[4])&0xFFFFFFFFFFFFFFFFULL)>>((uint64_t)(39)&63ULL)) | ((S[4])<<((uint64_t)(64 -((39)&63ULL))))) & 0xFFFFFFFFFFFFFFFFULL)) + (((S[4] | S[5]) & S[6]) | (S[4] & S[5])); S[7] += t0; S[3] = t0 + t1;;
       t0 = S[2] + (( ((((S[7])&0xFFFFFFFFFFFFFFFFULL)>>((uint64_t)(14)&63ULL)) | ((S[7])<<((uint64_t)(64 -((14)&63ULL))))) & 0xFFFFFFFFFFFFFFFFULL) ^ ( ((((S[7])&0xFFFFFFFFFFFFFFFFULL)>>((uint64_t)(18)&63ULL)) | ((S[7])<<((uint64_t)(64 -((18)&63ULL))))) & 0xFFFFFFFFFFFFFFFFULL) ^ ( ((((S[7])&0xFFFFFFFFFFFFFFFFULL)>>((uint64_t)(41)&63ULL)) | ((S[7])<<((uint64_t)(64 -((41)&63ULL))))) & 0xFFFFFFFFFFFFFFFFULL)) + (S[1] ^ (S[7] & (S[0] ^ S[1]))) + K[i+5] + W[i+5]; t1 = (( ((((S[3])&0xFFFFFFFFFFFFFFFFULL)>>((uint64_t)(28)&63ULL)) | ((S[3])<<((uint64_t)(64 -((28)&63ULL))))) & 0xFFFFFFFFFFFFFFFFULL) ^ ( ((((S[3])&0xFFFFFFFFFFFFFFFFULL)>>((uint64_t)(34)&63ULL)) | ((S[3])<<((uint64_t)(64 -((34)&63ULL))))) & 0xFFFFFFFFFFFFFFFFULL) ^ ( ((((S[3])&0xFFFFFFFFFFFFFFFFULL)>>((uint64_t)(39)&63ULL)) | ((S[3])<<((uint64_t)(64 -((39)&63ULL))))) & 0xFFFFFFFFFFFFFFFFULL)) + (((S[3] | S[4]) & S[5]) | (S[3] & S[4])); S[6] += t0; S[2] = t0 + t1;;
       t0 = S[1] + (( ((((S[6])&0xFFFFFFFFFFFFFFFFULL)>>((uint64_t)(14)&63ULL)) | ((S[6])<<((uint64_t)(64 -((14)&63ULL))))) & 0xFFFFFFFFFFFFFFFFULL) ^ ( ((((S[6])&0xFFFFFFFFFFFFFFFFULL)>>((uint64_t)(18)&63ULL)) | ((S[6])<<((uint64_t)(64 -((18)&63ULL))))) & 0xFFFFFFFFFFFFFFFFULL) ^ ( ((((S[6])&0xFFFFFFFFFFFFFFFFULL)>>((uint64_t)(41)&63ULL)) | ((S[6])<<((uint64_t)(64 -((41)&63ULL))))) & 0xFFFFFFFFFFFFFFFFULL)) + (S[0] ^ (S[6] & (S[7] ^ S[0]))) + K[i+6] + W[i+6]; t1 = (( ((((S[2])&0xFFFFFFFFFFFFFFFFULL)>>((uint64_t)(28)&63ULL)) | ((S[2])<<((uint64_t)(64 -((28)&63ULL))))) & 0xFFFFFFFFFFFFFFFFULL) ^ ( ((((S[2])&0xFFFFFFFFFFFFFFFFULL)>>((uint64_t)(34)&63ULL)) | ((S[2])<<((uint64_t)(64 -((34)&63ULL))))) & 0xFFFFFFFFFFFFFFFFULL) ^ ( ((((S[2])&0xFFFFFFFFFFFFFFFFULL)>>((uint64_t)(39)&63ULL)) | ((S[2])<<((uint64_t)(64 -((39)&63ULL))))) & 0xFFFFFFFFFFFFFFFFULL)) + (((S[2] | S[3]) & S[4]) | (S[2] & S[3])); S[5] += t0; S[1] = t0 + t1;;
       t0 = S[0] + (( ((((S[5])&0xFFFFFFFFFFFFFFFFULL)>>((uint64_t)(14)&63ULL)) | ((S[5])<<((uint64_t)(64 -((14)&63ULL))))) & 0xFFFFFFFFFFFFFFFFULL) ^ ( ((((S[5])&0xFFFFFFFFFFFFFFFFULL)>>((uint64_t)(18)&63ULL)) | ((S[5])<<((uint64_t)(64 -((18)&63ULL))))) & 0xFFFFFFFFFFFFFFFFULL) ^ ( ((((S[5])&0xFFFFFFFFFFFFFFFFULL)>>((uint64_t)(41)&63ULL)) | ((S[5])<<((uint64_t)(64 -((41)&63ULL))))) & 0xFFFFFFFFFFFFFFFFULL)) + (S[7] ^ (S[5] & (S[6] ^ S[7]))) + K[i+7] + W[i+7]; t1 = (( ((((S[1])&0xFFFFFFFFFFFFFFFFULL)>>((uint64_t)(28)&63ULL)) | ((S[1])<<((uint64_t)(64 -((28)&63ULL))))) & 0xFFFFFFFFFFFFFFFFULL) ^ ( ((((S[1])&0xFFFFFFFFFFFFFFFFULL)>>((uint64_t)(34)&63ULL)) | ((S[1])<<((uint64_t)(64 -((34)&63ULL))))) & 0xFFFFFFFFFFFFFFFFULL) ^ ( ((((S[1])&0xFFFFFFFFFFFFFFFFULL)>>((uint64_t)(39)&63ULL)) | ((S[1])<<((uint64_t)(64 -((39)&63ULL))))) & 0xFFFFFFFFFFFFFFFFULL)) + (((S[1] | S[2]) & S[3]) | (S[1] & S[2])); S[4] += t0; S[0] = t0 + t1;;
   }





    /* feedback */
   for (i = 0; i < 8; i++) {
        md->state[i] = md->state[i] + S[i];
    }

    return 0;
}

static int sha512_compress_32(sha512_context *md, unsigned char buf[32])
{_ssdm_SpecArrayDimSize(buf,32);
_ssdm_op_SpecResourceLimit(1, "mul", "", "", "");
_ssdm_op_SpecResourceLimit(1, "add", "", "", "");
_ssdm_op_SpecResourceLimit(1, "shl", "", "", "");
_ssdm_op_SpecResourceLimit(1, "ashr", "", "", "");
_ssdm_op_SpecResourceLimit(1, "lshr", "", "", "");
_ssdm_op_SpecResourceLimit(1, "icmp", "", "", "");
_ssdm_op_SpecResourceLimit(1, "sub", "", "", "");
 uint64_t S[8], W[80], t0, t1;
    int i;

    /* copy state into S */
    for (i = 0; i < 8; i++) {
        S[i] = md->state[i];
    }

    /* copy the state into 1024-bits into W[0..15] */
    for (i = 0; i < 16; i++) {
        { W[i] = (((uint64_t)((buf + (8*i))[0] & 255))<<56)|(((uint64_t)((buf + (8*i))[1] & 255))<<48) | (((uint64_t)((buf + (8*i))[2] & 255))<<40)|(((uint64_t)((buf + (8*i))[3] & 255))<<32) | (((uint64_t)((buf + (8*i))[4] & 255))<<24)|(((uint64_t)((buf + (8*i))[5] & 255))<<16) | (((uint64_t)((buf + (8*i))[6] & 255))<<8)|(((uint64_t)((buf + (8*i))[7] & 255))); };
    }

    /* fill W[16..79] */
    for (i = 16; i < 80; i++) {
        W[i] = (( ((((W[i - 2])&0xFFFFFFFFFFFFFFFFULL)>>((uint64_t)(19)&63ULL)) | ((W[i - 2])<<((uint64_t)(64 -((19)&63ULL))))) & 0xFFFFFFFFFFFFFFFFULL) ^ ( ((((W[i - 2])&0xFFFFFFFFFFFFFFFFULL)>>((uint64_t)(61)&63ULL)) | ((W[i - 2])<<((uint64_t)(64 -((61)&63ULL))))) & 0xFFFFFFFFFFFFFFFFULL) ^ (((W[i - 2]) &0xFFFFFFFFFFFFFFFFULL)>>((uint64_t)6))) + W[i - 7] + (( ((((W[i - 15])&0xFFFFFFFFFFFFFFFFULL)>>((uint64_t)(1)&63ULL)) | ((W[i - 15])<<((uint64_t)(64 -((1)&63ULL))))) & 0xFFFFFFFFFFFFFFFFULL) ^ ( ((((W[i - 15])&0xFFFFFFFFFFFFFFFFULL)>>((uint64_t)(8)&63ULL)) | ((W[i - 15])<<((uint64_t)(64 -((8)&63ULL))))) & 0xFFFFFFFFFFFFFFFFULL) ^ (((W[i - 15]) &0xFFFFFFFFFFFFFFFFULL)>>((uint64_t)7))) + W[i - 16];
    }

/* Compress */






    for (i = 0; i < 80; i += 8) {
       t0 = S[7] + (( ((((S[4])&0xFFFFFFFFFFFFFFFFULL)>>((uint64_t)(14)&63ULL)) | ((S[4])<<((uint64_t)(64 -((14)&63ULL))))) & 0xFFFFFFFFFFFFFFFFULL) ^ ( ((((S[4])&0xFFFFFFFFFFFFFFFFULL)>>((uint64_t)(18)&63ULL)) | ((S[4])<<((uint64_t)(64 -((18)&63ULL))))) & 0xFFFFFFFFFFFFFFFFULL) ^ ( ((((S[4])&0xFFFFFFFFFFFFFFFFULL)>>((uint64_t)(41)&63ULL)) | ((S[4])<<((uint64_t)(64 -((41)&63ULL))))) & 0xFFFFFFFFFFFFFFFFULL)) + (S[6] ^ (S[4] & (S[5] ^ S[6]))) + K[i+0] + W[i+0]; t1 = (( ((((S[0])&0xFFFFFFFFFFFFFFFFULL)>>((uint64_t)(28)&63ULL)) | ((S[0])<<((uint64_t)(64 -((28)&63ULL))))) & 0xFFFFFFFFFFFFFFFFULL) ^ ( ((((S[0])&0xFFFFFFFFFFFFFFFFULL)>>((uint64_t)(34)&63ULL)) | ((S[0])<<((uint64_t)(64 -((34)&63ULL))))) & 0xFFFFFFFFFFFFFFFFULL) ^ ( ((((S[0])&0xFFFFFFFFFFFFFFFFULL)>>((uint64_t)(39)&63ULL)) | ((S[0])<<((uint64_t)(64 -((39)&63ULL))))) & 0xFFFFFFFFFFFFFFFFULL)) + (((S[0] | S[1]) & S[2]) | (S[0] & S[1])); S[3] += t0; S[7] = t0 + t1;;
       t0 = S[6] + (( ((((S[3])&0xFFFFFFFFFFFFFFFFULL)>>((uint64_t)(14)&63ULL)) | ((S[3])<<((uint64_t)(64 -((14)&63ULL))))) & 0xFFFFFFFFFFFFFFFFULL) ^ ( ((((S[3])&0xFFFFFFFFFFFFFFFFULL)>>((uint64_t)(18)&63ULL)) | ((S[3])<<((uint64_t)(64 -((18)&63ULL))))) & 0xFFFFFFFFFFFFFFFFULL) ^ ( ((((S[3])&0xFFFFFFFFFFFFFFFFULL)>>((uint64_t)(41)&63ULL)) | ((S[3])<<((uint64_t)(64 -((41)&63ULL))))) & 0xFFFFFFFFFFFFFFFFULL)) + (S[5] ^ (S[3] & (S[4] ^ S[5]))) + K[i+1] + W[i+1]; t1 = (( ((((S[7])&0xFFFFFFFFFFFFFFFFULL)>>((uint64_t)(28)&63ULL)) | ((S[7])<<((uint64_t)(64 -((28)&63ULL))))) & 0xFFFFFFFFFFFFFFFFULL) ^ ( ((((S[7])&0xFFFFFFFFFFFFFFFFULL)>>((uint64_t)(34)&63ULL)) | ((S[7])<<((uint64_t)(64 -((34)&63ULL))))) & 0xFFFFFFFFFFFFFFFFULL) ^ ( ((((S[7])&0xFFFFFFFFFFFFFFFFULL)>>((uint64_t)(39)&63ULL)) | ((S[7])<<((uint64_t)(64 -((39)&63ULL))))) & 0xFFFFFFFFFFFFFFFFULL)) + (((S[7] | S[0]) & S[1]) | (S[7] & S[0])); S[2] += t0; S[6] = t0 + t1;;
       t0 = S[5] + (( ((((S[2])&0xFFFFFFFFFFFFFFFFULL)>>((uint64_t)(14)&63ULL)) | ((S[2])<<((uint64_t)(64 -((14)&63ULL))))) & 0xFFFFFFFFFFFFFFFFULL) ^ ( ((((S[2])&0xFFFFFFFFFFFFFFFFULL)>>((uint64_t)(18)&63ULL)) | ((S[2])<<((uint64_t)(64 -((18)&63ULL))))) & 0xFFFFFFFFFFFFFFFFULL) ^ ( ((((S[2])&0xFFFFFFFFFFFFFFFFULL)>>((uint64_t)(41)&63ULL)) | ((S[2])<<((uint64_t)(64 -((41)&63ULL))))) & 0xFFFFFFFFFFFFFFFFULL)) + (S[4] ^ (S[2] & (S[3] ^ S[4]))) + K[i+2] + W[i+2]; t1 = (( ((((S[6])&0xFFFFFFFFFFFFFFFFULL)>>((uint64_t)(28)&63ULL)) | ((S[6])<<((uint64_t)(64 -((28)&63ULL))))) & 0xFFFFFFFFFFFFFFFFULL) ^ ( ((((S[6])&0xFFFFFFFFFFFFFFFFULL)>>((uint64_t)(34)&63ULL)) | ((S[6])<<((uint64_t)(64 -((34)&63ULL))))) & 0xFFFFFFFFFFFFFFFFULL) ^ ( ((((S[6])&0xFFFFFFFFFFFFFFFFULL)>>((uint64_t)(39)&63ULL)) | ((S[6])<<((uint64_t)(64 -((39)&63ULL))))) & 0xFFFFFFFFFFFFFFFFULL)) + (((S[6] | S[7]) & S[0]) | (S[6] & S[7])); S[1] += t0; S[5] = t0 + t1;;
       t0 = S[4] + (( ((((S[1])&0xFFFFFFFFFFFFFFFFULL)>>((uint64_t)(14)&63ULL)) | ((S[1])<<((uint64_t)(64 -((14)&63ULL))))) & 0xFFFFFFFFFFFFFFFFULL) ^ ( ((((S[1])&0xFFFFFFFFFFFFFFFFULL)>>((uint64_t)(18)&63ULL)) | ((S[1])<<((uint64_t)(64 -((18)&63ULL))))) & 0xFFFFFFFFFFFFFFFFULL) ^ ( ((((S[1])&0xFFFFFFFFFFFFFFFFULL)>>((uint64_t)(41)&63ULL)) | ((S[1])<<((uint64_t)(64 -((41)&63ULL))))) & 0xFFFFFFFFFFFFFFFFULL)) + (S[3] ^ (S[1] & (S[2] ^ S[3]))) + K[i+3] + W[i+3]; t1 = (( ((((S[5])&0xFFFFFFFFFFFFFFFFULL)>>((uint64_t)(28)&63ULL)) | ((S[5])<<((uint64_t)(64 -((28)&63ULL))))) & 0xFFFFFFFFFFFFFFFFULL) ^ ( ((((S[5])&0xFFFFFFFFFFFFFFFFULL)>>((uint64_t)(34)&63ULL)) | ((S[5])<<((uint64_t)(64 -((34)&63ULL))))) & 0xFFFFFFFFFFFFFFFFULL) ^ ( ((((S[5])&0xFFFFFFFFFFFFFFFFULL)>>((uint64_t)(39)&63ULL)) | ((S[5])<<((uint64_t)(64 -((39)&63ULL))))) & 0xFFFFFFFFFFFFFFFFULL)) + (((S[5] | S[6]) & S[7]) | (S[5] & S[6])); S[0] += t0; S[4] = t0 + t1;;
       t0 = S[3] + (( ((((S[0])&0xFFFFFFFFFFFFFFFFULL)>>((uint64_t)(14)&63ULL)) | ((S[0])<<((uint64_t)(64 -((14)&63ULL))))) & 0xFFFFFFFFFFFFFFFFULL) ^ ( ((((S[0])&0xFFFFFFFFFFFFFFFFULL)>>((uint64_t)(18)&63ULL)) | ((S[0])<<((uint64_t)(64 -((18)&63ULL))))) & 0xFFFFFFFFFFFFFFFFULL) ^ ( ((((S[0])&0xFFFFFFFFFFFFFFFFULL)>>((uint64_t)(41)&63ULL)) | ((S[0])<<((uint64_t)(64 -((41)&63ULL))))) & 0xFFFFFFFFFFFFFFFFULL)) + (S[2] ^ (S[0] & (S[1] ^ S[2]))) + K[i+4] + W[i+4]; t1 = (( ((((S[4])&0xFFFFFFFFFFFFFFFFULL)>>((uint64_t)(28)&63ULL)) | ((S[4])<<((uint64_t)(64 -((28)&63ULL))))) & 0xFFFFFFFFFFFFFFFFULL) ^ ( ((((S[4])&0xFFFFFFFFFFFFFFFFULL)>>((uint64_t)(34)&63ULL)) | ((S[4])<<((uint64_t)(64 -((34)&63ULL))))) & 0xFFFFFFFFFFFFFFFFULL) ^ ( ((((S[4])&0xFFFFFFFFFFFFFFFFULL)>>((uint64_t)(39)&63ULL)) | ((S[4])<<((uint64_t)(64 -((39)&63ULL))))) & 0xFFFFFFFFFFFFFFFFULL)) + (((S[4] | S[5]) & S[6]) | (S[4] & S[5])); S[7] += t0; S[3] = t0 + t1;;
       t0 = S[2] + (( ((((S[7])&0xFFFFFFFFFFFFFFFFULL)>>((uint64_t)(14)&63ULL)) | ((S[7])<<((uint64_t)(64 -((14)&63ULL))))) & 0xFFFFFFFFFFFFFFFFULL) ^ ( ((((S[7])&0xFFFFFFFFFFFFFFFFULL)>>((uint64_t)(18)&63ULL)) | ((S[7])<<((uint64_t)(64 -((18)&63ULL))))) & 0xFFFFFFFFFFFFFFFFULL) ^ ( ((((S[7])&0xFFFFFFFFFFFFFFFFULL)>>((uint64_t)(41)&63ULL)) | ((S[7])<<((uint64_t)(64 -((41)&63ULL))))) & 0xFFFFFFFFFFFFFFFFULL)) + (S[1] ^ (S[7] & (S[0] ^ S[1]))) + K[i+5] + W[i+5]; t1 = (( ((((S[3])&0xFFFFFFFFFFFFFFFFULL)>>((uint64_t)(28)&63ULL)) | ((S[3])<<((uint64_t)(64 -((28)&63ULL))))) & 0xFFFFFFFFFFFFFFFFULL) ^ ( ((((S[3])&0xFFFFFFFFFFFFFFFFULL)>>((uint64_t)(34)&63ULL)) | ((S[3])<<((uint64_t)(64 -((34)&63ULL))))) & 0xFFFFFFFFFFFFFFFFULL) ^ ( ((((S[3])&0xFFFFFFFFFFFFFFFFULL)>>((uint64_t)(39)&63ULL)) | ((S[3])<<((uint64_t)(64 -((39)&63ULL))))) & 0xFFFFFFFFFFFFFFFFULL)) + (((S[3] | S[4]) & S[5]) | (S[3] & S[4])); S[6] += t0; S[2] = t0 + t1;;
       t0 = S[1] + (( ((((S[6])&0xFFFFFFFFFFFFFFFFULL)>>((uint64_t)(14)&63ULL)) | ((S[6])<<((uint64_t)(64 -((14)&63ULL))))) & 0xFFFFFFFFFFFFFFFFULL) ^ ( ((((S[6])&0xFFFFFFFFFFFFFFFFULL)>>((uint64_t)(18)&63ULL)) | ((S[6])<<((uint64_t)(64 -((18)&63ULL))))) & 0xFFFFFFFFFFFFFFFFULL) ^ ( ((((S[6])&0xFFFFFFFFFFFFFFFFULL)>>((uint64_t)(41)&63ULL)) | ((S[6])<<((uint64_t)(64 -((41)&63ULL))))) & 0xFFFFFFFFFFFFFFFFULL)) + (S[0] ^ (S[6] & (S[7] ^ S[0]))) + K[i+6] + W[i+6]; t1 = (( ((((S[2])&0xFFFFFFFFFFFFFFFFULL)>>((uint64_t)(28)&63ULL)) | ((S[2])<<((uint64_t)(64 -((28)&63ULL))))) & 0xFFFFFFFFFFFFFFFFULL) ^ ( ((((S[2])&0xFFFFFFFFFFFFFFFFULL)>>((uint64_t)(34)&63ULL)) | ((S[2])<<((uint64_t)(64 -((34)&63ULL))))) & 0xFFFFFFFFFFFFFFFFULL) ^ ( ((((S[2])&0xFFFFFFFFFFFFFFFFULL)>>((uint64_t)(39)&63ULL)) | ((S[2])<<((uint64_t)(64 -((39)&63ULL))))) & 0xFFFFFFFFFFFFFFFFULL)) + (((S[2] | S[3]) & S[4]) | (S[2] & S[3])); S[5] += t0; S[1] = t0 + t1;;
       t0 = S[0] + (( ((((S[5])&0xFFFFFFFFFFFFFFFFULL)>>((uint64_t)(14)&63ULL)) | ((S[5])<<((uint64_t)(64 -((14)&63ULL))))) & 0xFFFFFFFFFFFFFFFFULL) ^ ( ((((S[5])&0xFFFFFFFFFFFFFFFFULL)>>((uint64_t)(18)&63ULL)) | ((S[5])<<((uint64_t)(64 -((18)&63ULL))))) & 0xFFFFFFFFFFFFFFFFULL) ^ ( ((((S[5])&0xFFFFFFFFFFFFFFFFULL)>>((uint64_t)(41)&63ULL)) | ((S[5])<<((uint64_t)(64 -((41)&63ULL))))) & 0xFFFFFFFFFFFFFFFFULL)) + (S[7] ^ (S[5] & (S[6] ^ S[7]))) + K[i+7] + W[i+7]; t1 = (( ((((S[1])&0xFFFFFFFFFFFFFFFFULL)>>((uint64_t)(28)&63ULL)) | ((S[1])<<((uint64_t)(64 -((28)&63ULL))))) & 0xFFFFFFFFFFFFFFFFULL) ^ ( ((((S[1])&0xFFFFFFFFFFFFFFFFULL)>>((uint64_t)(34)&63ULL)) | ((S[1])<<((uint64_t)(64 -((34)&63ULL))))) & 0xFFFFFFFFFFFFFFFFULL) ^ ( ((((S[1])&0xFFFFFFFFFFFFFFFFULL)>>((uint64_t)(39)&63ULL)) | ((S[1])<<((uint64_t)(64 -((39)&63ULL))))) & 0xFFFFFFFFFFFFFFFFULL)) + (((S[1] | S[2]) & S[3]) | (S[1] & S[2])); S[4] += t0; S[0] = t0 + t1;;
   }





    /* feedback */
   for (i = 0; i < 8; i++) {
        md->state[i] = md->state[i] + S[i];
    }

    return 0;
}


/**
   Initialize the hash state
   @param md   The hash state you wish to initialize
   @return 0 if successful
*/
int sha512_init(sha512_context * md) {
    if (md == __null) return 1;

    md->curlen = 0;
    md->length = 0;
    md->state[0] = 0x6a09e667f3bcc908ULL;
    md->state[1] = 0xbb67ae8584caa73bULL;
    md->state[2] = 0x3c6ef372fe94f82bULL;
    md->state[3] = 0xa54ff53a5f1d36f1ULL;
    md->state[4] = 0x510e527fade682d1ULL;
    md->state[5] = 0x9b05688c2b3e6c1fULL;
    md->state[6] = 0x1f83d9abfb41bd6bULL;
    md->state[7] = 0x5be0cd19137e2179ULL;

    return 0;
}

/**
   Process a block of memory though the hash
   @param md     The hash state
   @param in     The data to hash
   @param inlen  The length of the data (octets)
   @return 0 if successful
*/
int sha512_update_128(sha512_context * md, const unsigned char in[128])
{_ssdm_SpecArrayDimSize(in,128);
_ssdm_op_SpecResourceLimit(1, "mul", "", "", "");
_ssdm_op_SpecResourceLimit(1, "add", "", "", "");
_ssdm_op_SpecResourceLimit(1, "shl", "", "", "");
_ssdm_op_SpecResourceLimit(1, "ashr", "", "", "");
_ssdm_op_SpecResourceLimit(1, "lshr", "", "", "");
_ssdm_op_SpecResourceLimit(1, "icmp", "", "", "");
_ssdm_op_SpecResourceLimit(1, "sub", "", "", "");
 size_t n;
    size_t i;
    size_t inlen = 128;
    int temp_index;
    int err;
    unsigned char temp_buf[128];
//    if (md == NULL) return 1;
//    if (in == NULL) return 1;
    if (md->curlen > sizeof(md->buf)) {
       return 1;
    }
    while (inlen > 0) {
        if (md->curlen == 0 && inlen >= 128) {
           if ((err = sha512_compress_128(md, (unsigned char *)in)) != 0) {
              return err;
           }
           md->length += 128 * 8;
           in += 128;
           inlen -= 128;
        } else {
           n = ( ((inlen)<((128 - md->curlen)))?(inlen):((128 - md->curlen)) );

           for (i = 0; i < n; i++) {
            md->buf[i + md->curlen] = in[i];
           }


           md->curlen += n;
           in += n;
           inlen -= n;
           if (md->curlen == 128) {
            for(temp_index=0; temp_index<128; temp_index++){
     temp_buf[temp_index] = md->buf[temp_index];
    }
              if ((err = sha512_compress_128(md, temp_buf)) != 0) {
                 return err;
              }
               for(temp_index=0; temp_index<128; temp_index++){
     md->buf[temp_index] = temp_buf[temp_index];
    }
              md->length += 8*128;
              md->curlen = 0;
           }
       }
    }
    return 0;
}

int sha512_update_32(sha512_context * md, const unsigned char in[32])
{_ssdm_SpecArrayDimSize(in,32);
_ssdm_op_SpecResourceLimit(1, "mul", "", "", "");
_ssdm_op_SpecResourceLimit(1, "add", "", "", "");
_ssdm_op_SpecResourceLimit(1, "shl", "", "", "");
_ssdm_op_SpecResourceLimit(1, "ashr", "", "", "");
_ssdm_op_SpecResourceLimit(1, "lshr", "", "", "");
_ssdm_op_SpecResourceLimit(1, "icmp", "", "", "");
_ssdm_op_SpecResourceLimit(1, "sub", "", "", "");
 size_t n;
    size_t i;
    size_t inlen = 32;
    int temp_index;
    unsigned char temp_buf[128];
    int err;
//    if (md == NULL) return 1;
//    if (in == NULL) return 1;
    if (md->curlen > sizeof(md->buf)) {
       return 1;
    }
    while (inlen > 0) {
        if (md->curlen == 0 && inlen >= 128) {
           if ((err = sha512_compress_32(md, (unsigned char *)in)) != 0) {
              return err;
           }
           md->length += 128 * 8;
           in += 128;
           inlen -= 128;
        } else {
           n = ( ((inlen)<((128 - md->curlen)))?(inlen):((128 - md->curlen)) );

           for (i = 0; i < n; i++) {
            md->buf[i + md->curlen] = in[i];
           }


           md->curlen += n;
           in += n;
           inlen -= n;
   if (md->curlen == 128) {
    for(temp_index=0; temp_index<128; temp_index++){
     temp_buf[temp_index] = md->buf[temp_index];
    }
    if ((err = sha512_compress_128(md, temp_buf)) != 0) {
     return err;
    }
    for(temp_index=0; temp_index<128; temp_index++){
     md->buf[temp_index] = temp_buf[temp_index];
    }
    md->length += 8*128;
    md->curlen = 0;
   }
       }
    }
    return 0;
}

/**
   Terminate the hash to get the digest
   @param md  The hash state
   @param out [out] The destination of the hash (64 bytes)
   @return 0 if successful
*/
int sha512_final(sha512_context * md, unsigned char *out)
{
    int i;
    int temp_index;
 unsigned char temp_buf[128];

//    if (md == NULL) return 1;
//    if (out == NULL) return 1;

    if (md->curlen >= sizeof(md->buf)) {
     return 1;
    }

    /* increase the length of the message */
    md->length += md->curlen * 8ULL;

    /* append the '1' bit */
    md->buf[md->curlen++] = (unsigned char)0x80;

    /* if the length is currently above 112 bytes we append zeros
     * then compress.  Then we can fall back to padding zeros and length
     * encoding like normal.
     */
 if (md->curlen > 112) {
  while (md->curlen < 128) {
   md->buf[md->curlen++] = (unsigned char)0;
  }
  for(temp_index=0; temp_index<128; temp_index++){
   temp_buf[temp_index] = md->buf[temp_index];
  }
  sha512_compress_128(md, temp_buf);
  for(temp_index=0; temp_index<128; temp_index++){
   md->buf[temp_index] = temp_buf[temp_index];
  }
  md->curlen = 0;
    }

    /* pad upto 120 bytes of zeroes 
     * note: that from 112 to 120 is the 64 MSB of the length.  We assume that you won't hash
     * > 2^64 bits of data... :-)
     */
 while (md->curlen < 120) {
  md->buf[md->curlen++] = (unsigned char)0;
 }

    /* store length */
 { (md->buf+120)[0] = (unsigned char)(((md->length)>>56)&255); (md->buf+120)[1] = (unsigned char)(((md->length)>>48)&255); (md->buf+120)[2] = (unsigned char)(((md->length)>>40)&255); (md->buf+120)[3] = (unsigned char)(((md->length)>>32)&255); (md->buf+120)[4] = (unsigned char)(((md->length)>>24)&255); (md->buf+120)[5] = (unsigned char)(((md->length)>>16)&255); (md->buf+120)[6] = (unsigned char)(((md->length)>>8)&255); (md->buf+120)[7] = (unsigned char)((md->length)&255); };
 for(temp_index=0; temp_index<128; temp_index++){
  temp_buf[temp_index] = md->buf[temp_index];
 }
 sha512_compress_128(md, temp_buf);
 for(temp_index=0; temp_index<128; temp_index++){
  md->buf[temp_index] = temp_buf[temp_index];
 }

    /* copy output */
 for (i = 0; i < 8; i++) {
  { (out+(8*i))[0] = (unsigned char)(((md->state[i])>>56)&255); (out+(8*i))[1] = (unsigned char)(((md->state[i])>>48)&255); (out+(8*i))[2] = (unsigned char)(((md->state[i])>>40)&255); (out+(8*i))[3] = (unsigned char)(((md->state[i])>>32)&255); (out+(8*i))[4] = (unsigned char)(((md->state[i])>>24)&255); (out+(8*i))[5] = (unsigned char)(((md->state[i])>>16)&255); (out+(8*i))[6] = (unsigned char)(((md->state[i])>>8)&255); (out+(8*i))[7] = (unsigned char)((md->state[i])&255); };
 }

 return 0;
}

int sha512(const unsigned char *message, size_t message_len, unsigned char *out)
{
    sha512_context ctx;
    int ret;
    if ((ret = sha512_init(&ctx))) return ret;
    if ((ret = sha512_update(&ctx, message, message_len))) return ret;
    if ((ret = sha512_final(&ctx, out))) return ret;
    return 0;
}

static int sha512_compress(sha512_context *md, unsigned char *buf)
{
    uint64_t S[8], W[80], t0, t1;
    int i;

    /* copy state into S */
    for (i = 0; i < 8; i++) {
        S[i] = md->state[i];
    }

    /* copy the state into 1024-bits into W[0..15] */
    for (i = 0; i < 16; i++) {
        { W[i] = (((uint64_t)((buf + (8*i))[0] & 255))<<56)|(((uint64_t)((buf + (8*i))[1] & 255))<<48) | (((uint64_t)((buf + (8*i))[2] & 255))<<40)|(((uint64_t)((buf + (8*i))[3] & 255))<<32) | (((uint64_t)((buf + (8*i))[4] & 255))<<24)|(((uint64_t)((buf + (8*i))[5] & 255))<<16) | (((uint64_t)((buf + (8*i))[6] & 255))<<8)|(((uint64_t)((buf + (8*i))[7] & 255))); };
    }

    /* fill W[16..79] */
    for (i = 16; i < 80; i++) {
        W[i] = (( ((((W[i - 2])&0xFFFFFFFFFFFFFFFFULL)>>((uint64_t)(19)&63ULL)) | ((W[i - 2])<<((uint64_t)(64 -((19)&63ULL))))) & 0xFFFFFFFFFFFFFFFFULL) ^ ( ((((W[i - 2])&0xFFFFFFFFFFFFFFFFULL)>>((uint64_t)(61)&63ULL)) | ((W[i - 2])<<((uint64_t)(64 -((61)&63ULL))))) & 0xFFFFFFFFFFFFFFFFULL) ^ (((W[i - 2]) &0xFFFFFFFFFFFFFFFFULL)>>((uint64_t)6))) + W[i - 7] + (( ((((W[i - 15])&0xFFFFFFFFFFFFFFFFULL)>>((uint64_t)(1)&63ULL)) | ((W[i - 15])<<((uint64_t)(64 -((1)&63ULL))))) & 0xFFFFFFFFFFFFFFFFULL) ^ ( ((((W[i - 15])&0xFFFFFFFFFFFFFFFFULL)>>((uint64_t)(8)&63ULL)) | ((W[i - 15])<<((uint64_t)(64 -((8)&63ULL))))) & 0xFFFFFFFFFFFFFFFFULL) ^ (((W[i - 15]) &0xFFFFFFFFFFFFFFFFULL)>>((uint64_t)7))) + W[i - 16];
    }

/* Compress */






    for (i = 0; i < 80; i += 8) {
       t0 = S[7] + (( ((((S[4])&0xFFFFFFFFFFFFFFFFULL)>>((uint64_t)(14)&63ULL)) | ((S[4])<<((uint64_t)(64 -((14)&63ULL))))) & 0xFFFFFFFFFFFFFFFFULL) ^ ( ((((S[4])&0xFFFFFFFFFFFFFFFFULL)>>((uint64_t)(18)&63ULL)) | ((S[4])<<((uint64_t)(64 -((18)&63ULL))))) & 0xFFFFFFFFFFFFFFFFULL) ^ ( ((((S[4])&0xFFFFFFFFFFFFFFFFULL)>>((uint64_t)(41)&63ULL)) | ((S[4])<<((uint64_t)(64 -((41)&63ULL))))) & 0xFFFFFFFFFFFFFFFFULL)) + (S[6] ^ (S[4] & (S[5] ^ S[6]))) + K[i+0] + W[i+0]; t1 = (( ((((S[0])&0xFFFFFFFFFFFFFFFFULL)>>((uint64_t)(28)&63ULL)) | ((S[0])<<((uint64_t)(64 -((28)&63ULL))))) & 0xFFFFFFFFFFFFFFFFULL) ^ ( ((((S[0])&0xFFFFFFFFFFFFFFFFULL)>>((uint64_t)(34)&63ULL)) | ((S[0])<<((uint64_t)(64 -((34)&63ULL))))) & 0xFFFFFFFFFFFFFFFFULL) ^ ( ((((S[0])&0xFFFFFFFFFFFFFFFFULL)>>((uint64_t)(39)&63ULL)) | ((S[0])<<((uint64_t)(64 -((39)&63ULL))))) & 0xFFFFFFFFFFFFFFFFULL)) + (((S[0] | S[1]) & S[2]) | (S[0] & S[1])); S[3] += t0; S[7] = t0 + t1;;
       t0 = S[6] + (( ((((S[3])&0xFFFFFFFFFFFFFFFFULL)>>((uint64_t)(14)&63ULL)) | ((S[3])<<((uint64_t)(64 -((14)&63ULL))))) & 0xFFFFFFFFFFFFFFFFULL) ^ ( ((((S[3])&0xFFFFFFFFFFFFFFFFULL)>>((uint64_t)(18)&63ULL)) | ((S[3])<<((uint64_t)(64 -((18)&63ULL))))) & 0xFFFFFFFFFFFFFFFFULL) ^ ( ((((S[3])&0xFFFFFFFFFFFFFFFFULL)>>((uint64_t)(41)&63ULL)) | ((S[3])<<((uint64_t)(64 -((41)&63ULL))))) & 0xFFFFFFFFFFFFFFFFULL)) + (S[5] ^ (S[3] & (S[4] ^ S[5]))) + K[i+1] + W[i+1]; t1 = (( ((((S[7])&0xFFFFFFFFFFFFFFFFULL)>>((uint64_t)(28)&63ULL)) | ((S[7])<<((uint64_t)(64 -((28)&63ULL))))) & 0xFFFFFFFFFFFFFFFFULL) ^ ( ((((S[7])&0xFFFFFFFFFFFFFFFFULL)>>((uint64_t)(34)&63ULL)) | ((S[7])<<((uint64_t)(64 -((34)&63ULL))))) & 0xFFFFFFFFFFFFFFFFULL) ^ ( ((((S[7])&0xFFFFFFFFFFFFFFFFULL)>>((uint64_t)(39)&63ULL)) | ((S[7])<<((uint64_t)(64 -((39)&63ULL))))) & 0xFFFFFFFFFFFFFFFFULL)) + (((S[7] | S[0]) & S[1]) | (S[7] & S[0])); S[2] += t0; S[6] = t0 + t1;;
       t0 = S[5] + (( ((((S[2])&0xFFFFFFFFFFFFFFFFULL)>>((uint64_t)(14)&63ULL)) | ((S[2])<<((uint64_t)(64 -((14)&63ULL))))) & 0xFFFFFFFFFFFFFFFFULL) ^ ( ((((S[2])&0xFFFFFFFFFFFFFFFFULL)>>((uint64_t)(18)&63ULL)) | ((S[2])<<((uint64_t)(64 -((18)&63ULL))))) & 0xFFFFFFFFFFFFFFFFULL) ^ ( ((((S[2])&0xFFFFFFFFFFFFFFFFULL)>>((uint64_t)(41)&63ULL)) | ((S[2])<<((uint64_t)(64 -((41)&63ULL))))) & 0xFFFFFFFFFFFFFFFFULL)) + (S[4] ^ (S[2] & (S[3] ^ S[4]))) + K[i+2] + W[i+2]; t1 = (( ((((S[6])&0xFFFFFFFFFFFFFFFFULL)>>((uint64_t)(28)&63ULL)) | ((S[6])<<((uint64_t)(64 -((28)&63ULL))))) & 0xFFFFFFFFFFFFFFFFULL) ^ ( ((((S[6])&0xFFFFFFFFFFFFFFFFULL)>>((uint64_t)(34)&63ULL)) | ((S[6])<<((uint64_t)(64 -((34)&63ULL))))) & 0xFFFFFFFFFFFFFFFFULL) ^ ( ((((S[6])&0xFFFFFFFFFFFFFFFFULL)>>((uint64_t)(39)&63ULL)) | ((S[6])<<((uint64_t)(64 -((39)&63ULL))))) & 0xFFFFFFFFFFFFFFFFULL)) + (((S[6] | S[7]) & S[0]) | (S[6] & S[7])); S[1] += t0; S[5] = t0 + t1;;
       t0 = S[4] + (( ((((S[1])&0xFFFFFFFFFFFFFFFFULL)>>((uint64_t)(14)&63ULL)) | ((S[1])<<((uint64_t)(64 -((14)&63ULL))))) & 0xFFFFFFFFFFFFFFFFULL) ^ ( ((((S[1])&0xFFFFFFFFFFFFFFFFULL)>>((uint64_t)(18)&63ULL)) | ((S[1])<<((uint64_t)(64 -((18)&63ULL))))) & 0xFFFFFFFFFFFFFFFFULL) ^ ( ((((S[1])&0xFFFFFFFFFFFFFFFFULL)>>((uint64_t)(41)&63ULL)) | ((S[1])<<((uint64_t)(64 -((41)&63ULL))))) & 0xFFFFFFFFFFFFFFFFULL)) + (S[3] ^ (S[1] & (S[2] ^ S[3]))) + K[i+3] + W[i+3]; t1 = (( ((((S[5])&0xFFFFFFFFFFFFFFFFULL)>>((uint64_t)(28)&63ULL)) | ((S[5])<<((uint64_t)(64 -((28)&63ULL))))) & 0xFFFFFFFFFFFFFFFFULL) ^ ( ((((S[5])&0xFFFFFFFFFFFFFFFFULL)>>((uint64_t)(34)&63ULL)) | ((S[5])<<((uint64_t)(64 -((34)&63ULL))))) & 0xFFFFFFFFFFFFFFFFULL) ^ ( ((((S[5])&0xFFFFFFFFFFFFFFFFULL)>>((uint64_t)(39)&63ULL)) | ((S[5])<<((uint64_t)(64 -((39)&63ULL))))) & 0xFFFFFFFFFFFFFFFFULL)) + (((S[5] | S[6]) & S[7]) | (S[5] & S[6])); S[0] += t0; S[4] = t0 + t1;;
       t0 = S[3] + (( ((((S[0])&0xFFFFFFFFFFFFFFFFULL)>>((uint64_t)(14)&63ULL)) | ((S[0])<<((uint64_t)(64 -((14)&63ULL))))) & 0xFFFFFFFFFFFFFFFFULL) ^ ( ((((S[0])&0xFFFFFFFFFFFFFFFFULL)>>((uint64_t)(18)&63ULL)) | ((S[0])<<((uint64_t)(64 -((18)&63ULL))))) & 0xFFFFFFFFFFFFFFFFULL) ^ ( ((((S[0])&0xFFFFFFFFFFFFFFFFULL)>>((uint64_t)(41)&63ULL)) | ((S[0])<<((uint64_t)(64 -((41)&63ULL))))) & 0xFFFFFFFFFFFFFFFFULL)) + (S[2] ^ (S[0] & (S[1] ^ S[2]))) + K[i+4] + W[i+4]; t1 = (( ((((S[4])&0xFFFFFFFFFFFFFFFFULL)>>((uint64_t)(28)&63ULL)) | ((S[4])<<((uint64_t)(64 -((28)&63ULL))))) & 0xFFFFFFFFFFFFFFFFULL) ^ ( ((((S[4])&0xFFFFFFFFFFFFFFFFULL)>>((uint64_t)(34)&63ULL)) | ((S[4])<<((uint64_t)(64 -((34)&63ULL))))) & 0xFFFFFFFFFFFFFFFFULL) ^ ( ((((S[4])&0xFFFFFFFFFFFFFFFFULL)>>((uint64_t)(39)&63ULL)) | ((S[4])<<((uint64_t)(64 -((39)&63ULL))))) & 0xFFFFFFFFFFFFFFFFULL)) + (((S[4] | S[5]) & S[6]) | (S[4] & S[5])); S[7] += t0; S[3] = t0 + t1;;
       t0 = S[2] + (( ((((S[7])&0xFFFFFFFFFFFFFFFFULL)>>((uint64_t)(14)&63ULL)) | ((S[7])<<((uint64_t)(64 -((14)&63ULL))))) & 0xFFFFFFFFFFFFFFFFULL) ^ ( ((((S[7])&0xFFFFFFFFFFFFFFFFULL)>>((uint64_t)(18)&63ULL)) | ((S[7])<<((uint64_t)(64 -((18)&63ULL))))) & 0xFFFFFFFFFFFFFFFFULL) ^ ( ((((S[7])&0xFFFFFFFFFFFFFFFFULL)>>((uint64_t)(41)&63ULL)) | ((S[7])<<((uint64_t)(64 -((41)&63ULL))))) & 0xFFFFFFFFFFFFFFFFULL)) + (S[1] ^ (S[7] & (S[0] ^ S[1]))) + K[i+5] + W[i+5]; t1 = (( ((((S[3])&0xFFFFFFFFFFFFFFFFULL)>>((uint64_t)(28)&63ULL)) | ((S[3])<<((uint64_t)(64 -((28)&63ULL))))) & 0xFFFFFFFFFFFFFFFFULL) ^ ( ((((S[3])&0xFFFFFFFFFFFFFFFFULL)>>((uint64_t)(34)&63ULL)) | ((S[3])<<((uint64_t)(64 -((34)&63ULL))))) & 0xFFFFFFFFFFFFFFFFULL) ^ ( ((((S[3])&0xFFFFFFFFFFFFFFFFULL)>>((uint64_t)(39)&63ULL)) | ((S[3])<<((uint64_t)(64 -((39)&63ULL))))) & 0xFFFFFFFFFFFFFFFFULL)) + (((S[3] | S[4]) & S[5]) | (S[3] & S[4])); S[6] += t0; S[2] = t0 + t1;;
       t0 = S[1] + (( ((((S[6])&0xFFFFFFFFFFFFFFFFULL)>>((uint64_t)(14)&63ULL)) | ((S[6])<<((uint64_t)(64 -((14)&63ULL))))) & 0xFFFFFFFFFFFFFFFFULL) ^ ( ((((S[6])&0xFFFFFFFFFFFFFFFFULL)>>((uint64_t)(18)&63ULL)) | ((S[6])<<((uint64_t)(64 -((18)&63ULL))))) & 0xFFFFFFFFFFFFFFFFULL) ^ ( ((((S[6])&0xFFFFFFFFFFFFFFFFULL)>>((uint64_t)(41)&63ULL)) | ((S[6])<<((uint64_t)(64 -((41)&63ULL))))) & 0xFFFFFFFFFFFFFFFFULL)) + (S[0] ^ (S[6] & (S[7] ^ S[0]))) + K[i+6] + W[i+6]; t1 = (( ((((S[2])&0xFFFFFFFFFFFFFFFFULL)>>((uint64_t)(28)&63ULL)) | ((S[2])<<((uint64_t)(64 -((28)&63ULL))))) & 0xFFFFFFFFFFFFFFFFULL) ^ ( ((((S[2])&0xFFFFFFFFFFFFFFFFULL)>>((uint64_t)(34)&63ULL)) | ((S[2])<<((uint64_t)(64 -((34)&63ULL))))) & 0xFFFFFFFFFFFFFFFFULL) ^ ( ((((S[2])&0xFFFFFFFFFFFFFFFFULL)>>((uint64_t)(39)&63ULL)) | ((S[2])<<((uint64_t)(64 -((39)&63ULL))))) & 0xFFFFFFFFFFFFFFFFULL)) + (((S[2] | S[3]) & S[4]) | (S[2] & S[3])); S[5] += t0; S[1] = t0 + t1;;
       t0 = S[0] + (( ((((S[5])&0xFFFFFFFFFFFFFFFFULL)>>((uint64_t)(14)&63ULL)) | ((S[5])<<((uint64_t)(64 -((14)&63ULL))))) & 0xFFFFFFFFFFFFFFFFULL) ^ ( ((((S[5])&0xFFFFFFFFFFFFFFFFULL)>>((uint64_t)(18)&63ULL)) | ((S[5])<<((uint64_t)(64 -((18)&63ULL))))) & 0xFFFFFFFFFFFFFFFFULL) ^ ( ((((S[5])&0xFFFFFFFFFFFFFFFFULL)>>((uint64_t)(41)&63ULL)) | ((S[5])<<((uint64_t)(64 -((41)&63ULL))))) & 0xFFFFFFFFFFFFFFFFULL)) + (S[7] ^ (S[5] & (S[6] ^ S[7]))) + K[i+7] + W[i+7]; t1 = (( ((((S[1])&0xFFFFFFFFFFFFFFFFULL)>>((uint64_t)(28)&63ULL)) | ((S[1])<<((uint64_t)(64 -((28)&63ULL))))) & 0xFFFFFFFFFFFFFFFFULL) ^ ( ((((S[1])&0xFFFFFFFFFFFFFFFFULL)>>((uint64_t)(34)&63ULL)) | ((S[1])<<((uint64_t)(64 -((34)&63ULL))))) & 0xFFFFFFFFFFFFFFFFULL) ^ ( ((((S[1])&0xFFFFFFFFFFFFFFFFULL)>>((uint64_t)(39)&63ULL)) | ((S[1])<<((uint64_t)(64 -((39)&63ULL))))) & 0xFFFFFFFFFFFFFFFFULL)) + (((S[1] | S[2]) & S[3]) | (S[1] & S[2])); S[4] += t0; S[0] = t0 + t1;;
   }





    /* feedback */
   for (i = 0; i < 8; i++) {
        md->state[i] = md->state[i] + S[i];
    }

    return 0;
}

int sha512_update (sha512_context * md, const unsigned char *in, size_t inlen)
{
    size_t n;
    size_t i;
    int err;
    if (md == __null) return 1;
    if (in == __null) return 1;
    if (md->curlen > sizeof(md->buf)) {
       return 1;
    }
    while (inlen > 0) {
        if (md->curlen == 0 && inlen >= 128) {
           if ((err = sha512_compress (md, (unsigned char *)in)) != 0) {
              return err;
           }
           md->length += 128 * 8;
           in += 128;
           inlen -= 128;
        } else {
           n = ( ((inlen)<((128 - md->curlen)))?(inlen):((128 - md->curlen)) );

           for (i = 0; i < n; i++) {
            md->buf[i + md->curlen] = in[i];
           }


           md->curlen += n;
           in += n;
           inlen -= n;
           if (md->curlen == 128) {
              if ((err = sha512_compress (md, md->buf)) != 0) {
                 return err;
              }
              md->length += 8*128;
              md->curlen = 0;
           }
       }
    }
    return 0;
}

class ssdm_global_array_sha512pp0cppaplinecpp {
 public:
   inline __attribute__((always_inline)) ssdm_global_array_sha512pp0cppaplinecpp() {
   _ssdm_SpecConstant(K);
  }
};
static ssdm_global_array_sha512pp0cppaplinecpp ssdm_global_array_ins;
