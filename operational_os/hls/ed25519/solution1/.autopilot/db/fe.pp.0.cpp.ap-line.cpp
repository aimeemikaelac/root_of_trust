#pragma line 1 "ed25519/src/fe.cpp"
#pragma line 1 "ed25519/src/fe.cpp" 1
#pragma line 1 "<built-in>" 1
#pragma line 1 "<built-in>" 3
#pragma line 155 "<built-in>" 3
#pragma line 1 "<command line>" 1
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma line 1 "/Xilinx/Vivado_HLS/2017.2/common/technology/autopilot/etc/autopilot_ssdm_op.h" 1
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
#pragma line 145 "/Xilinx/Vivado_HLS/2017.2/common/technology/autopilot/etc/autopilot_ssdm_op.h"
/*#define AP_SPEC_ATTR __attribute__ ((pure))*/
//adu: patched
#pragma line 156 "/Xilinx/Vivado_HLS/2017.2/common/technology/autopilot/etc/autopilot_ssdm_op.h"
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
#pragma line 413 "/Xilinx/Vivado_HLS/2017.2/common/technology/autopilot/etc/autopilot_ssdm_op.h"
/*#define _ssdm_op_WaitUntil(X) while (!(X)) _ssdm_op_Wait(1);
#define _ssdm_op_Delayed(X) X */
#pragma line 427 "/Xilinx/Vivado_HLS/2017.2/common/technology/autopilot/etc/autopilot_ssdm_op.h"
// 67d7842dbbe25473c3c32b93c0da8047785f30d78e8a024de1b57352245f9689
#pragma line 7 "<command line>" 2
#pragma line 1 "<built-in>" 2
#pragma line 1 "ed25519/src/fe.cpp" 2
#pragma line 1 "ed25519/src/fixedint.h" 1
/*
    Portable header to provide the 32 and 64 bits type.
#pragma empty_line
    Not a compatible replacement for <stdint.h>, do not blindly use it as such.
*/
#pragma line 21 "ed25519/src/fixedint.h"
#pragma line 1 "/Xilinx/Vivado_HLS/2017.2/lnx64/tools/clang/bin/../lib/clang/3.1/include/limits.h" 1 3
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
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
/* The system's limits.h may, in turn, try to #include_next GCC's limits.h.
   Avert this #include_next madness. */
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
/* System headers include a number of constants from POSIX in <limits.h>.
   Include it if we're hosted. */
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma line 1 "/usr/include/limits.h" 1 3 4
/* Copyright (C) 1991-2016 Free Software Foundation, Inc.
   This file is part of the GNU C Library.
#pragma empty_line
   The GNU C Library is free software; you can redistribute it and/or
   modify it under the terms of the GNU Lesser General Public
   License as published by the Free Software Foundation; either
   version 2.1 of the License, or (at your option) any later version.
#pragma empty_line
   The GNU C Library is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
   Lesser General Public License for more details.
#pragma empty_line
   You should have received a copy of the GNU Lesser General Public
   License along with the GNU C Library; if not, see
   <http://www.gnu.org/licenses/>.  */
#pragma empty_line
/*
 *	ISO C99 Standard: 7.10/5.2.4.2.1 Sizes of integer types	<limits.h>
 */
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma line 1 "/usr/include/features.h" 1 3 4
/* Copyright (C) 1991-2016 Free Software Foundation, Inc.
   This file is part of the GNU C Library.
#pragma empty_line
   The GNU C Library is free software; you can redistribute it and/or
   modify it under the terms of the GNU Lesser General Public
   License as published by the Free Software Foundation; either
   version 2.1 of the License, or (at your option) any later version.
#pragma empty_line
   The GNU C Library is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
   Lesser General Public License for more details.
#pragma empty_line
   You should have received a copy of the GNU Lesser General Public
   License along with the GNU C Library; if not, see
   <http://www.gnu.org/licenses/>.  */
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
/* These are defined by the user (or the compiler)
   to specify the desired environment:
#pragma empty_line
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
#pragma empty_line
   The `-ansi' switch to the GNU C compiler, and standards conformance
   options such as `-std=c99', define __STRICT_ANSI__.  If none of
   these are defined, or if _DEFAULT_SOURCE is defined, the default is
   to have _POSIX_SOURCE set to one and _POSIX_C_SOURCE set to
   200809L, as well as enabling miscellaneous functions from BSD and
   SVID.  If more than one of these are defined, they accumulate.  For
   example __STRICT_ANSI__, _POSIX_SOURCE and _POSIX_C_SOURCE together
   give you ISO C, 1003.1, and 1003.2, but nothing else.
#pragma empty_line
   These are defined by this file and are used by the
   header files to decide what to declare or define:
#pragma empty_line
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
#pragma empty_line
   The macros `__GNU_LIBRARY__', `__GLIBC__', and `__GLIBC_MINOR__' are
   defined by this file unconditionally.  `__GNU_LIBRARY__' is provided
   only for compatibility.  All new code should use the other symbols
   to test for features.
#pragma empty_line
   All macros listed above as possibly being defined by this file are
   explicitly undefined if they are not explicitly defined.
   Feature-test macros that are not defined by the user or compiler
   but are implied by the other feature-test macros defined (or by the
   lack of any definitions) are defined by the file.  */
#pragma empty_line
#pragma empty_line
/* Undefine everything, so we get a clean slate.  */
#pragma line 122 "/usr/include/features.h" 3 4
/* Suppress kernel-name space pollution unless user expressedly asks
   for it.  */
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
/* Convenience macros to test the versions of glibc and gcc.
   Use them like this:
   #if __GNUC_PREREQ (2,8)
   ... code requiring gcc 2.8 or later ...
   #endif
   Note - they won't work for gcc1 or glibc1, since the _MINOR macros
   were not defined then.  */
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
/* _BSD_SOURCE and _SVID_SOURCE are deprecated aliases for
   _DEFAULT_SOURCE.  If _DEFAULT_SOURCE is present we do not
   issue a warning; the expectation is that the source is being
   transitioned to use the new macro.  */
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
/* If _GNU_SOURCE was defined by the user, turn on all the other features.  */
#pragma line 177 "/usr/include/features.h" 3 4
/* If nothing (other than _GNU_SOURCE and _DEFAULT_SOURCE) is defined,
   define _DEFAULT_SOURCE.  */
#pragma line 188 "/usr/include/features.h" 3 4
/* This is to enable the ISO C11 extension.  */
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
/* This is to enable the ISO C99 extension.  */
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
/* This is to enable the ISO C90 Amendment 1:1995 extension.  */
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
/* This is to enable compatibility for ISO C++11.
#pragma empty_line
   So far g++ does not provide a macro.  Check the temporary macro for
   now, too.  */
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
/* If none of the ANSI/POSIX macros are defined, or if _DEFAULT_SOURCE
   is defined, use POSIX.1-2008 (or another version depending on
   _XOPEN_SOURCE).  */
#pragma line 340 "/usr/include/features.h" 3 4
/* Get definitions of __STDC_* predefined macros, if the compiler has
   not preincluded this header automatically.  */
#pragma empty_line
#pragma line 1 "/usr/include/stdc-predef.h" 1 3 4
/* Copyright (C) 1991-2016 Free Software Foundation, Inc.
   This file is part of the GNU C Library.
#pragma empty_line
   The GNU C Library is free software; you can redistribute it and/or
   modify it under the terms of the GNU Lesser General Public
   License as published by the Free Software Foundation; either
   version 2.1 of the License, or (at your option) any later version.
#pragma empty_line
   The GNU C Library is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
   Lesser General Public License for more details.
#pragma empty_line
   You should have received a copy of the GNU Lesser General Public
   License along with the GNU C Library; if not, see
   <http://www.gnu.org/licenses/>.  */
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
/* This header is separate from features.h so that the compiler can
   include it implicitly at the start of every compilation.  It must
   not itself include <features.h> or any other header that includes
   <features.h> because the implicit include comes before any feature
   test macros that may be defined in a source file before it first
   explicitly includes a system header.  GCC knows the name of this
   header in order to preinclude it.  */
#pragma empty_line
/* glibc's intent is to support the IEC 559 math functionality, real
   and complex.  If the GCC (4.9 and later) predefined macros
   specifying compiler intent are available, use them to determine
   whether the overall intent is to support these features; otherwise,
   presume an older compiler has intent to support these features and
   define these macros by default.  */
#pragma line 52 "/usr/include/stdc-predef.h" 3 4
/* wchar_t uses Unicode 9.0.0.  Version 9.0 of the Unicode Standard is
   synchronized with ISO/IEC 10646:2014, fourth edition, plus
   Amd. 1  and Amd. 2 and 273 characters from forthcoming  10646, fifth edition.
   (Amd. 2 was published 2016-05-01,
   see https://www.iso.org/obp/ui/#iso:std:iso-iec:10646:ed-4:v1:amd:2:v1:en) */
#pragma empty_line
#pragma empty_line
/* We do not support C11 <threads.h>.  */
#pragma line 343 "/usr/include/features.h" 2 3 4
#pragma empty_line
/* This macro indicates that the installed library is the GNU C Library.
   For historic reasons the value now is 6 and this will stay from now
   on.  The use of this variable is deprecated.  Use __GLIBC__ and
   __GLIBC_MINOR__ now (see below) when you want to test for a specific
   GNU C library version and use the values in <gnu/lib-names.h> to get
   the sonames of the shared libraries.  */
#pragma empty_line
#pragma empty_line
#pragma empty_line
/* Major and minor version number of the GNU C library package.  Use
   these macros to test for features in specific releases.  */
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
/* This is here only because every header file already includes this one.  */
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma line 1 "/usr/include/x86_64-linux-gnu/sys/cdefs.h" 1 3 4
/* Copyright (C) 1992-2016 Free Software Foundation, Inc.
   This file is part of the GNU C Library.
#pragma empty_line
   The GNU C Library is free software; you can redistribute it and/or
   modify it under the terms of the GNU Lesser General Public
   License as published by the Free Software Foundation; either
   version 2.1 of the License, or (at your option) any later version.
#pragma empty_line
   The GNU C Library is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
   Lesser General Public License for more details.
#pragma empty_line
   You should have received a copy of the GNU Lesser General Public
   License along with the GNU C Library; if not, see
   <http://www.gnu.org/licenses/>.  */
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
/* We are almost always included from features.h. */
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
/* The GNU libc does not support any K&R compilers or the traditional mode
   of ISO C compilers anymore.  Check for some of the combinations not
   anymore supported.  */
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
/* Some user header file might have defined this before.  */
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
/* All functions, except those with callbacks or those that
   synchronize memory, are leaf functions.  */
#pragma line 49 "/usr/include/x86_64-linux-gnu/sys/cdefs.h" 3 4
/* GCC can always grok prototypes.  For C++ programs we add throw()
   to help it optimize the function calls.  But this works only with
   gcc 2.8.x and egcs.  For gcc 3.2 and up we even mark C functions
   as non-throwing using a function attribute since programs can use
   the -fexceptions options for C code as well.  */
#pragma line 80 "/usr/include/x86_64-linux-gnu/sys/cdefs.h" 3 4
/* These two macros are not used in glibc anymore.  They are kept here
   only because some other projects expect the macros to be defined.  */
#pragma empty_line
#pragma empty_line
#pragma empty_line
/* For these things, GCC behaves the ANSI way normally,
   and the non-ANSI way under -traditional.  */
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
/* This is not a typedef so `const __ptr_t' does the right thing.  */
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
/* C++ needs to know that types and declarations are C, not C++.  */
#pragma line 106 "/usr/include/x86_64-linux-gnu/sys/cdefs.h" 3 4
/* The standard library needs the functions from the ISO C90 standard
   in the std namespace.  At the same time we want to be safe for
   future changes and we include the ISO C99 code in the non-standard
   namespace __c99.  The C++ wrapper header take case of adding the
   definitions to the global namespace.  */
#pragma line 119 "/usr/include/x86_64-linux-gnu/sys/cdefs.h" 3 4
/* For compatibility we do not add the declarations into any
   namespace.  They will end up in the global namespace which is what
   old code expects.  */
#pragma line 131 "/usr/include/x86_64-linux-gnu/sys/cdefs.h" 3 4
/* Fortify support.  */
#pragma line 147 "/usr/include/x86_64-linux-gnu/sys/cdefs.h" 3 4
/* Support for flexible arrays.  */
#pragma empty_line
/* GCC 2.97 supports C99 flexible array members.  */
#pragma line 165 "/usr/include/x86_64-linux-gnu/sys/cdefs.h" 3 4
/* __asm__ ("xyz") is used throughout the headers to rename functions
   at the assembly language level.  This is wrapped by the __REDIRECT
   macro, in order to support compilers that can do this some other
   way.  When compilers don't support asm-names at all, we have to do
   preprocessor tricks instead (which don't have exactly the right
   semantics, but it's the best we can do).
#pragma empty_line
   Example:
   int __REDIRECT(setpgrp, (__pid_t pid, __pid_t pgrp), setpgid); */
#pragma line 192 "/usr/include/x86_64-linux-gnu/sys/cdefs.h" 3 4
/*
#elif __SOME_OTHER_COMPILER__
#pragma empty_line
# define __REDIRECT(name, proto, alias) name proto; \
	_Pragma("let " #name " = " #alias)
*/
#pragma empty_line
#pragma empty_line
/* GCC has various useful declarations that can be made with the
   `__attribute__' syntax.  All of the ways we use this do fine if
   they are omitted for compilers that don't understand it. */
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
/* At some point during the gcc 2.96 development the `malloc' attribute
   for functions was introduced.  We don't want to use it unconditionally
   (although this would be possible) since it generates warnings.  */
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
/* Tell the compiler which arguments to an allocation function
   indicate the size of the allocation.  */
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
/* At some point during the gcc 2.96 development the `pure' attribute
   for functions was introduced.  We don't want to use it unconditionally
   (although this would be possible) since it generates warnings.  */
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
/* This declaration tells the compiler that the value is constant.  */
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
/* At some point during the gcc 3.1 development the `used' attribute
   for functions was introduced.  We don't want to use it unconditionally
   (although this would be possible) since it generates warnings.  */
#pragma line 252 "/usr/include/x86_64-linux-gnu/sys/cdefs.h" 3 4
/* gcc allows marking deprecated functions.  */
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
/* At some point during the gcc 2.8 development the `format_arg' attribute
   for functions was introduced.  We don't want to use it unconditionally
   (although this would be possible) since it generates warnings.
   If several `format_arg' attributes are given for the same function, in
   gcc-3.0 and older, all but the last one are ignored.  In newer gccs,
   all designated arguments are considered.  */
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
/* At some point during the gcc 2.97 development the `strfmon' format
   attribute for functions was introduced.  We don't want to use it
   unconditionally (although this would be possible) since it
   generates warnings.  */
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
/* The nonull function attribute allows to mark pointer parameters which
   must not be NULL.  */
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
/* If fortification mode, we warn about unused results of certain
   function calls which can lead to problems.  */
#pragma line 305 "/usr/include/x86_64-linux-gnu/sys/cdefs.h" 3 4
/* Forces a function to be always inlined.  */
#pragma empty_line
/* The Linux kernel defines __always_inline in stddef.h (283d7573), and
   it conflicts with this definition.  Therefore undefine it first to
   allow either header to be included first.  */
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
/* Associate error messages with the source location of the call site rather
   than with the source location inside the function.  */
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
/* GCC 4.3 and above with -std=c99 or -std=gnu99 implements ISO C99
   inline semantics, unless -fgnu89-inline is used.  Using __GNUC_STDC_INLINE__
   or __GNUC_GNU_INLINE is not a good enough check for gcc because gcc versions
   older than 4.3 may define these macros and still not guarantee GNU inlining
   semantics.
#pragma empty_line
   clang++ identifies itself as gcc-4.2, but has support for GNU inlining
   semantics, that can be checked fot by using the __GNUC_STDC_INLINE_ and
   __GNUC_GNU_INLINE__ macro definitions.  */
#pragma line 351 "/usr/include/x86_64-linux-gnu/sys/cdefs.h" 3 4
/* GCC 4.3 and above allow passing all anonymous arguments of an
   __extern_always_inline function to some other vararg function.  */
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
/* It is possible to compile containing GCC extensions even if GCC is
   run in pedantic mode if the uses are carefully marked using the
   `__extension__' keyword.  But this is not generally available before
   version 2.8.  */
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
/* __restrict is known in EGCS 1.2 and above. */
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
/* ISO C99 also allows to declare arrays as non-overlapping.  The syntax is
     array_name[restrict]
   GCC 3.1 supports this.  */
#pragma line 415 "/usr/include/x86_64-linux-gnu/sys/cdefs.h" 3 4
#pragma line 1 "/usr/include/x86_64-linux-gnu/bits/wordsize.h" 1 3 4
/* Determine the wordsize from the preprocessor defines.  */
#pragma line 11 "/usr/include/x86_64-linux-gnu/bits/wordsize.h" 3 4
/* Both x86-64 and x32 use the 64-bit system call interface.  */
#pragma line 416 "/usr/include/x86_64-linux-gnu/sys/cdefs.h" 2 3 4
#pragma line 365 "/usr/include/features.h" 2 3 4
#pragma empty_line
#pragma empty_line
/* If we don't have __REDIRECT, prototypes will be missing if
   __USE_FILE_OFFSET64 but not __USE_LARGEFILE[64]. */
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
/* Decide whether we can define 'extern inline' functions in headers.  */
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
/* This is here only because every header file already includes this one.
   Get the definitions of all the appropriate `__stub_FUNCTION' symbols.
   <gnu/stubs.h> contains `#define __stub_FUNCTION' when FUNCTION is a stub
   that will always return failure (and set errno to ENOSYS).  */
#pragma empty_line
#pragma line 1 "/usr/include/x86_64-linux-gnu/gnu/stubs.h" 1 3 4
/* This file is automatically generated.
   This file selects the right generated file of `__stub_FUNCTION' macros
   based on the architecture being compiled for.  */
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma line 1 "/usr/include/x86_64-linux-gnu/gnu/stubs-64.h" 1 3 4
/* This file is automatically generated.
   It defines a symbol `__stub_FUNCTION' for each function
   in the C library which is a stub, meaning it will fail
   every time called, usually setting errno to ENOSYS.  */
#pragma line 11 "/usr/include/x86_64-linux-gnu/gnu/stubs.h" 2 3 4
#pragma line 389 "/usr/include/features.h" 2 3 4
#pragma line 26 "/usr/include/limits.h" 2 3 4
#pragma empty_line
#pragma empty_line
/* Maximum length of any multibyte character in any locale.
   We define this value here since the gcc header does not define
   the correct value.  */
#pragma empty_line
#pragma empty_line
#pragma empty_line
/* If we are not using GNU CC we have to define all the symbols ourself.
   Otherwise use gcc's definitions (see below).  */
#pragma line 116 "/usr/include/limits.h" 3 4
 /* Get the compiler's limits.h, which defines almost all the ISO constants.
#pragma empty_line
    We put this #include_next outside the double inclusion check because
    it should be possible to include this file more than once and still get
    the definitions from gcc's header.  */
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
/* The <limits.h> files in some gcc versions don't define LLONG_MIN,
   LLONG_MAX, and ULLONG_MAX.  Instead only the values gcc defined for
   ages are available.  */
#pragma line 142 "/usr/include/limits.h" 3 4
/* POSIX adds things to <limits.h>.  */
#pragma empty_line
#pragma line 1 "/usr/include/x86_64-linux-gnu/bits/posix1_lim.h" 1 3 4
/* Copyright (C) 1991-2016 Free Software Foundation, Inc.
   This file is part of the GNU C Library.
#pragma empty_line
   The GNU C Library is free software; you can redistribute it and/or
   modify it under the terms of the GNU Lesser General Public
   License as published by the Free Software Foundation; either
   version 2.1 of the License, or (at your option) any later version.
#pragma empty_line
   The GNU C Library is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
   Lesser General Public License for more details.
#pragma empty_line
   You should have received a copy of the GNU Lesser General Public
   License along with the GNU C Library; if not, see
   <http://www.gnu.org/licenses/>.  */
#pragma empty_line
/*
 *	POSIX Standard: 2.9.2 Minimum Values	Added to <limits.h>
 *
 *	Never include this file directly; use <limits.h> instead.
 */
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
/* These are the standard-mandated minimum values.  */
#pragma empty_line
/* Minimum number of operations in one list I/O call.  */
#pragma empty_line
#pragma empty_line
/* Minimal number of outstanding asynchronous I/O operations.  */
#pragma empty_line
#pragma empty_line
/* Maximum length of arguments to `execve', including environment.  */
#pragma empty_line
#pragma empty_line
/* Maximum simultaneous processes per real user ID.  */
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
/* Minimal number of timer expiration overruns.  */
#pragma empty_line
#pragma empty_line
/* Maximum length of a host name (not including the terminating null)
   as returned from the GETHOSTNAME function.  */
#pragma empty_line
#pragma empty_line
/* Maximum link count of a file.  */
#pragma empty_line
#pragma empty_line
/* Maximum length of login name.  */
#pragma empty_line
#pragma empty_line
/* Number of bytes in a terminal canonical input queue.  */
#pragma empty_line
#pragma empty_line
/* Number of bytes for which space will be
   available in a terminal input queue.  */
#pragma empty_line
#pragma empty_line
/* Maximum number of message queues open for a process.  */
#pragma empty_line
#pragma empty_line
/* Maximum number of supported message priorities.  */
#pragma empty_line
#pragma empty_line
/* Number of bytes in a filename.  */
#pragma empty_line
#pragma empty_line
/* Number of simultaneous supplementary group IDs per process.  */
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
/* Number of files one process can have open at once.  */
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
/* Number of descriptors that a process may examine with `pselect' or
   `select'.  */
#pragma empty_line
#pragma empty_line
#pragma empty_line
/* Number of bytes in a pathname.  */
#pragma empty_line
#pragma empty_line
/* Number of bytes than can be written atomically to a pipe.  */
#pragma empty_line
#pragma empty_line
/* The number of repeated occurrences of a BRE permitted by the
   REGEXEC and REGCOMP functions when using the interval notation.  */
#pragma empty_line
#pragma empty_line
/* Minimal number of realtime signals reserved for the application.  */
#pragma empty_line
#pragma empty_line
/* Number of semaphores a process can have.  */
#pragma empty_line
#pragma empty_line
/* Maximal value of a semaphore.  */
#pragma empty_line
#pragma empty_line
/* Number of pending realtime signals.  */
#pragma empty_line
#pragma empty_line
/* Largest value of a `ssize_t'.  */
#pragma empty_line
#pragma empty_line
/* Number of streams a process can have open at once.  */
#pragma empty_line
#pragma empty_line
/* The number of bytes in a symbolic link.  */
#pragma empty_line
#pragma empty_line
/* The number of symbolic links that can be traversed in the
   resolution of a pathname in the absence of a loop.  */
#pragma empty_line
#pragma empty_line
/* Number of timer for a process.  */
#pragma empty_line
#pragma empty_line
/* Maximum number of characters in a tty name.  */
#pragma empty_line
#pragma empty_line
/* Maximum length of a timezone name (element of `tzname').  */
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
/* Maximum number of connections that can be queued on a socket.  */
#pragma empty_line
#pragma empty_line
/* Maximum number of bytes that can be buffered on a socket for send
   or receive.  */
#pragma empty_line
#pragma empty_line
/* Maximum number of elements in an `iovec' array.  */
#pragma empty_line
#pragma empty_line
#pragma empty_line
/* Maximum clock resolution in nanoseconds.  */
#pragma empty_line
#pragma empty_line
#pragma empty_line
/* Get the implementation-specific values for the above.  */
#pragma empty_line
#pragma line 1 "/usr/include/x86_64-linux-gnu/bits/local_lim.h" 1 3 4
/* Minimum guaranteed maximum values for system limits.  Linux version.
   Copyright (C) 1993-2016 Free Software Foundation, Inc.
   This file is part of the GNU C Library.
#pragma empty_line
   The GNU C Library is free software; you can redistribute it and/or
   modify it under the terms of the GNU Lesser General Public License as
   published by the Free Software Foundation; either version 2.1 of the
   License, or (at your option) any later version.
#pragma empty_line
   The GNU C Library is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
   Lesser General Public License for more details.
#pragma empty_line
   You should have received a copy of the GNU Lesser General Public
   License along with the GNU C Library; see the file COPYING.LIB.  If
   not, see <http://www.gnu.org/licenses/>.  */
#pragma empty_line
/* The kernel header pollutes the namespace with the NR_OPEN symbol
   and defines LINK_MAX although filesystems have different maxima.  A
   similar thing is true for OPEN_MAX: the limit can be changed at
   runtime and therefore the macro must not be defined.  Remove this
   after including the header if necessary.  */
#pragma line 37 "/usr/include/x86_64-linux-gnu/bits/local_lim.h" 3 4
/* The kernel sources contain a file with all the needed information.  */
#pragma empty_line
#pragma line 1 "/usr/include/linux/limits.h" 1 3 4
#pragma line 39 "/usr/include/x86_64-linux-gnu/bits/local_lim.h" 2 3 4
#pragma empty_line
/* Have to remove NR_OPEN?  */
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
/* Have to remove LINK_MAX?  */
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
/* Have to remove OPEN_MAX?  */
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
/* Have to remove ARG_MAX?  */
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
/* The number of data keys per process.  */
#pragma empty_line
/* This is the value this implementation supports.  */
#pragma empty_line
#pragma empty_line
/* Controlling the iterations of destructors for thread-specific data.  */
#pragma empty_line
/* Number of iterations this implementation does.  */
#pragma empty_line
#pragma empty_line
/* The number of threads per process.  */
#pragma empty_line
/* We have no predefined limit on the number of threads.  */
#pragma empty_line
#pragma empty_line
/* Maximum amount by which a process can descrease its asynchronous I/O
   priority level.  */
#pragma empty_line
#pragma empty_line
/* Minimum size for a thread.  We are free to choose a reasonable value.  */
#pragma empty_line
#pragma empty_line
/* Maximum number of timer expiration overruns.  */
#pragma empty_line
#pragma empty_line
/* Maximum tty name length.  */
#pragma empty_line
#pragma empty_line
/* Maximum login name length.  This is arbitrary.  */
#pragma empty_line
#pragma empty_line
/* Maximum host name length.  */
#pragma empty_line
#pragma empty_line
/* Maximum message queue priority level.  */
#pragma empty_line
#pragma empty_line
/* Maximum value the semaphore can have.  */
#pragma line 161 "/usr/include/x86_64-linux-gnu/bits/posix1_lim.h" 2 3 4
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
/* This value is a guaranteed minimum maximum.
   The current maximum can be got from `sysconf'.  */
#pragma line 144 "/usr/include/limits.h" 2 3 4
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma line 1 "/usr/include/x86_64-linux-gnu/bits/posix2_lim.h" 1 3 4
/* Copyright (C) 1991-2016 Free Software Foundation, Inc.
   This file is part of the GNU C Library.
#pragma empty_line
   The GNU C Library is free software; you can redistribute it and/or
   modify it under the terms of the GNU Lesser General Public
   License as published by the Free Software Foundation; either
   version 2.1 of the License, or (at your option) any later version.
#pragma empty_line
   The GNU C Library is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
   Lesser General Public License for more details.
#pragma empty_line
   You should have received a copy of the GNU Lesser General Public
   License along with the GNU C Library; if not, see
   <http://www.gnu.org/licenses/>.  */
#pragma empty_line
/*
 * Never include this file directly; include <limits.h> instead.
 */
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
/* The maximum `ibase' and `obase' values allowed by the `bc' utility.  */
#pragma empty_line
#pragma empty_line
/* The maximum number of elements allowed in an array by the `bc' utility.  */
#pragma empty_line
#pragma empty_line
/* The maximum `scale' value allowed by the `bc' utility.  */
#pragma empty_line
#pragma empty_line
/* The maximum length of a string constant accepted by the `bc' utility.  */
#pragma empty_line
#pragma empty_line
/* The maximum number of weights that can be assigned to an entry of
   the LC_COLLATE `order' keyword in the locale definition file.  */
#pragma empty_line
#pragma empty_line
/* The maximum number of expressions that can be nested
   within parentheses by the `expr' utility.  */
#pragma empty_line
#pragma empty_line
/* The maximum length, in bytes, of an input line.  */
#pragma empty_line
#pragma empty_line
/* The maximum number of repeated occurrences of a regular expression
   permitted when using the interval notation `\{M,N\}'.  */
#pragma empty_line
#pragma empty_line
/* The maximum number of bytes in a character class name.  We have no
   fixed limit, 2048 is a high number.  */
#pragma empty_line
#pragma empty_line
#pragma empty_line
/* These values are implementation-specific,
   and may vary within the implementation.
   Their precise values can be obtained from sysconf.  */
#pragma line 87 "/usr/include/x86_64-linux-gnu/bits/posix2_lim.h" 3 4
/* This value is defined like this in regex.h.  */
#pragma line 148 "/usr/include/limits.h" 2 3 4
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma line 1 "/usr/include/x86_64-linux-gnu/bits/xopen_lim.h" 1 3 4
/* Copyright (C) 1996-2016 Free Software Foundation, Inc.
   This file is part of the GNU C Library.
#pragma empty_line
   The GNU C Library is free software; you can redistribute it and/or
   modify it under the terms of the GNU Lesser General Public
   License as published by the Free Software Foundation; either
   version 2.1 of the License, or (at your option) any later version.
#pragma empty_line
   The GNU C Library is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
   Lesser General Public License for more details.
#pragma empty_line
   You should have received a copy of the GNU Lesser General Public
   License along with the GNU C Library; if not, see
   <http://www.gnu.org/licenses/>.  */
#pragma empty_line
/*
 * Never include this file directly; use <limits.h> instead.
 */
#pragma empty_line
/* Additional definitions from X/Open Portability Guide, Issue 4, Version 2
   System Interfaces and Headers, 4.16 <limits.h>
#pragma empty_line
   Please note only the values which are not greater than the minimum
   stated in the standard document are listed.  The `sysconf' functions
   should be used to obtain the actual value.  */
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma line 1 "/usr/include/x86_64-linux-gnu/bits/stdio_lim.h" 1 3 4
/* Copyright (C) 1994-2016 Free Software Foundation, Inc.
   This file is part of the GNU C Library.
#pragma empty_line
   The GNU C Library is free software; you can redistribute it and/or
   modify it under the terms of the GNU Lesser General Public
   License as published by the Free Software Foundation; either
   version 2.1 of the License, or (at your option) any later version.
#pragma empty_line
   The GNU C Library is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
   Lesser General Public License for more details.
#pragma empty_line
   You should have received a copy of the GNU Lesser General Public
   License along with the GNU C Library; if not, see
   <http://www.gnu.org/licenses/>.  */
#pragma line 34 "/usr/include/x86_64-linux-gnu/bits/xopen_lim.h" 2 3 4
#pragma empty_line
/* We do not provide fixed values for
#pragma empty_line
   ARG_MAX	Maximum length of argument to the `exec' function
		including environment data.
#pragma empty_line
   ATEXIT_MAX	Maximum number of functions that may be registered
		with `atexit'.
#pragma empty_line
   CHILD_MAX	Maximum number of simultaneous processes per real
		user ID.
#pragma empty_line
   OPEN_MAX	Maximum number of files that one process can have open
		at anyone time.
#pragma empty_line
   PAGESIZE
   PAGE_SIZE	Size of bytes of a page.
#pragma empty_line
   PASS_MAX	Maximum number of significant bytes in a password.
#pragma empty_line
   We only provide a fixed limit for
#pragma empty_line
   IOV_MAX	Maximum number of `iovec' structures that one process has
		available for use with `readv' or writev'.
#pragma empty_line
   if this is indeed fixed by the underlying system.
*/
#pragma empty_line
#pragma empty_line
/* Maximum number of `iovec' structures that one process has available
   for use with `readv' or writev'.  */
#pragma empty_line
#pragma empty_line
#pragma empty_line
/* Maximum value of `digit' in calls to the `printf' and `scanf'
   functions.  We have no limit, so return a reasonable value.  */
#pragma empty_line
#pragma empty_line
/* Maximum number of bytes in a `LANG' name.  We have no limit.  */
#pragma empty_line
#pragma empty_line
/* Maximum message number.  We have no limit.  */
#pragma empty_line
#pragma empty_line
/* Maximum number of bytes in N-to-1 collation mapping.  We have no
   limit.  */
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
/* Maximum set number.  We have no limit.  */
#pragma empty_line
#pragma empty_line
/* Maximum number of bytes in a message.  We have no limit.  */
#pragma empty_line
#pragma empty_line
/* Default process priority.  */
#pragma empty_line
#pragma empty_line
#pragma empty_line
/* Number of bits in a word of type `int'.  */
#pragma line 121 "/usr/include/x86_64-linux-gnu/bits/xopen_lim.h" 3 4
/* Number of bits in a word of type `long int'.  */
#pragma line 133 "/usr/include/x86_64-linux-gnu/bits/xopen_lim.h" 3 4
/* Safe assumption.  */
#pragma line 152 "/usr/include/limits.h" 2 3 4
#pragma line 39 "/Xilinx/Vivado_HLS/2017.2/lnx64/tools/clang/bin/../lib/clang/3.1/include/limits.h" 2 3
#pragma empty_line
#pragma empty_line
/* Many system headers try to "help us out" by defining these.  No really, we
   know how big each datatype is. */
#pragma line 60 "/Xilinx/Vivado_HLS/2017.2/lnx64/tools/clang/bin/../lib/clang/3.1/include/limits.h" 3
/* C90/99 5.2.4.2.1 */
#pragma line 90 "/Xilinx/Vivado_HLS/2017.2/lnx64/tools/clang/bin/../lib/clang/3.1/include/limits.h" 3
/* C99 5.2.4.2.1: Added long long. */
#pragma line 102 "/Xilinx/Vivado_HLS/2017.2/lnx64/tools/clang/bin/../lib/clang/3.1/include/limits.h" 3
/* LONG_LONG_MIN/LONG_LONG_MAX/ULONG_LONG_MAX are a GNU extension.  It's too bad
   that we don't have something like #pragma poison that could be used to
   deprecate a macro - the code should just use LLONG_MAX and friends.
 */
#pragma line 22 "ed25519/src/fixedint.h" 2
#pragma empty_line
    /* (u)int32_t */
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
            typedef unsigned int uint32_t;
#pragma line 39 "ed25519/src/fixedint.h"
            typedef signed int int32_t;
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
    /* (u)int64_t */
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
//        __extension__ typedef long long int64_t;
        __extension__ typedef long int64_t;
        __extension__ typedef unsigned long long uint64_t;
#pragma line 2 "ed25519/src/fe.cpp" 2
#pragma line 1 "ed25519/src/fe.h" 1
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma line 1 "ed25519/src/fixedint.h" 1
/*
    Portable header to provide the 32 and 64 bits type.
#pragma empty_line
    Not a compatible replacement for <stdint.h>, do not blindly use it as such.
*/
#pragma line 5 "ed25519/src/fe.h" 2
#pragma empty_line
#pragma empty_line
/*
    fe means field element.
    Here the field is \Z/(2^255-19).
    An element t, entries t[0]...t[9], represents the integer
    t[0]+2^26 t[1]+2^51 t[2]+2^77 t[3]+2^102 t[4]+...+2^230 t[9].
    Bounds on each t[i] vary depending on context.
*/
#pragma empty_line
#pragma empty_line
typedef int32_t fe[10];
#pragma empty_line
#pragma empty_line
void fe_0(fe h);
void fe_1(fe h);
#pragma empty_line
void fe_frombytes(fe h, const unsigned char *s);
void fe_tobytes(unsigned char *s, const fe h);
#pragma empty_line
void fe_copy(fe h, const fe f);
int fe_isnegative(const fe f);
int fe_isnonzero(const fe f);
void fe_cmov(fe f, const fe g, unsigned int b);
void fe_cswap(fe f, fe g, unsigned int b);
#pragma empty_line
void fe_neg(fe h, const fe f);
void fe_add(fe h, const fe f, const fe g);
void fe_invert(fe out, const fe z);
void fe_sq(fe h, const fe f);
void fe_sq2(fe h, const fe f);
void fe_mul(fe h, const fe f, const fe g);
void fe_mul121666(fe h, fe f);
void fe_pow22523(fe out, const fe z);
void fe_sub(fe h, const fe f, const fe g);
#pragma line 3 "ed25519/src/fe.cpp" 2
#pragma empty_line
#pragma empty_line
/*
    helper functions
*/
static uint64_t load_3(const unsigned char *in) {
#pragma HLS ALLOCATION instances=mul limit=1 operation
#pragma HLS ALLOCATION instances=add limit=1 operation
#pragma HLS ALLOCATION instances=shl limit=1 operation
#pragma HLS ALLOCATION instances=ashr limit=1 operation
#pragma HLS ALLOCATION instances=lshr limit=1 operation
#pragma HLS ALLOCATION instances=icmp limit=1 operation
#pragma HLS ALLOCATION instances=sub limit=1 operation
 uint64_t result;
#pragma empty_line
    result = (uint64_t) in[0];
    result |= ((uint64_t) in[1]) << 8;
    result |= ((uint64_t) in[2]) << 16;
#pragma empty_line
    return result;
}
#pragma empty_line
static uint64_t load_4(const unsigned char *in) {
#pragma HLS ALLOCATION instances=mul limit=1 operation
#pragma HLS ALLOCATION instances=add limit=1 operation
#pragma HLS ALLOCATION instances=shl limit=1 operation
#pragma HLS ALLOCATION instances=ashr limit=1 operation
#pragma HLS ALLOCATION instances=lshr limit=1 operation
#pragma HLS ALLOCATION instances=icmp limit=1 operation
#pragma HLS ALLOCATION instances=sub limit=1 operation
 uint64_t result;
#pragma empty_line
    result = (uint64_t) in[0];
    result |= ((uint64_t) in[1]) << 8;
    result |= ((uint64_t) in[2]) << 16;
    result |= ((uint64_t) in[3]) << 24;
#pragma empty_line
    return result;
}
#pragma empty_line
#pragma empty_line
#pragma empty_line
/*
    h = 0
*/
#pragma empty_line
void fe_0(fe h) {
    h[0] = 0;
    h[1] = 0;
    h[2] = 0;
    h[3] = 0;
    h[4] = 0;
    h[5] = 0;
    h[6] = 0;
    h[7] = 0;
    h[8] = 0;
    h[9] = 0;
}
#pragma empty_line
#pragma empty_line
#pragma empty_line
/*
    h = 1
*/
#pragma empty_line
void fe_1(fe h) {
    h[0] = 1;
    h[1] = 0;
    h[2] = 0;
    h[3] = 0;
    h[4] = 0;
    h[5] = 0;
    h[6] = 0;
    h[7] = 0;
    h[8] = 0;
    h[9] = 0;
}
#pragma empty_line
#pragma empty_line
#pragma empty_line
/*
    h = f + g
    Can overlap h with f or g.
#pragma empty_line
    Preconditions:
       |f| bounded by 1.1*2^25,1.1*2^24,1.1*2^25,1.1*2^24,etc.
       |g| bounded by 1.1*2^25,1.1*2^24,1.1*2^25,1.1*2^24,etc.
#pragma empty_line
    Postconditions:
       |h| bounded by 1.1*2^26,1.1*2^25,1.1*2^26,1.1*2^25,etc.
*/
#pragma empty_line
void fe_add(fe h, const fe f, const fe g) {
#pragma HLS ALLOCATION instances=mul limit=1 operation
#pragma HLS ALLOCATION instances=add limit=1 operation
#pragma HLS ALLOCATION instances=shl limit=1 operation
#pragma HLS ALLOCATION instances=ashr limit=1 operation
#pragma HLS ALLOCATION instances=lshr limit=1 operation
#pragma HLS ALLOCATION instances=icmp limit=1 operation
#pragma HLS ALLOCATION instances=sub limit=1 operation
 int32_t f0 = f[0];
    int32_t f1 = f[1];
    int32_t f2 = f[2];
    int32_t f3 = f[3];
    int32_t f4 = f[4];
    int32_t f5 = f[5];
    int32_t f6 = f[6];
    int32_t f7 = f[7];
    int32_t f8 = f[8];
    int32_t f9 = f[9];
    int32_t g0 = g[0];
    int32_t g1 = g[1];
    int32_t g2 = g[2];
    int32_t g3 = g[3];
    int32_t g4 = g[4];
    int32_t g5 = g[5];
    int32_t g6 = g[6];
    int32_t g7 = g[7];
    int32_t g8 = g[8];
    int32_t g9 = g[9];
    int32_t h0 = f0 + g0;
    int32_t h1 = f1 + g1;
    int32_t h2 = f2 + g2;
    int32_t h3 = f3 + g3;
    int32_t h4 = f4 + g4;
    int32_t h5 = f5 + g5;
    int32_t h6 = f6 + g6;
    int32_t h7 = f7 + g7;
    int32_t h8 = f8 + g8;
    int32_t h9 = f9 + g9;
#pragma empty_line
    h[0] = h0;
    h[1] = h1;
    h[2] = h2;
    h[3] = h3;
    h[4] = h4;
    h[5] = h5;
    h[6] = h6;
    h[7] = h7;
    h[8] = h8;
    h[9] = h9;
}
#pragma empty_line
#pragma empty_line
#pragma empty_line
/*
    Replace (f,g) with (g,g) if b == 1;
    replace (f,g) with (f,g) if b == 0.
#pragma empty_line
    Preconditions: b in {0,1}.
*/
#pragma empty_line
void fe_cmov(fe f, const fe g, unsigned int b) {
#pragma HLS ALLOCATION instances=mul limit=1 operation
#pragma HLS ALLOCATION instances=add limit=1 operation
#pragma HLS ALLOCATION instances=shl limit=1 operation
#pragma HLS ALLOCATION instances=ashr limit=1 operation
#pragma HLS ALLOCATION instances=lshr limit=1 operation
#pragma HLS ALLOCATION instances=icmp limit=1 operation
#pragma HLS ALLOCATION instances=sub limit=1 operation
 int32_t f0 = f[0];
    int32_t f1 = f[1];
    int32_t f2 = f[2];
    int32_t f3 = f[3];
    int32_t f4 = f[4];
    int32_t f5 = f[5];
    int32_t f6 = f[6];
    int32_t f7 = f[7];
    int32_t f8 = f[8];
    int32_t f9 = f[9];
    int32_t g0 = g[0];
    int32_t g1 = g[1];
    int32_t g2 = g[2];
    int32_t g3 = g[3];
    int32_t g4 = g[4];
    int32_t g5 = g[5];
    int32_t g6 = g[6];
    int32_t g7 = g[7];
    int32_t g8 = g[8];
    int32_t g9 = g[9];
    int32_t x0 = f0 ^ g0;
    int32_t x1 = f1 ^ g1;
    int32_t x2 = f2 ^ g2;
    int32_t x3 = f3 ^ g3;
    int32_t x4 = f4 ^ g4;
    int32_t x5 = f5 ^ g5;
    int32_t x6 = f6 ^ g6;
    int32_t x7 = f7 ^ g7;
    int32_t x8 = f8 ^ g8;
    int32_t x9 = f9 ^ g9;
#pragma empty_line
    b = (unsigned int) (- (int) b); /* silence warning */
    x0 &= b;
    x1 &= b;
    x2 &= b;
    x3 &= b;
    x4 &= b;
    x5 &= b;
    x6 &= b;
    x7 &= b;
    x8 &= b;
    x9 &= b;
#pragma empty_line
    f[0] = f0 ^ x0;
    f[1] = f1 ^ x1;
    f[2] = f2 ^ x2;
    f[3] = f3 ^ x3;
    f[4] = f4 ^ x4;
    f[5] = f5 ^ x5;
    f[6] = f6 ^ x6;
    f[7] = f7 ^ x7;
    f[8] = f8 ^ x8;
    f[9] = f9 ^ x9;
}
#pragma empty_line
/*
    Replace (f,g) with (g,f) if b == 1;
    replace (f,g) with (f,g) if b == 0.
#pragma empty_line
    Preconditions: b in {0,1}.
*/
#pragma empty_line
void fe_cswap(fe f,fe g,unsigned int b) {
#pragma HLS ALLOCATION instances=mul limit=1 operation
#pragma HLS ALLOCATION instances=add limit=1 operation
#pragma HLS ALLOCATION instances=shl limit=1 operation
#pragma HLS ALLOCATION instances=ashr limit=1 operation
#pragma HLS ALLOCATION instances=lshr limit=1 operation
#pragma HLS ALLOCATION instances=icmp limit=1 operation
#pragma HLS ALLOCATION instances=sub limit=1 operation
 int32_t f0 = f[0];
    int32_t f1 = f[1];
    int32_t f2 = f[2];
    int32_t f3 = f[3];
    int32_t f4 = f[4];
    int32_t f5 = f[5];
    int32_t f6 = f[6];
    int32_t f7 = f[7];
    int32_t f8 = f[8];
    int32_t f9 = f[9];
    int32_t g0 = g[0];
    int32_t g1 = g[1];
    int32_t g2 = g[2];
    int32_t g3 = g[3];
    int32_t g4 = g[4];
    int32_t g5 = g[5];
    int32_t g6 = g[6];
    int32_t g7 = g[7];
    int32_t g8 = g[8];
    int32_t g9 = g[9];
    int32_t x0 = f0 ^ g0;
    int32_t x1 = f1 ^ g1;
    int32_t x2 = f2 ^ g2;
    int32_t x3 = f3 ^ g3;
    int32_t x4 = f4 ^ g4;
    int32_t x5 = f5 ^ g5;
    int32_t x6 = f6 ^ g6;
    int32_t x7 = f7 ^ g7;
    int32_t x8 = f8 ^ g8;
    int32_t x9 = f9 ^ g9;
    b = (unsigned int) (- (int) b); /* silence warning */
    x0 &= b;
    x1 &= b;
    x2 &= b;
    x3 &= b;
    x4 &= b;
    x5 &= b;
    x6 &= b;
    x7 &= b;
    x8 &= b;
    x9 &= b;
    f[0] = f0 ^ x0;
    f[1] = f1 ^ x1;
    f[2] = f2 ^ x2;
    f[3] = f3 ^ x3;
    f[4] = f4 ^ x4;
    f[5] = f5 ^ x5;
    f[6] = f6 ^ x6;
    f[7] = f7 ^ x7;
    f[8] = f8 ^ x8;
    f[9] = f9 ^ x9;
    g[0] = g0 ^ x0;
    g[1] = g1 ^ x1;
    g[2] = g2 ^ x2;
    g[3] = g3 ^ x3;
    g[4] = g4 ^ x4;
    g[5] = g5 ^ x5;
    g[6] = g6 ^ x6;
    g[7] = g7 ^ x7;
    g[8] = g8 ^ x8;
    g[9] = g9 ^ x9;
}
#pragma empty_line
#pragma empty_line
#pragma empty_line
/*
    h = f
*/
#pragma empty_line
void fe_copy(fe h, const fe f) {
#pragma HLS ALLOCATION instances=mul limit=1 operation
#pragma HLS ALLOCATION instances=add limit=1 operation
#pragma HLS ALLOCATION instances=shl limit=1 operation
#pragma HLS ALLOCATION instances=ashr limit=1 operation
#pragma HLS ALLOCATION instances=lshr limit=1 operation
#pragma HLS ALLOCATION instances=icmp limit=1 operation
#pragma HLS ALLOCATION instances=sub limit=1 operation
 int32_t f0 = f[0];
    int32_t f1 = f[1];
    int32_t f2 = f[2];
    int32_t f3 = f[3];
    int32_t f4 = f[4];
    int32_t f5 = f[5];
    int32_t f6 = f[6];
    int32_t f7 = f[7];
    int32_t f8 = f[8];
    int32_t f9 = f[9];
#pragma empty_line
    h[0] = f0;
    h[1] = f1;
    h[2] = f2;
    h[3] = f3;
    h[4] = f4;
    h[5] = f5;
    h[6] = f6;
    h[7] = f7;
    h[8] = f8;
    h[9] = f9;
}
#pragma empty_line
#pragma empty_line
#pragma empty_line
/*
    Ignores top bit of h.
*/
#pragma empty_line
void fe_frombytes(fe h, const unsigned char *s) {
#pragma HLS ALLOCATION instances=mul limit=1 operation
#pragma HLS ALLOCATION instances=add limit=1 operation
#pragma HLS ALLOCATION instances=shl limit=1 operation
#pragma HLS ALLOCATION instances=ashr limit=1 operation
#pragma HLS ALLOCATION instances=lshr limit=1 operation
#pragma HLS ALLOCATION instances=icmp limit=1 operation
#pragma HLS ALLOCATION instances=sub limit=1 operation
 int64_t h0 = load_4(s);
    int64_t h1 = load_3(s + 4) << 6;
    int64_t h2 = load_3(s + 7) << 5;
    int64_t h3 = load_3(s + 10) << 3;
    int64_t h4 = load_3(s + 13) << 2;
    int64_t h5 = load_4(s + 16);
    int64_t h6 = load_3(s + 20) << 7;
    int64_t h7 = load_3(s + 23) << 5;
    int64_t h8 = load_3(s + 26) << 4;
    int64_t h9 = (load_3(s + 29) & 8388607) << 2;
    int64_t carry0;
    int64_t carry1;
    int64_t carry2;
    int64_t carry3;
    int64_t carry4;
    int64_t carry5;
    int64_t carry6;
    int64_t carry7;
    int64_t carry8;
    int64_t carry9;
#pragma empty_line
    carry9 = (h9 + (int64_t) (1 << 24)) >> 25;
    h0 += carry9 * 19;
    h9 -= carry9 << 25;
    carry1 = (h1 + (int64_t) (1 << 24)) >> 25;
    h2 += carry1;
    h1 -= carry1 << 25;
    carry3 = (h3 + (int64_t) (1 << 24)) >> 25;
    h4 += carry3;
    h3 -= carry3 << 25;
    carry5 = (h5 + (int64_t) (1 << 24)) >> 25;
    h6 += carry5;
    h5 -= carry5 << 25;
    carry7 = (h7 + (int64_t) (1 << 24)) >> 25;
    h8 += carry7;
    h7 -= carry7 << 25;
    carry0 = (h0 + (int64_t) (1 << 25)) >> 26;
    h1 += carry0;
    h0 -= carry0 << 26;
    carry2 = (h2 + (int64_t) (1 << 25)) >> 26;
    h3 += carry2;
    h2 -= carry2 << 26;
    carry4 = (h4 + (int64_t) (1 << 25)) >> 26;
    h5 += carry4;
    h4 -= carry4 << 26;
    carry6 = (h6 + (int64_t) (1 << 25)) >> 26;
    h7 += carry6;
    h6 -= carry6 << 26;
    carry8 = (h8 + (int64_t) (1 << 25)) >> 26;
    h9 += carry8;
    h8 -= carry8 << 26;
#pragma empty_line
    h[0] = (int32_t) h0;
    h[1] = (int32_t) h1;
    h[2] = (int32_t) h2;
    h[3] = (int32_t) h3;
    h[4] = (int32_t) h4;
    h[5] = (int32_t) h5;
    h[6] = (int32_t) h6;
    h[7] = (int32_t) h7;
    h[8] = (int32_t) h8;
    h[9] = (int32_t) h9;
}
#pragma empty_line
#pragma empty_line
#pragma empty_line
void fe_invert(fe out, const fe z) {
#pragma HLS ALLOCATION instances=mul limit=1 operation
#pragma HLS ALLOCATION instances=add limit=1 operation
#pragma HLS ALLOCATION instances=shl limit=1 operation
#pragma HLS ALLOCATION instances=ashr limit=1 operation
#pragma HLS ALLOCATION instances=lshr limit=1 operation
#pragma HLS ALLOCATION instances=icmp limit=1 operation
#pragma HLS ALLOCATION instances=sub limit=1 operation
#pragma HLS allocation instances=fe_mul limit=1 function
#pragma HLS allocation instances=fe_sq limit=1 function
 fe t0;
    fe t1;
    fe t2;
    fe t3;
    int i;
#pragma empty_line
    fe_sq(t0, z);
#pragma empty_line
    for (i = 1; i < 1; ++i) {
        fe_sq(t0, t0);
    }
#pragma empty_line
    fe_sq(t1, t0);
#pragma empty_line
    for (i = 1; i < 2; ++i) {
        fe_sq(t1, t1);
    }
#pragma empty_line
    fe_mul(t1, z, t1);
    fe_mul(t0, t0, t1);
    fe_sq(t2, t0);
#pragma empty_line
    for (i = 1; i < 1; ++i) {
        fe_sq(t2, t2);
    }
#pragma empty_line
    fe_mul(t1, t1, t2);
    fe_sq(t2, t1);
#pragma empty_line
    for (i = 1; i < 5; ++i) {
        fe_sq(t2, t2);
    }
#pragma empty_line
    fe_mul(t1, t2, t1);
    fe_sq(t2, t1);
#pragma empty_line
    for (i = 1; i < 10; ++i) {
        fe_sq(t2, t2);
    }
#pragma empty_line
    fe_mul(t2, t2, t1);
    fe_sq(t3, t2);
#pragma empty_line
    for (i = 1; i < 20; ++i) {
        fe_sq(t3, t3);
    }
#pragma empty_line
    fe_mul(t2, t3, t2);
    fe_sq(t2, t2);
#pragma empty_line
    for (i = 1; i < 10; ++i) {
        fe_sq(t2, t2);
    }
#pragma empty_line
    fe_mul(t1, t2, t1);
    fe_sq(t2, t1);
#pragma empty_line
    for (i = 1; i < 50; ++i) {
        fe_sq(t2, t2);
    }
#pragma empty_line
    fe_mul(t2, t2, t1);
    fe_sq(t3, t2);
#pragma empty_line
    for (i = 1; i < 100; ++i) {
        fe_sq(t3, t3);
    }
#pragma empty_line
    fe_mul(t2, t3, t2);
    fe_sq(t2, t2);
#pragma empty_line
    for (i = 1; i < 50; ++i) {
        fe_sq(t2, t2);
    }
#pragma empty_line
    fe_mul(t1, t2, t1);
    fe_sq(t1, t1);
#pragma empty_line
    for (i = 1; i < 5; ++i) {
        fe_sq(t1, t1);
    }
#pragma empty_line
    fe_mul(out, t1, t0);
}
#pragma empty_line
#pragma empty_line
#pragma empty_line
/*
    return 1 if f is in {1,3,5,...,q-2}
    return 0 if f is in {0,2,4,...,q-1}
#pragma empty_line
    Preconditions:
       |f| bounded by 1.1*2^26,1.1*2^25,1.1*2^26,1.1*2^25,etc.
*/
#pragma empty_line
int fe_isnegative(const fe f) {
#pragma HLS ALLOCATION instances=mul limit=1 operation
#pragma HLS ALLOCATION instances=add limit=1 operation
#pragma HLS ALLOCATION instances=shl limit=1 operation
#pragma HLS ALLOCATION instances=ashr limit=1 operation
#pragma HLS ALLOCATION instances=lshr limit=1 operation
#pragma HLS ALLOCATION instances=icmp limit=1 operation
#pragma HLS ALLOCATION instances=sub limit=1 operation
 unsigned char s[32];
#pragma empty_line
    fe_tobytes(s, f);
#pragma empty_line
    return s[0] & 1;
}
#pragma empty_line
#pragma empty_line
#pragma empty_line
/*
    return 1 if f == 0
    return 0 if f != 0
#pragma empty_line
    Preconditions:
       |f| bounded by 1.1*2^26,1.1*2^25,1.1*2^26,1.1*2^25,etc.
*/
#pragma empty_line
int fe_isnonzero(const fe f) {
#pragma HLS ALLOCATION instances=mul limit=1 operation
#pragma HLS ALLOCATION instances=add limit=1 operation
#pragma HLS ALLOCATION instances=shl limit=1 operation
#pragma HLS ALLOCATION instances=ashr limit=1 operation
#pragma HLS ALLOCATION instances=lshr limit=1 operation
#pragma HLS ALLOCATION instances=icmp limit=1 operation
#pragma HLS ALLOCATION instances=sub limit=1 operation
 unsigned char s[32];
    unsigned char r;
#pragma empty_line
    fe_tobytes(s, f);
#pragma empty_line
    r = s[0];
#pragma empty_line
    r |= s[1];
    r |= s[2];
    r |= s[3];
    r |= s[4];
    r |= s[5];
    r |= s[6];
    r |= s[7];
    r |= s[8];
    r |= s[9];
    r |= s[10];
    r |= s[11];
    r |= s[12];
    r |= s[13];
    r |= s[14];
    r |= s[15];
    r |= s[16];
    r |= s[17];
    r |= s[18];
    r |= s[19];
    r |= s[20];
    r |= s[21];
    r |= s[22];
    r |= s[23];
    r |= s[24];
    r |= s[25];
    r |= s[26];
    r |= s[27];
    r |= s[28];
    r |= s[29];
    r |= s[30];
    r |= s[31];
#pragma empty_line
#pragma empty_line
    return r != 0;
}
#pragma empty_line
#pragma empty_line
#pragma empty_line
/*
    h = f * g
    Can overlap h with f or g.
#pragma empty_line
    Preconditions:
       |f| bounded by 1.65*2^26,1.65*2^25,1.65*2^26,1.65*2^25,etc.
       |g| bounded by 1.65*2^26,1.65*2^25,1.65*2^26,1.65*2^25,etc.
#pragma empty_line
    Postconditions:
       |h| bounded by 1.01*2^25,1.01*2^24,1.01*2^25,1.01*2^24,etc.
    */
#pragma empty_line
    /*
    Notes on implementation strategy:
#pragma empty_line
    Using schoolbook multiplication.
    Karatsuba would save a little in some cost models.
#pragma empty_line
    Most multiplications by 2 and 19 are 32-bit precomputations;
    cheaper than 64-bit postcomputations.
#pragma empty_line
    There is one remaining multiplication by 19 in the carry chain;
    one *19 precomputation can be merged into this,
    but the resulting data flow is considerably less clean.
#pragma empty_line
    There are 12 carries below.
    10 of them are 2-way parallelizable and vectorizable.
    Can get away with 11 carries, but then data flow is much deeper.
#pragma empty_line
    With tighter constraints on inputs can squeeze carries into int32.
*/
#pragma empty_line
void fe_mul(fe h, const fe f, const fe g) {
#pragma HLS ALLOCATION instances=mul limit=1 operation
#pragma HLS ALLOCATION instances=add limit=1 operation
#pragma HLS ALLOCATION instances=shl limit=1 operation
#pragma HLS ALLOCATION instances=ashr limit=1 operation
#pragma HLS ALLOCATION instances=lshr limit=1 operation
#pragma HLS ALLOCATION instances=icmp limit=1 operation
#pragma HLS ALLOCATION instances=sub limit=1 operation
 int32_t f0 = f[0];
    int32_t f1 = f[1];
    int32_t f2 = f[2];
    int32_t f3 = f[3];
    int32_t f4 = f[4];
    int32_t f5 = f[5];
    int32_t f6 = f[6];
    int32_t f7 = f[7];
    int32_t f8 = f[8];
    int32_t f9 = f[9];
    int32_t g0 = g[0];
    int32_t g1 = g[1];
    int32_t g2 = g[2];
    int32_t g3 = g[3];
    int32_t g4 = g[4];
    int32_t g5 = g[5];
    int32_t g6 = g[6];
    int32_t g7 = g[7];
    int32_t g8 = g[8];
    int32_t g9 = g[9];
    int32_t g1_19 = 19 * g1; /* 1.959375*2^29 */
    int32_t g2_19 = 19 * g2; /* 1.959375*2^30; still ok */
    int32_t g3_19 = 19 * g3;
    int32_t g4_19 = 19 * g4;
    int32_t g5_19 = 19 * g5;
    int32_t g6_19 = 19 * g6;
    int32_t g7_19 = 19 * g7;
    int32_t g8_19 = 19 * g8;
    int32_t g9_19 = 19 * g9;
    int32_t f1_2 = 2 * f1;
    int32_t f3_2 = 2 * f3;
    int32_t f5_2 = 2 * f5;
    int32_t f7_2 = 2 * f7;
    int32_t f9_2 = 2 * f9;
    int64_t f0g0 = f0 * (int64_t) g0;
    int64_t f0g1 = f0 * (int64_t) g1;
    int64_t f0g2 = f0 * (int64_t) g2;
    int64_t f0g3 = f0 * (int64_t) g3;
    int64_t f0g4 = f0 * (int64_t) g4;
    int64_t f0g5 = f0 * (int64_t) g5;
    int64_t f0g6 = f0 * (int64_t) g6;
    int64_t f0g7 = f0 * (int64_t) g7;
    int64_t f0g8 = f0 * (int64_t) g8;
    int64_t f0g9 = f0 * (int64_t) g9;
    int64_t f1g0 = f1 * (int64_t) g0;
    int64_t f1g1_2 = f1_2 * (int64_t) g1;
    int64_t f1g2 = f1 * (int64_t) g2;
    int64_t f1g3_2 = f1_2 * (int64_t) g3;
    int64_t f1g4 = f1 * (int64_t) g4;
    int64_t f1g5_2 = f1_2 * (int64_t) g5;
    int64_t f1g6 = f1 * (int64_t) g6;
    int64_t f1g7_2 = f1_2 * (int64_t) g7;
    int64_t f1g8 = f1 * (int64_t) g8;
    int64_t f1g9_38 = f1_2 * (int64_t) g9_19;
    int64_t f2g0 = f2 * (int64_t) g0;
    int64_t f2g1 = f2 * (int64_t) g1;
    int64_t f2g2 = f2 * (int64_t) g2;
    int64_t f2g3 = f2 * (int64_t) g3;
    int64_t f2g4 = f2 * (int64_t) g4;
    int64_t f2g5 = f2 * (int64_t) g5;
    int64_t f2g6 = f2 * (int64_t) g6;
    int64_t f2g7 = f2 * (int64_t) g7;
    int64_t f2g8_19 = f2 * (int64_t) g8_19;
    int64_t f2g9_19 = f2 * (int64_t) g9_19;
    int64_t f3g0 = f3 * (int64_t) g0;
    int64_t f3g1_2 = f3_2 * (int64_t) g1;
    int64_t f3g2 = f3 * (int64_t) g2;
    int64_t f3g3_2 = f3_2 * (int64_t) g3;
    int64_t f3g4 = f3 * (int64_t) g4;
    int64_t f3g5_2 = f3_2 * (int64_t) g5;
    int64_t f3g6 = f3 * (int64_t) g6;
    int64_t f3g7_38 = f3_2 * (int64_t) g7_19;
    int64_t f3g8_19 = f3 * (int64_t) g8_19;
    int64_t f3g9_38 = f3_2 * (int64_t) g9_19;
    int64_t f4g0 = f4 * (int64_t) g0;
    int64_t f4g1 = f4 * (int64_t) g1;
    int64_t f4g2 = f4 * (int64_t) g2;
    int64_t f4g3 = f4 * (int64_t) g3;
    int64_t f4g4 = f4 * (int64_t) g4;
    int64_t f4g5 = f4 * (int64_t) g5;
    int64_t f4g6_19 = f4 * (int64_t) g6_19;
    int64_t f4g7_19 = f4 * (int64_t) g7_19;
    int64_t f4g8_19 = f4 * (int64_t) g8_19;
    int64_t f4g9_19 = f4 * (int64_t) g9_19;
    int64_t f5g0 = f5 * (int64_t) g0;
    int64_t f5g1_2 = f5_2 * (int64_t) g1;
    int64_t f5g2 = f5 * (int64_t) g2;
    int64_t f5g3_2 = f5_2 * (int64_t) g3;
    int64_t f5g4 = f5 * (int64_t) g4;
    int64_t f5g5_38 = f5_2 * (int64_t) g5_19;
    int64_t f5g6_19 = f5 * (int64_t) g6_19;
    int64_t f5g7_38 = f5_2 * (int64_t) g7_19;
    int64_t f5g8_19 = f5 * (int64_t) g8_19;
    int64_t f5g9_38 = f5_2 * (int64_t) g9_19;
    int64_t f6g0 = f6 * (int64_t) g0;
    int64_t f6g1 = f6 * (int64_t) g1;
    int64_t f6g2 = f6 * (int64_t) g2;
    int64_t f6g3 = f6 * (int64_t) g3;
    int64_t f6g4_19 = f6 * (int64_t) g4_19;
    int64_t f6g5_19 = f6 * (int64_t) g5_19;
    int64_t f6g6_19 = f6 * (int64_t) g6_19;
    int64_t f6g7_19 = f6 * (int64_t) g7_19;
    int64_t f6g8_19 = f6 * (int64_t) g8_19;
    int64_t f6g9_19 = f6 * (int64_t) g9_19;
    int64_t f7g0 = f7 * (int64_t) g0;
    int64_t f7g1_2 = f7_2 * (int64_t) g1;
    int64_t f7g2 = f7 * (int64_t) g2;
    int64_t f7g3_38 = f7_2 * (int64_t) g3_19;
    int64_t f7g4_19 = f7 * (int64_t) g4_19;
    int64_t f7g5_38 = f7_2 * (int64_t) g5_19;
    int64_t f7g6_19 = f7 * (int64_t) g6_19;
    int64_t f7g7_38 = f7_2 * (int64_t) g7_19;
    int64_t f7g8_19 = f7 * (int64_t) g8_19;
    int64_t f7g9_38 = f7_2 * (int64_t) g9_19;
    int64_t f8g0 = f8 * (int64_t) g0;
    int64_t f8g1 = f8 * (int64_t) g1;
    int64_t f8g2_19 = f8 * (int64_t) g2_19;
    int64_t f8g3_19 = f8 * (int64_t) g3_19;
    int64_t f8g4_19 = f8 * (int64_t) g4_19;
    int64_t f8g5_19 = f8 * (int64_t) g5_19;
    int64_t f8g6_19 = f8 * (int64_t) g6_19;
    int64_t f8g7_19 = f8 * (int64_t) g7_19;
    int64_t f8g8_19 = f8 * (int64_t) g8_19;
    int64_t f8g9_19 = f8 * (int64_t) g9_19;
    int64_t f9g0 = f9 * (int64_t) g0;
    int64_t f9g1_38 = f9_2 * (int64_t) g1_19;
    int64_t f9g2_19 = f9 * (int64_t) g2_19;
    int64_t f9g3_38 = f9_2 * (int64_t) g3_19;
    int64_t f9g4_19 = f9 * (int64_t) g4_19;
    int64_t f9g5_38 = f9_2 * (int64_t) g5_19;
    int64_t f9g6_19 = f9 * (int64_t) g6_19;
    int64_t f9g7_38 = f9_2 * (int64_t) g7_19;
    int64_t f9g8_19 = f9 * (int64_t) g8_19;
    int64_t f9g9_38 = f9_2 * (int64_t) g9_19;
    int64_t h0 = f0g0 + f1g9_38 + f2g8_19 + f3g7_38 + f4g6_19 + f5g5_38 + f6g4_19 + f7g3_38 + f8g2_19 + f9g1_38;
    int64_t h1 = f0g1 + f1g0 + f2g9_19 + f3g8_19 + f4g7_19 + f5g6_19 + f6g5_19 + f7g4_19 + f8g3_19 + f9g2_19;
    int64_t h2 = f0g2 + f1g1_2 + f2g0 + f3g9_38 + f4g8_19 + f5g7_38 + f6g6_19 + f7g5_38 + f8g4_19 + f9g3_38;
    int64_t h3 = f0g3 + f1g2 + f2g1 + f3g0 + f4g9_19 + f5g8_19 + f6g7_19 + f7g6_19 + f8g5_19 + f9g4_19;
    int64_t h4 = f0g4 + f1g3_2 + f2g2 + f3g1_2 + f4g0 + f5g9_38 + f6g8_19 + f7g7_38 + f8g6_19 + f9g5_38;
    int64_t h5 = f0g5 + f1g4 + f2g3 + f3g2 + f4g1 + f5g0 + f6g9_19 + f7g8_19 + f8g7_19 + f9g6_19;
    int64_t h6 = f0g6 + f1g5_2 + f2g4 + f3g3_2 + f4g2 + f5g1_2 + f6g0 + f7g9_38 + f8g8_19 + f9g7_38;
    int64_t h7 = f0g7 + f1g6 + f2g5 + f3g4 + f4g3 + f5g2 + f6g1 + f7g0 + f8g9_19 + f9g8_19;
    int64_t h8 = f0g8 + f1g7_2 + f2g6 + f3g5_2 + f4g4 + f5g3_2 + f6g2 + f7g1_2 + f8g0 + f9g9_38;
    int64_t h9 = f0g9 + f1g8 + f2g7 + f3g6 + f4g5 + f5g4 + f6g3 + f7g2 + f8g1 + f9g0 ;
    int64_t carry0;
    int64_t carry1;
    int64_t carry2;
    int64_t carry3;
    int64_t carry4;
    int64_t carry5;
    int64_t carry6;
    int64_t carry7;
    int64_t carry8;
    int64_t carry9;
#pragma empty_line
    carry0 = (h0 + (int64_t) (1 << 25)) >> 26;
    h1 += carry0;
    h0 -= carry0 << 26;
    carry4 = (h4 + (int64_t) (1 << 25)) >> 26;
    h5 += carry4;
    h4 -= carry4 << 26;
#pragma empty_line
    carry1 = (h1 + (int64_t) (1 << 24)) >> 25;
    h2 += carry1;
    h1 -= carry1 << 25;
    carry5 = (h5 + (int64_t) (1 << 24)) >> 25;
    h6 += carry5;
    h5 -= carry5 << 25;
#pragma empty_line
    carry2 = (h2 + (int64_t) (1 << 25)) >> 26;
    h3 += carry2;
    h2 -= carry2 << 26;
    carry6 = (h6 + (int64_t) (1 << 25)) >> 26;
    h7 += carry6;
    h6 -= carry6 << 26;
#pragma empty_line
    carry3 = (h3 + (int64_t) (1 << 24)) >> 25;
    h4 += carry3;
    h3 -= carry3 << 25;
    carry7 = (h7 + (int64_t) (1 << 24)) >> 25;
    h8 += carry7;
    h7 -= carry7 << 25;
#pragma empty_line
    carry4 = (h4 + (int64_t) (1 << 25)) >> 26;
    h5 += carry4;
    h4 -= carry4 << 26;
    carry8 = (h8 + (int64_t) (1 << 25)) >> 26;
    h9 += carry8;
    h8 -= carry8 << 26;
#pragma empty_line
    carry9 = (h9 + (int64_t) (1 << 24)) >> 25;
    h0 += carry9 * 19;
    h9 -= carry9 << 25;
#pragma empty_line
    carry0 = (h0 + (int64_t) (1 << 25)) >> 26;
    h1 += carry0;
    h0 -= carry0 << 26;
#pragma empty_line
    h[0] = (int32_t) h0;
    h[1] = (int32_t) h1;
    h[2] = (int32_t) h2;
    h[3] = (int32_t) h3;
    h[4] = (int32_t) h4;
    h[5] = (int32_t) h5;
    h[6] = (int32_t) h6;
    h[7] = (int32_t) h7;
    h[8] = (int32_t) h8;
    h[9] = (int32_t) h9;
}
#pragma empty_line
#pragma empty_line
/*
h = f * 121666
Can overlap h with f.
#pragma empty_line
Preconditions:
   |f| bounded by 1.1*2^26,1.1*2^25,1.1*2^26,1.1*2^25,etc.
#pragma empty_line
Postconditions:
   |h| bounded by 1.1*2^25,1.1*2^24,1.1*2^25,1.1*2^24,etc.
*/
#pragma empty_line
void fe_mul121666(fe h, fe f) {
#pragma HLS ALLOCATION instances=mul limit=1 operation
#pragma HLS ALLOCATION instances=add limit=1 operation
#pragma HLS ALLOCATION instances=shl limit=1 operation
#pragma HLS ALLOCATION instances=ashr limit=1 operation
#pragma HLS ALLOCATION instances=lshr limit=1 operation
#pragma HLS ALLOCATION instances=icmp limit=1 operation
#pragma HLS ALLOCATION instances=sub limit=1 operation
 int32_t f0 = f[0];
    int32_t f1 = f[1];
    int32_t f2 = f[2];
    int32_t f3 = f[3];
    int32_t f4 = f[4];
    int32_t f5 = f[5];
    int32_t f6 = f[6];
    int32_t f7 = f[7];
    int32_t f8 = f[8];
    int32_t f9 = f[9];
    int64_t h0 = f0 * (int64_t) 121666;
    int64_t h1 = f1 * (int64_t) 121666;
    int64_t h2 = f2 * (int64_t) 121666;
    int64_t h3 = f3 * (int64_t) 121666;
    int64_t h4 = f4 * (int64_t) 121666;
    int64_t h5 = f5 * (int64_t) 121666;
    int64_t h6 = f6 * (int64_t) 121666;
    int64_t h7 = f7 * (int64_t) 121666;
    int64_t h8 = f8 * (int64_t) 121666;
    int64_t h9 = f9 * (int64_t) 121666;
    int64_t carry0;
    int64_t carry1;
    int64_t carry2;
    int64_t carry3;
    int64_t carry4;
    int64_t carry5;
    int64_t carry6;
    int64_t carry7;
    int64_t carry8;
    int64_t carry9;
#pragma empty_line
    carry9 = (h9 + (int64_t) (1<<24)) >> 25; h0 += carry9 * 19; h9 -= carry9 << 25;
    carry1 = (h1 + (int64_t) (1<<24)) >> 25; h2 += carry1; h1 -= carry1 << 25;
    carry3 = (h3 + (int64_t) (1<<24)) >> 25; h4 += carry3; h3 -= carry3 << 25;
    carry5 = (h5 + (int64_t) (1<<24)) >> 25; h6 += carry5; h5 -= carry5 << 25;
    carry7 = (h7 + (int64_t) (1<<24)) >> 25; h8 += carry7; h7 -= carry7 << 25;
#pragma empty_line
    carry0 = (h0 + (int64_t) (1<<25)) >> 26; h1 += carry0; h0 -= carry0 << 26;
    carry2 = (h2 + (int64_t) (1<<25)) >> 26; h3 += carry2; h2 -= carry2 << 26;
    carry4 = (h4 + (int64_t) (1<<25)) >> 26; h5 += carry4; h4 -= carry4 << 26;
    carry6 = (h6 + (int64_t) (1<<25)) >> 26; h7 += carry6; h6 -= carry6 << 26;
    carry8 = (h8 + (int64_t) (1<<25)) >> 26; h9 += carry8; h8 -= carry8 << 26;
#pragma empty_line
    h[0] = (int32_t) h0;
    h[1] = (int32_t) h1;
    h[2] = (int32_t) h2;
    h[3] = (int32_t) h3;
    h[4] = (int32_t) h4;
    h[5] = (int32_t) h5;
    h[6] = (int32_t) h6;
    h[7] = (int32_t) h7;
    h[8] = (int32_t) h8;
    h[9] = (int32_t) h9;
}
#pragma empty_line
#pragma empty_line
/*
h = -f
#pragma empty_line
Preconditions:
   |f| bounded by 1.1*2^25,1.1*2^24,1.1*2^25,1.1*2^24,etc.
#pragma empty_line
Postconditions:
   |h| bounded by 1.1*2^25,1.1*2^24,1.1*2^25,1.1*2^24,etc.
*/
#pragma empty_line
void fe_neg(fe h, const fe f) {
#pragma HLS ALLOCATION instances=mul limit=1 operation
#pragma HLS ALLOCATION instances=add limit=1 operation
#pragma HLS ALLOCATION instances=shl limit=1 operation
#pragma HLS ALLOCATION instances=ashr limit=1 operation
#pragma HLS ALLOCATION instances=lshr limit=1 operation
#pragma HLS ALLOCATION instances=icmp limit=1 operation
#pragma HLS ALLOCATION instances=sub limit=1 operation
 int32_t f0 = f[0];
    int32_t f1 = f[1];
    int32_t f2 = f[2];
    int32_t f3 = f[3];
    int32_t f4 = f[4];
    int32_t f5 = f[5];
    int32_t f6 = f[6];
    int32_t f7 = f[7];
    int32_t f8 = f[8];
    int32_t f9 = f[9];
    int32_t h0 = -f0;
    int32_t h1 = -f1;
    int32_t h2 = -f2;
    int32_t h3 = -f3;
    int32_t h4 = -f4;
    int32_t h5 = -f5;
    int32_t h6 = -f6;
    int32_t h7 = -f7;
    int32_t h8 = -f8;
    int32_t h9 = -f9;
#pragma empty_line
    h[0] = h0;
    h[1] = h1;
    h[2] = h2;
    h[3] = h3;
    h[4] = h4;
    h[5] = h5;
    h[6] = h6;
    h[7] = h7;
    h[8] = h8;
    h[9] = h9;
}
#pragma empty_line
#pragma empty_line
void fe_pow22523(fe out, const fe z) {
#pragma HLS ALLOCATION instances=mul limit=1 operation
#pragma HLS ALLOCATION instances=add limit=1 operation
#pragma HLS ALLOCATION instances=shl limit=1 operation
#pragma HLS ALLOCATION instances=ashr limit=1 operation
#pragma HLS ALLOCATION instances=lshr limit=1 operation
#pragma HLS ALLOCATION instances=icmp limit=1 operation
#pragma HLS ALLOCATION instances=sub limit=1 operation
#pragma HLS allocation instances=fe_sq limit=1 function
#pragma HLS allocation instances=fe_mul limit=1 function
 fe t0;
    fe t1;
    fe t2;
    int i;
    fe_sq(t0, z);
#pragma empty_line
    for (i = 1; i < 1; ++i) {
        fe_sq(t0, t0);
    }
#pragma empty_line
    fe_sq(t1, t0);
#pragma empty_line
    for (i = 1; i < 2; ++i) {
        fe_sq(t1, t1);
    }
#pragma empty_line
    fe_mul(t1, z, t1);
    fe_mul(t0, t0, t1);
    fe_sq(t0, t0);
#pragma empty_line
    for (i = 1; i < 1; ++i) {
        fe_sq(t0, t0);
    }
#pragma empty_line
    fe_mul(t0, t1, t0);
    fe_sq(t1, t0);
#pragma empty_line
    for (i = 1; i < 5; ++i) {
        fe_sq(t1, t1);
    }
#pragma empty_line
    fe_mul(t0, t1, t0);
    fe_sq(t1, t0);
#pragma empty_line
    for (i = 1; i < 10; ++i) {
        fe_sq(t1, t1);
    }
#pragma empty_line
    fe_mul(t1, t1, t0);
    fe_sq(t2, t1);
#pragma empty_line
    for (i = 1; i < 20; ++i) {
        fe_sq(t2, t2);
    }
#pragma empty_line
    fe_mul(t1, t2, t1);
    fe_sq(t1, t1);
#pragma empty_line
    for (i = 1; i < 10; ++i) {
        fe_sq(t1, t1);
    }
#pragma empty_line
    fe_mul(t0, t1, t0);
    fe_sq(t1, t0);
#pragma empty_line
    for (i = 1; i < 50; ++i) {
        fe_sq(t1, t1);
    }
#pragma empty_line
    fe_mul(t1, t1, t0);
    fe_sq(t2, t1);
#pragma empty_line
    for (i = 1; i < 100; ++i) {
        fe_sq(t2, t2);
    }
#pragma empty_line
    fe_mul(t1, t2, t1);
    fe_sq(t1, t1);
#pragma empty_line
    for (i = 1; i < 50; ++i) {
        fe_sq(t1, t1);
    }
#pragma empty_line
    fe_mul(t0, t1, t0);
    fe_sq(t0, t0);
#pragma empty_line
    for (i = 1; i < 2; ++i) {
        fe_sq(t0, t0);
    }
#pragma empty_line
    fe_mul(out, t0, z);
    return;
}
#pragma empty_line
#pragma empty_line
/*
h = f * f
Can overlap h with f.
#pragma empty_line
Preconditions:
   |f| bounded by 1.65*2^26,1.65*2^25,1.65*2^26,1.65*2^25,etc.
#pragma empty_line
Postconditions:
   |h| bounded by 1.01*2^25,1.01*2^24,1.01*2^25,1.01*2^24,etc.
*/
#pragma empty_line
/*
See fe_mul.c for discussion of implementation strategy.
*/
#pragma empty_line
void fe_sq(fe h, const fe f) {
#pragma HLS ALLOCATION instances=mul limit=1 operation
#pragma HLS ALLOCATION instances=add limit=1 operation
#pragma HLS ALLOCATION instances=shl limit=1 operation
#pragma HLS ALLOCATION instances=ashr limit=1 operation
#pragma HLS ALLOCATION instances=lshr limit=1 operation
#pragma HLS ALLOCATION instances=icmp limit=1 operation
#pragma HLS ALLOCATION instances=sub limit=1 operation
 int32_t f0 = f[0];
    int32_t f1 = f[1];
    int32_t f2 = f[2];
    int32_t f3 = f[3];
    int32_t f4 = f[4];
    int32_t f5 = f[5];
    int32_t f6 = f[6];
    int32_t f7 = f[7];
    int32_t f8 = f[8];
    int32_t f9 = f[9];
    int32_t f0_2 = 2 * f0;
    int32_t f1_2 = 2 * f1;
    int32_t f2_2 = 2 * f2;
    int32_t f3_2 = 2 * f3;
    int32_t f4_2 = 2 * f4;
    int32_t f5_2 = 2 * f5;
    int32_t f6_2 = 2 * f6;
    int32_t f7_2 = 2 * f7;
    int32_t f5_38 = 38 * f5; /* 1.959375*2^30 */
    int32_t f6_19 = 19 * f6; /* 1.959375*2^30 */
    int32_t f7_38 = 38 * f7; /* 1.959375*2^30 */
    int32_t f8_19 = 19 * f8; /* 1.959375*2^30 */
    int32_t f9_38 = 38 * f9; /* 1.959375*2^30 */
    int64_t f0f0 = f0 * (int64_t) f0;
    int64_t f0f1_2 = f0_2 * (int64_t) f1;
    int64_t f0f2_2 = f0_2 * (int64_t) f2;
    int64_t f0f3_2 = f0_2 * (int64_t) f3;
    int64_t f0f4_2 = f0_2 * (int64_t) f4;
    int64_t f0f5_2 = f0_2 * (int64_t) f5;
    int64_t f0f6_2 = f0_2 * (int64_t) f6;
    int64_t f0f7_2 = f0_2 * (int64_t) f7;
    int64_t f0f8_2 = f0_2 * (int64_t) f8;
    int64_t f0f9_2 = f0_2 * (int64_t) f9;
    int64_t f1f1_2 = f1_2 * (int64_t) f1;
    int64_t f1f2_2 = f1_2 * (int64_t) f2;
    int64_t f1f3_4 = f1_2 * (int64_t) f3_2;
    int64_t f1f4_2 = f1_2 * (int64_t) f4;
    int64_t f1f5_4 = f1_2 * (int64_t) f5_2;
    int64_t f1f6_2 = f1_2 * (int64_t) f6;
    int64_t f1f7_4 = f1_2 * (int64_t) f7_2;
    int64_t f1f8_2 = f1_2 * (int64_t) f8;
    int64_t f1f9_76 = f1_2 * (int64_t) f9_38;
    int64_t f2f2 = f2 * (int64_t) f2;
    int64_t f2f3_2 = f2_2 * (int64_t) f3;
    int64_t f2f4_2 = f2_2 * (int64_t) f4;
    int64_t f2f5_2 = f2_2 * (int64_t) f5;
    int64_t f2f6_2 = f2_2 * (int64_t) f6;
    int64_t f2f7_2 = f2_2 * (int64_t) f7;
    int64_t f2f8_38 = f2_2 * (int64_t) f8_19;
    int64_t f2f9_38 = f2 * (int64_t) f9_38;
    int64_t f3f3_2 = f3_2 * (int64_t) f3;
    int64_t f3f4_2 = f3_2 * (int64_t) f4;
    int64_t f3f5_4 = f3_2 * (int64_t) f5_2;
    int64_t f3f6_2 = f3_2 * (int64_t) f6;
    int64_t f3f7_76 = f3_2 * (int64_t) f7_38;
    int64_t f3f8_38 = f3_2 * (int64_t) f8_19;
    int64_t f3f9_76 = f3_2 * (int64_t) f9_38;
    int64_t f4f4 = f4 * (int64_t) f4;
    int64_t f4f5_2 = f4_2 * (int64_t) f5;
    int64_t f4f6_38 = f4_2 * (int64_t) f6_19;
    int64_t f4f7_38 = f4 * (int64_t) f7_38;
    int64_t f4f8_38 = f4_2 * (int64_t) f8_19;
    int64_t f4f9_38 = f4 * (int64_t) f9_38;
    int64_t f5f5_38 = f5 * (int64_t) f5_38;
    int64_t f5f6_38 = f5_2 * (int64_t) f6_19;
    int64_t f5f7_76 = f5_2 * (int64_t) f7_38;
    int64_t f5f8_38 = f5_2 * (int64_t) f8_19;
    int64_t f5f9_76 = f5_2 * (int64_t) f9_38;
    int64_t f6f6_19 = f6 * (int64_t) f6_19;
    int64_t f6f7_38 = f6 * (int64_t) f7_38;
    int64_t f6f8_38 = f6_2 * (int64_t) f8_19;
    int64_t f6f9_38 = f6 * (int64_t) f9_38;
    int64_t f7f7_38 = f7 * (int64_t) f7_38;
    int64_t f7f8_38 = f7_2 * (int64_t) f8_19;
    int64_t f7f9_76 = f7_2 * (int64_t) f9_38;
    int64_t f8f8_19 = f8 * (int64_t) f8_19;
    int64_t f8f9_38 = f8 * (int64_t) f9_38;
    int64_t f9f9_38 = f9 * (int64_t) f9_38;
    int64_t h0 = f0f0 + f1f9_76 + f2f8_38 + f3f7_76 + f4f6_38 + f5f5_38;
    int64_t h1 = f0f1_2 + f2f9_38 + f3f8_38 + f4f7_38 + f5f6_38;
    int64_t h2 = f0f2_2 + f1f1_2 + f3f9_76 + f4f8_38 + f5f7_76 + f6f6_19;
    int64_t h3 = f0f3_2 + f1f2_2 + f4f9_38 + f5f8_38 + f6f7_38;
    int64_t h4 = f0f4_2 + f1f3_4 + f2f2 + f5f9_76 + f6f8_38 + f7f7_38;
    int64_t h5 = f0f5_2 + f1f4_2 + f2f3_2 + f6f9_38 + f7f8_38;
    int64_t h6 = f0f6_2 + f1f5_4 + f2f4_2 + f3f3_2 + f7f9_76 + f8f8_19;
    int64_t h7 = f0f7_2 + f1f6_2 + f2f5_2 + f3f4_2 + f8f9_38;
    int64_t h8 = f0f8_2 + f1f7_4 + f2f6_2 + f3f5_4 + f4f4 + f9f9_38;
    int64_t h9 = f0f9_2 + f1f8_2 + f2f7_2 + f3f6_2 + f4f5_2;
    int64_t carry0;
    int64_t carry1;
    int64_t carry2;
    int64_t carry3;
    int64_t carry4;
    int64_t carry5;
    int64_t carry6;
    int64_t carry7;
    int64_t carry8;
    int64_t carry9;
    carry0 = (h0 + (int64_t) (1 << 25)) >> 26;
    h1 += carry0;
    h0 -= carry0 << 26;
    carry4 = (h4 + (int64_t) (1 << 25)) >> 26;
    h5 += carry4;
    h4 -= carry4 << 26;
    carry1 = (h1 + (int64_t) (1 << 24)) >> 25;
    h2 += carry1;
    h1 -= carry1 << 25;
    carry5 = (h5 + (int64_t) (1 << 24)) >> 25;
    h6 += carry5;
    h5 -= carry5 << 25;
    carry2 = (h2 + (int64_t) (1 << 25)) >> 26;
    h3 += carry2;
    h2 -= carry2 << 26;
    carry6 = (h6 + (int64_t) (1 << 25)) >> 26;
    h7 += carry6;
    h6 -= carry6 << 26;
    carry3 = (h3 + (int64_t) (1 << 24)) >> 25;
    h4 += carry3;
    h3 -= carry3 << 25;
    carry7 = (h7 + (int64_t) (1 << 24)) >> 25;
    h8 += carry7;
    h7 -= carry7 << 25;
    carry4 = (h4 + (int64_t) (1 << 25)) >> 26;
    h5 += carry4;
    h4 -= carry4 << 26;
    carry8 = (h8 + (int64_t) (1 << 25)) >> 26;
    h9 += carry8;
    h8 -= carry8 << 26;
    carry9 = (h9 + (int64_t) (1 << 24)) >> 25;
    h0 += carry9 * 19;
    h9 -= carry9 << 25;
    carry0 = (h0 + (int64_t) (1 << 25)) >> 26;
    h1 += carry0;
    h0 -= carry0 << 26;
    h[0] = (int32_t) h0;
    h[1] = (int32_t) h1;
    h[2] = (int32_t) h2;
    h[3] = (int32_t) h3;
    h[4] = (int32_t) h4;
    h[5] = (int32_t) h5;
    h[6] = (int32_t) h6;
    h[7] = (int32_t) h7;
    h[8] = (int32_t) h8;
    h[9] = (int32_t) h9;
}
#pragma empty_line
#pragma empty_line
/*
h = 2 * f * f
Can overlap h with f.
#pragma empty_line
Preconditions:
   |f| bounded by 1.65*2^26,1.65*2^25,1.65*2^26,1.65*2^25,etc.
#pragma empty_line
Postconditions:
   |h| bounded by 1.01*2^25,1.01*2^24,1.01*2^25,1.01*2^24,etc.
*/
#pragma empty_line
/*
See fe_mul.c for discussion of implementation strategy.
*/
#pragma empty_line
void fe_sq2(fe h, const fe f) {
#pragma HLS ALLOCATION instances=mul limit=1 operation
#pragma HLS ALLOCATION instances=add limit=1 operation
#pragma HLS ALLOCATION instances=shl limit=1 operation
#pragma HLS ALLOCATION instances=ashr limit=1 operation
#pragma HLS ALLOCATION instances=lshr limit=1 operation
#pragma HLS ALLOCATION instances=icmp limit=1 operation
#pragma HLS ALLOCATION instances=sub limit=1 operation
 int32_t f0 = f[0];
    int32_t f1 = f[1];
    int32_t f2 = f[2];
    int32_t f3 = f[3];
    int32_t f4 = f[4];
    int32_t f5 = f[5];
    int32_t f6 = f[6];
    int32_t f7 = f[7];
    int32_t f8 = f[8];
    int32_t f9 = f[9];
    int32_t f0_2 = 2 * f0;
    int32_t f1_2 = 2 * f1;
    int32_t f2_2 = 2 * f2;
    int32_t f3_2 = 2 * f3;
    int32_t f4_2 = 2 * f4;
    int32_t f5_2 = 2 * f5;
    int32_t f6_2 = 2 * f6;
    int32_t f7_2 = 2 * f7;
    int32_t f5_38 = 38 * f5; /* 1.959375*2^30 */
    int32_t f6_19 = 19 * f6; /* 1.959375*2^30 */
    int32_t f7_38 = 38 * f7; /* 1.959375*2^30 */
    int32_t f8_19 = 19 * f8; /* 1.959375*2^30 */
    int32_t f9_38 = 38 * f9; /* 1.959375*2^30 */
    int64_t f0f0 = f0 * (int64_t) f0;
    int64_t f0f1_2 = f0_2 * (int64_t) f1;
    int64_t f0f2_2 = f0_2 * (int64_t) f2;
    int64_t f0f3_2 = f0_2 * (int64_t) f3;
    int64_t f0f4_2 = f0_2 * (int64_t) f4;
    int64_t f0f5_2 = f0_2 * (int64_t) f5;
    int64_t f0f6_2 = f0_2 * (int64_t) f6;
    int64_t f0f7_2 = f0_2 * (int64_t) f7;
    int64_t f0f8_2 = f0_2 * (int64_t) f8;
    int64_t f0f9_2 = f0_2 * (int64_t) f9;
    int64_t f1f1_2 = f1_2 * (int64_t) f1;
    int64_t f1f2_2 = f1_2 * (int64_t) f2;
    int64_t f1f3_4 = f1_2 * (int64_t) f3_2;
    int64_t f1f4_2 = f1_2 * (int64_t) f4;
    int64_t f1f5_4 = f1_2 * (int64_t) f5_2;
    int64_t f1f6_2 = f1_2 * (int64_t) f6;
    int64_t f1f7_4 = f1_2 * (int64_t) f7_2;
    int64_t f1f8_2 = f1_2 * (int64_t) f8;
    int64_t f1f9_76 = f1_2 * (int64_t) f9_38;
    int64_t f2f2 = f2 * (int64_t) f2;
    int64_t f2f3_2 = f2_2 * (int64_t) f3;
    int64_t f2f4_2 = f2_2 * (int64_t) f4;
    int64_t f2f5_2 = f2_2 * (int64_t) f5;
    int64_t f2f6_2 = f2_2 * (int64_t) f6;
    int64_t f2f7_2 = f2_2 * (int64_t) f7;
    int64_t f2f8_38 = f2_2 * (int64_t) f8_19;
    int64_t f2f9_38 = f2 * (int64_t) f9_38;
    int64_t f3f3_2 = f3_2 * (int64_t) f3;
    int64_t f3f4_2 = f3_2 * (int64_t) f4;
    int64_t f3f5_4 = f3_2 * (int64_t) f5_2;
    int64_t f3f6_2 = f3_2 * (int64_t) f6;
    int64_t f3f7_76 = f3_2 * (int64_t) f7_38;
    int64_t f3f8_38 = f3_2 * (int64_t) f8_19;
    int64_t f3f9_76 = f3_2 * (int64_t) f9_38;
    int64_t f4f4 = f4 * (int64_t) f4;
    int64_t f4f5_2 = f4_2 * (int64_t) f5;
    int64_t f4f6_38 = f4_2 * (int64_t) f6_19;
    int64_t f4f7_38 = f4 * (int64_t) f7_38;
    int64_t f4f8_38 = f4_2 * (int64_t) f8_19;
    int64_t f4f9_38 = f4 * (int64_t) f9_38;
    int64_t f5f5_38 = f5 * (int64_t) f5_38;
    int64_t f5f6_38 = f5_2 * (int64_t) f6_19;
    int64_t f5f7_76 = f5_2 * (int64_t) f7_38;
    int64_t f5f8_38 = f5_2 * (int64_t) f8_19;
    int64_t f5f9_76 = f5_2 * (int64_t) f9_38;
    int64_t f6f6_19 = f6 * (int64_t) f6_19;
    int64_t f6f7_38 = f6 * (int64_t) f7_38;
    int64_t f6f8_38 = f6_2 * (int64_t) f8_19;
    int64_t f6f9_38 = f6 * (int64_t) f9_38;
    int64_t f7f7_38 = f7 * (int64_t) f7_38;
    int64_t f7f8_38 = f7_2 * (int64_t) f8_19;
    int64_t f7f9_76 = f7_2 * (int64_t) f9_38;
    int64_t f8f8_19 = f8 * (int64_t) f8_19;
    int64_t f8f9_38 = f8 * (int64_t) f9_38;
    int64_t f9f9_38 = f9 * (int64_t) f9_38;
    int64_t h0 = f0f0 + f1f9_76 + f2f8_38 + f3f7_76 + f4f6_38 + f5f5_38;
    int64_t h1 = f0f1_2 + f2f9_38 + f3f8_38 + f4f7_38 + f5f6_38;
    int64_t h2 = f0f2_2 + f1f1_2 + f3f9_76 + f4f8_38 + f5f7_76 + f6f6_19;
    int64_t h3 = f0f3_2 + f1f2_2 + f4f9_38 + f5f8_38 + f6f7_38;
    int64_t h4 = f0f4_2 + f1f3_4 + f2f2 + f5f9_76 + f6f8_38 + f7f7_38;
    int64_t h5 = f0f5_2 + f1f4_2 + f2f3_2 + f6f9_38 + f7f8_38;
    int64_t h6 = f0f6_2 + f1f5_4 + f2f4_2 + f3f3_2 + f7f9_76 + f8f8_19;
    int64_t h7 = f0f7_2 + f1f6_2 + f2f5_2 + f3f4_2 + f8f9_38;
    int64_t h8 = f0f8_2 + f1f7_4 + f2f6_2 + f3f5_4 + f4f4 + f9f9_38;
    int64_t h9 = f0f9_2 + f1f8_2 + f2f7_2 + f3f6_2 + f4f5_2;
    int64_t carry0;
    int64_t carry1;
    int64_t carry2;
    int64_t carry3;
    int64_t carry4;
    int64_t carry5;
    int64_t carry6;
    int64_t carry7;
    int64_t carry8;
    int64_t carry9;
    h0 += h0;
    h1 += h1;
    h2 += h2;
    h3 += h3;
    h4 += h4;
    h5 += h5;
    h6 += h6;
    h7 += h7;
    h8 += h8;
    h9 += h9;
    carry0 = (h0 + (int64_t) (1 << 25)) >> 26;
    h1 += carry0;
    h0 -= carry0 << 26;
    carry4 = (h4 + (int64_t) (1 << 25)) >> 26;
    h5 += carry4;
    h4 -= carry4 << 26;
    carry1 = (h1 + (int64_t) (1 << 24)) >> 25;
    h2 += carry1;
    h1 -= carry1 << 25;
    carry5 = (h5 + (int64_t) (1 << 24)) >> 25;
    h6 += carry5;
    h5 -= carry5 << 25;
    carry2 = (h2 + (int64_t) (1 << 25)) >> 26;
    h3 += carry2;
    h2 -= carry2 << 26;
    carry6 = (h6 + (int64_t) (1 << 25)) >> 26;
    h7 += carry6;
    h6 -= carry6 << 26;
    carry3 = (h3 + (int64_t) (1 << 24)) >> 25;
    h4 += carry3;
    h3 -= carry3 << 25;
    carry7 = (h7 + (int64_t) (1 << 24)) >> 25;
    h8 += carry7;
    h7 -= carry7 << 25;
    carry4 = (h4 + (int64_t) (1 << 25)) >> 26;
    h5 += carry4;
    h4 -= carry4 << 26;
    carry8 = (h8 + (int64_t) (1 << 25)) >> 26;
    h9 += carry8;
    h8 -= carry8 << 26;
    carry9 = (h9 + (int64_t) (1 << 24)) >> 25;
    h0 += carry9 * 19;
    h9 -= carry9 << 25;
    carry0 = (h0 + (int64_t) (1 << 25)) >> 26;
    h1 += carry0;
    h0 -= carry0 << 26;
    h[0] = (int32_t) h0;
    h[1] = (int32_t) h1;
    h[2] = (int32_t) h2;
    h[3] = (int32_t) h3;
    h[4] = (int32_t) h4;
    h[5] = (int32_t) h5;
    h[6] = (int32_t) h6;
    h[7] = (int32_t) h7;
    h[8] = (int32_t) h8;
    h[9] = (int32_t) h9;
}
#pragma empty_line
#pragma empty_line
/*
h = f - g
Can overlap h with f or g.
#pragma empty_line
Preconditions:
   |f| bounded by 1.1*2^25,1.1*2^24,1.1*2^25,1.1*2^24,etc.
   |g| bounded by 1.1*2^25,1.1*2^24,1.1*2^25,1.1*2^24,etc.
#pragma empty_line
Postconditions:
   |h| bounded by 1.1*2^26,1.1*2^25,1.1*2^26,1.1*2^25,etc.
*/
#pragma empty_line
void fe_sub(fe h, const fe f, const fe g) {
#pragma HLS ALLOCATION instances=mul limit=1 operation
#pragma HLS ALLOCATION instances=add limit=1 operation
#pragma HLS ALLOCATION instances=shl limit=1 operation
#pragma HLS ALLOCATION instances=ashr limit=1 operation
#pragma HLS ALLOCATION instances=lshr limit=1 operation
#pragma HLS ALLOCATION instances=icmp limit=1 operation
#pragma HLS ALLOCATION instances=sub limit=1 operation
 int32_t f0 = f[0];
    int32_t f1 = f[1];
    int32_t f2 = f[2];
    int32_t f3 = f[3];
    int32_t f4 = f[4];
    int32_t f5 = f[5];
    int32_t f6 = f[6];
    int32_t f7 = f[7];
    int32_t f8 = f[8];
    int32_t f9 = f[9];
    int32_t g0 = g[0];
    int32_t g1 = g[1];
    int32_t g2 = g[2];
    int32_t g3 = g[3];
    int32_t g4 = g[4];
    int32_t g5 = g[5];
    int32_t g6 = g[6];
    int32_t g7 = g[7];
    int32_t g8 = g[8];
    int32_t g9 = g[9];
    int32_t h0 = f0 - g0;
    int32_t h1 = f1 - g1;
    int32_t h2 = f2 - g2;
    int32_t h3 = f3 - g3;
    int32_t h4 = f4 - g4;
    int32_t h5 = f5 - g5;
    int32_t h6 = f6 - g6;
    int32_t h7 = f7 - g7;
    int32_t h8 = f8 - g8;
    int32_t h9 = f9 - g9;
#pragma empty_line
    h[0] = h0;
    h[1] = h1;
    h[2] = h2;
    h[3] = h3;
    h[4] = h4;
    h[5] = h5;
    h[6] = h6;
    h[7] = h7;
    h[8] = h8;
    h[9] = h9;
}
#pragma empty_line
#pragma empty_line
#pragma empty_line
/*
Preconditions:
  |h| bounded by 1.1*2^26,1.1*2^25,1.1*2^26,1.1*2^25,etc.
#pragma empty_line
Write p=2^255-19; q=floor(h/p).
Basic claim: q = floor(2^(-255)(h + 19 2^(-25)h9 + 2^(-1))).
#pragma empty_line
Proof:
  Have |h|<=p so |q|<=1 so |19^2 2^(-255) q|<1/4.
  Also have |h-2^230 h9|<2^231 so |19 2^(-255)(h-2^230 h9)|<1/4.
#pragma empty_line
  Write y=2^(-1)-19^2 2^(-255)q-19 2^(-255)(h-2^230 h9).
  Then 0<y<1.
#pragma empty_line
  Write r=h-pq.
  Have 0<=r<=p-1=2^255-20.
  Thus 0<=r+19(2^-255)r<r+19(2^-255)2^255<=2^255-1.
#pragma empty_line
  Write x=r+19(2^-255)r+y.
  Then 0<x<2^255 so floor(2^(-255)x) = 0 so floor(q+2^(-255)x) = q.
#pragma empty_line
  Have q+2^(-255)x = 2^(-255)(h + 19 2^(-25) h9 + 2^(-1))
  so floor(2^(-255)(h + 19 2^(-25) h9 + 2^(-1))) = q.
*/
#pragma empty_line
void fe_tobytes(unsigned char *s, const fe h) {
#pragma HLS ALLOCATION instances=mul limit=1 operation
#pragma HLS ALLOCATION instances=add limit=1 operation
#pragma HLS ALLOCATION instances=shl limit=1 operation
#pragma HLS ALLOCATION instances=ashr limit=1 operation
#pragma HLS ALLOCATION instances=lshr limit=1 operation
#pragma HLS ALLOCATION instances=icmp limit=1 operation
#pragma HLS ALLOCATION instances=sub limit=1 operation
 int32_t h0 = h[0];
    int32_t h1 = h[1];
    int32_t h2 = h[2];
    int32_t h3 = h[3];
    int32_t h4 = h[4];
    int32_t h5 = h[5];
    int32_t h6 = h[6];
    int32_t h7 = h[7];
    int32_t h8 = h[8];
    int32_t h9 = h[9];
    int32_t q;
    int32_t carry0;
    int32_t carry1;
    int32_t carry2;
    int32_t carry3;
    int32_t carry4;
    int32_t carry5;
    int32_t carry6;
    int32_t carry7;
    int32_t carry8;
    int32_t carry9;
    q = (19 * h9 + (((int32_t) 1) << 24)) >> 25;
    q = (h0 + q) >> 26;
    q = (h1 + q) >> 25;
    q = (h2 + q) >> 26;
    q = (h3 + q) >> 25;
    q = (h4 + q) >> 26;
    q = (h5 + q) >> 25;
    q = (h6 + q) >> 26;
    q = (h7 + q) >> 25;
    q = (h8 + q) >> 26;
    q = (h9 + q) >> 25;
    /* Goal: Output h-(2^255-19)q, which is between 0 and 2^255-20. */
    h0 += 19 * q;
    /* Goal: Output h-2^255 q, which is between 0 and 2^255-20. */
    carry0 = h0 >> 26;
    h1 += carry0;
    h0 -= carry0 << 26;
    carry1 = h1 >> 25;
    h2 += carry1;
    h1 -= carry1 << 25;
    carry2 = h2 >> 26;
    h3 += carry2;
    h2 -= carry2 << 26;
    carry3 = h3 >> 25;
    h4 += carry3;
    h3 -= carry3 << 25;
    carry4 = h4 >> 26;
    h5 += carry4;
    h4 -= carry4 << 26;
    carry5 = h5 >> 25;
    h6 += carry5;
    h5 -= carry5 << 25;
    carry6 = h6 >> 26;
    h7 += carry6;
    h6 -= carry6 << 26;
    carry7 = h7 >> 25;
    h8 += carry7;
    h7 -= carry7 << 25;
    carry8 = h8 >> 26;
    h9 += carry8;
    h8 -= carry8 << 26;
    carry9 = h9 >> 25;
    h9 -= carry9 << 25;
#pragma empty_line
    /* h10 = carry9 */
    /*
    Goal: Output h0+...+2^255 h10-2^255 q, which is between 0 and 2^255-20.
    Have h0+...+2^230 h9 between 0 and 2^255-1;
    evidently 2^255 h10-2^255 q = 0.
    Goal: Output h0+...+2^230 h9.
    */
    s[0] = (unsigned char) (h0 >> 0);
    s[1] = (unsigned char) (h0 >> 8);
    s[2] = (unsigned char) (h0 >> 16);
    s[3] = (unsigned char) ((h0 >> 24) | (h1 << 2));
    s[4] = (unsigned char) (h1 >> 6);
    s[5] = (unsigned char) (h1 >> 14);
    s[6] = (unsigned char) ((h1 >> 22) | (h2 << 3));
    s[7] = (unsigned char) (h2 >> 5);
    s[8] = (unsigned char) (h2 >> 13);
    s[9] = (unsigned char) ((h2 >> 21) | (h3 << 5));
    s[10] = (unsigned char) (h3 >> 3);
    s[11] = (unsigned char) (h3 >> 11);
    s[12] = (unsigned char) ((h3 >> 19) | (h4 << 6));
    s[13] = (unsigned char) (h4 >> 2);
    s[14] = (unsigned char) (h4 >> 10);
    s[15] = (unsigned char) (h4 >> 18);
    s[16] = (unsigned char) (h5 >> 0);
    s[17] = (unsigned char) (h5 >> 8);
    s[18] = (unsigned char) (h5 >> 16);
    s[19] = (unsigned char) ((h5 >> 24) | (h6 << 1));
    s[20] = (unsigned char) (h6 >> 7);
    s[21] = (unsigned char) (h6 >> 15);
    s[22] = (unsigned char) ((h6 >> 23) | (h7 << 3));
    s[23] = (unsigned char) (h7 >> 5);
    s[24] = (unsigned char) (h7 >> 13);
    s[25] = (unsigned char) ((h7 >> 21) | (h8 << 4));
    s[26] = (unsigned char) (h8 >> 4);
    s[27] = (unsigned char) (h8 >> 12);
    s[28] = (unsigned char) ((h8 >> 20) | (h9 << 6));
    s[29] = (unsigned char) (h9 >> 2);
    s[30] = (unsigned char) (h9 >> 10);
    s[31] = (unsigned char) (h9 >> 18);
}
