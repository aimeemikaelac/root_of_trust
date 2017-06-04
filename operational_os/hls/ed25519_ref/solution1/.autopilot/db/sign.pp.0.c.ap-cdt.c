#pragma line 1 "ed25519_ref/src/sign.c"
#pragma line 1 "ed25519_ref/src/sign.c" 1
#pragma line 1 "<built-in>" 1
#pragma line 1 "<built-in>" 3
#pragma line 149 "<built-in>" 3
#pragma line 1 "<command line>" 1
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
#pragma line 289 "/Xilinx/Vivado_HLS/2017.1/common/technology/autopilot/etc/autopilot_ssdm_op.h"
/*#define AP_SPEC_ATTR __attribute__ ((pure))*/
#pragma empty_line
#pragma empty_line
#pragma empty_line
    /****** SSDM Intrinsics: OPERATIONS ***/
    // Interface operations
    //typedef unsigned int __attribute__ ((bitwidth(1))) _uint1_;
    void _ssdm_op_IfRead() __attribute__ ((nothrow));
    void _ssdm_op_IfWrite() __attribute__ ((nothrow));
    //_uint1_ _ssdm_op_IfNbRead() SSDM_OP_ATTR;
    //_uint1_ _ssdm_op_IfNbWrite() SSDM_OP_ATTR;
    //_uint1_ _ssdm_op_IfCanRead() SSDM_OP_ATTR;
    //_uint1_ _ssdm_op_IfCanWrite() SSDM_OP_ATTR;
#pragma empty_line
    // Stream Intrinsics
    void _ssdm_StreamRead() __attribute__ ((nothrow));
    void _ssdm_StreamWrite() __attribute__ ((nothrow));
    //_uint1_  _ssdm_StreamNbRead() SSDM_OP_ATTR;
    //_uint1_  _ssdm_StreamNbWrite() SSDM_OP_ATTR;
    //_uint1_  _ssdm_StreamCanRead() SSDM_OP_ATTR;
    //_uint1_  _ssdm_StreamCanWrite() SSDM_OP_ATTR;
#pragma empty_line
    // Misc
    void _ssdm_op_MemShiftRead() __attribute__ ((nothrow));
#pragma empty_line
    void _ssdm_op_Wait() __attribute__ ((nothrow));
    void _ssdm_op_Poll() __attribute__ ((nothrow));
#pragma empty_line
    void _ssdm_op_Return() __attribute__ ((nothrow));
#pragma empty_line
    /* SSDM Intrinsics: SPECIFICATIONS */
    void _ssdm_op_SpecSynModule() __attribute__ ((nothrow));
    void _ssdm_op_SpecTopModule() __attribute__ ((nothrow));
    void _ssdm_op_SpecProcessDecl() __attribute__ ((nothrow));
    void _ssdm_op_SpecProcessDef() __attribute__ ((nothrow));
    void _ssdm_op_SpecPort() __attribute__ ((nothrow));
    void _ssdm_op_SpecConnection() __attribute__ ((nothrow));
    void _ssdm_op_SpecChannel() __attribute__ ((nothrow));
    void _ssdm_op_SpecSensitive() __attribute__ ((nothrow));
    void _ssdm_op_SpecModuleInst() __attribute__ ((nothrow));
    void _ssdm_op_SpecPortMap() __attribute__ ((nothrow));
#pragma empty_line
    void _ssdm_op_SpecReset() __attribute__ ((nothrow));
#pragma empty_line
    void _ssdm_op_SpecPlatform() __attribute__ ((nothrow));
    void _ssdm_op_SpecClockDomain() __attribute__ ((nothrow));
    void _ssdm_op_SpecPowerDomain() __attribute__ ((nothrow));
#pragma empty_line
    int _ssdm_op_SpecRegionBegin() __attribute__ ((nothrow));
    int _ssdm_op_SpecRegionEnd() __attribute__ ((nothrow));
#pragma empty_line
    void _ssdm_op_SpecLoopName() __attribute__ ((nothrow));
#pragma empty_line
    void _ssdm_op_SpecLoopTripCount() __attribute__ ((nothrow));
#pragma empty_line
    int _ssdm_op_SpecStateBegin() __attribute__ ((nothrow));
    int _ssdm_op_SpecStateEnd() __attribute__ ((nothrow));
#pragma empty_line
    void _ssdm_op_SpecInterface() __attribute__ ((nothrow));
#pragma empty_line
    void _ssdm_op_SpecPipeline() __attribute__ ((nothrow));
    void _ssdm_op_SpecDataflowPipeline() __attribute__ ((nothrow));
#pragma empty_line
#pragma empty_line
    void _ssdm_op_SpecLatency() __attribute__ ((nothrow));
    void _ssdm_op_SpecParallel() __attribute__ ((nothrow));
    void _ssdm_op_SpecProtocol() __attribute__ ((nothrow));
    void _ssdm_op_SpecOccurrence() __attribute__ ((nothrow));
#pragma empty_line
    void _ssdm_op_SpecResource() __attribute__ ((nothrow));
    void _ssdm_op_SpecResourceLimit() __attribute__ ((nothrow));
    void _ssdm_op_SpecCHCore() __attribute__ ((nothrow));
    void _ssdm_op_SpecFUCore() __attribute__ ((nothrow));
    void _ssdm_op_SpecIFCore() __attribute__ ((nothrow));
    void _ssdm_op_SpecIPCore() __attribute__ ((nothrow));
    void _ssdm_op_SpecKeepValue() __attribute__ ((nothrow));
    void _ssdm_op_SpecMemCore() __attribute__ ((nothrow));
#pragma empty_line
    void _ssdm_op_SpecExt() __attribute__ ((nothrow));
    /*void* _ssdm_op_SpecProcess() SSDM_SPEC_ATTR;
    void* _ssdm_op_SpecEdge() SSDM_SPEC_ATTR; */
#pragma empty_line
    /* Presynthesis directive functions */
    void _ssdm_SpecArrayDimSize() __attribute__ ((nothrow));
#pragma empty_line
    void _ssdm_RegionBegin() __attribute__ ((nothrow));
    void _ssdm_RegionEnd() __attribute__ ((nothrow));
#pragma empty_line
    void _ssdm_Unroll() __attribute__ ((nothrow));
    void _ssdm_UnrollRegion() __attribute__ ((nothrow));
#pragma empty_line
    void _ssdm_InlineAll() __attribute__ ((nothrow));
    void _ssdm_InlineLoop() __attribute__ ((nothrow));
    void _ssdm_Inline() __attribute__ ((nothrow));
    void _ssdm_InlineSelf() __attribute__ ((nothrow));
    void _ssdm_InlineRegion() __attribute__ ((nothrow));
#pragma empty_line
    void _ssdm_SpecArrayMap() __attribute__ ((nothrow));
    void _ssdm_SpecArrayPartition() __attribute__ ((nothrow));
    void _ssdm_SpecArrayReshape() __attribute__ ((nothrow));
#pragma empty_line
    void _ssdm_SpecStream() __attribute__ ((nothrow));
#pragma empty_line
    void _ssdm_SpecExpr() __attribute__ ((nothrow));
    void _ssdm_SpecExprBalance() __attribute__ ((nothrow));
#pragma empty_line
    void _ssdm_SpecDependence() __attribute__ ((nothrow));
#pragma empty_line
    void _ssdm_SpecLoopMerge() __attribute__ ((nothrow));
    void _ssdm_SpecLoopFlatten() __attribute__ ((nothrow));
    void _ssdm_SpecLoopRewind() __attribute__ ((nothrow));
#pragma empty_line
    void _ssdm_SpecFuncInstantiation() __attribute__ ((nothrow));
    void _ssdm_SpecFuncBuffer() __attribute__ ((nothrow));
    void _ssdm_SpecFuncExtract() __attribute__ ((nothrow));
    void _ssdm_SpecConstant() __attribute__ ((nothrow));
#pragma empty_line
    void _ssdm_DataPack() __attribute__ ((nothrow));
    void _ssdm_SpecDataPack() __attribute__ ((nothrow));
#pragma empty_line
    void _ssdm_op_SpecBitsMap() __attribute__ ((nothrow));
    void _ssdm_op_SpecLicense() __attribute__ ((nothrow));
#pragma empty_line
#pragma empty_line
/*#define _ssdm_op_WaitUntil(X) while (!(X)) _ssdm_op_Wait(1);
#define _ssdm_op_Delayed(X) X */
#pragma line 427 "/Xilinx/Vivado_HLS/2017.1/common/technology/autopilot/etc/autopilot_ssdm_op.h"
// 67d7842dbbe25473c3c32b93c0da8047785f30d78e8a024de1b57352245f9689
#pragma line 6 "<command line>" 2
#pragma line 1 "<built-in>" 2
#pragma line 1 "ed25519_ref/src/sign.c" 2
#pragma line 1 "/usr/include/string.h" 1 3 4
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
 *	ISO C99 Standard: 7.21 String handling	<string.h>
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
#pragma line 26 "/usr/include/string.h" 2 3 4
#pragma empty_line
#pragma empty_line
#pragma empty_line
/* Get size_t and NULL from <stddef.h>.  */
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma line 1 "/Xilinx/Vivado_HLS/2017.1/lnx64/tools/clang/bin/../lib/clang/3.1/include/stddef.h" 1 3 4
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
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
typedef int wchar_t;
#pragma line 56 "/Xilinx/Vivado_HLS/2017.1/lnx64/tools/clang/bin/../lib/clang/3.1/include/stddef.h" 3 4
/* Some C libraries expect to see a wint_t here. Others (notably MinGW) will use
__WINT_TYPE__ directly; accommodate both by requiring __need_wint_t */
#pragma line 33 "/usr/include/string.h" 2 3 4
#pragma empty_line
/* Tell the caller that we provide correct C++ prototypes.  */
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
/* Copy N bytes of SRC to DEST.  */
extern void *memcpy (void *__restrict __dest, const void *__restrict __src,
       size_t __n) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));
/* Copy N bytes of SRC to DEST, guaranteeing
   correct behavior for overlapping strings.  */
extern void *memmove (void *__dest, const void *__src, size_t __n)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));
#pragma empty_line
#pragma empty_line
/* Copy no more than N bytes of SRC to DEST, stopping when C is found.
   Return the position in DEST one byte past where C was copied,
   or NULL if C was not found in the first N bytes of SRC.  */
#pragma empty_line
extern void *memccpy (void *__restrict __dest, const void *__restrict __src,
        int __c, size_t __n)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
/* Set N bytes of S to C.  */
extern void *memset (void *__s, int __c, size_t __n) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));
#pragma empty_line
/* Compare N bytes of S1 and S2.  */
extern int memcmp (const void *__s1, const void *__s2, size_t __n)
     __attribute__ ((__nothrow__ )) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));
#pragma empty_line
/* Search N bytes of S for C.  */
#pragma line 92 "/usr/include/string.h" 3 4
extern void *memchr (const void *__s, int __c, size_t __n)
      __attribute__ ((__nothrow__ )) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1)));
#pragma line 124 "/usr/include/string.h" 3 4
/* Copy SRC to DEST.  */
extern char *strcpy (char *__restrict __dest, const char *__restrict __src)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));
/* Copy no more than N characters of SRC to DEST.  */
extern char *strncpy (char *__restrict __dest,
        const char *__restrict __src, size_t __n)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));
#pragma empty_line
/* Append SRC onto DEST.  */
extern char *strcat (char *__restrict __dest, const char *__restrict __src)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));
/* Append no more than N characters from SRC onto DEST.  */
extern char *strncat (char *__restrict __dest, const char *__restrict __src,
        size_t __n) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));
#pragma empty_line
/* Compare S1 and S2.  */
extern int strcmp (const char *__s1, const char *__s2)
     __attribute__ ((__nothrow__ )) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));
/* Compare N characters of S1 and S2.  */
extern int strncmp (const char *__s1, const char *__s2, size_t __n)
     __attribute__ ((__nothrow__ )) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));
#pragma empty_line
/* Compare the collated forms of S1 and S2.  */
extern int strcoll (const char *__s1, const char *__s2)
     __attribute__ ((__nothrow__ )) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));
/* Put a transformation of SRC into no more than N bytes of DEST.  */
extern size_t strxfrm (char *__restrict __dest,
         const char *__restrict __src, size_t __n)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (2)));
#pragma empty_line
#pragma empty_line
#pragma empty_line
/* The following functions are equivalent to the both above but they
   take the locale they use for the collation as an extra argument.
   This is not standardsized but something like will come.  */
#pragma empty_line
#pragma line 1 "/usr/include/xlocale.h" 1 3 4
/* Definition of locale datatype.
   Copyright (C) 1997-2016 Free Software Foundation, Inc.
   This file is part of the GNU C Library.
   Contributed by Ulrich Drepper <drepper@cygnus.com>, 1997.
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
/* Structure for reentrant locale using functions.  This is an
   (almost) opaque type for the user level programs.  The file and
   this data structure is not standardized.  Don't rely on it.  It can
   go away without warning.  */
typedef struct __locale_struct
{
  /* Note: LC_ALL is not a valid index into this array.  */
  struct __locale_data *__locales[13]; /* 13 = __LC_LAST. */
#pragma empty_line
  /* To increase the speed of this solution we add some special members.  */
  const unsigned short int *__ctype_b;
  const int *__ctype_tolower;
  const int *__ctype_toupper;
#pragma empty_line
  /* Note: LC_ALL is not a valid index into this array.  */
  const char *__names[13];
} *__locale_t;
#pragma empty_line
/* POSIX 2008 makes locale_t official.  */
typedef __locale_t locale_t;
#pragma line 160 "/usr/include/string.h" 2 3 4
#pragma empty_line
/* Compare the collated forms of S1 and S2 using rules from L.  */
extern int strcoll_l (const char *__s1, const char *__s2, __locale_t __l)
     __attribute__ ((__nothrow__ )) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2, 3)));
/* Put a transformation of SRC into no more than N bytes of DEST.  */
extern size_t strxfrm_l (char *__dest, const char *__src, size_t __n,
    __locale_t __l) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (2, 4)));
#pragma empty_line
#pragma empty_line
#pragma empty_line
/* Duplicate S, returning an identical malloc'd string.  */
extern char *strdup (const char *__s)
     __attribute__ ((__nothrow__ )) __attribute__ ((__malloc__)) __attribute__ ((__nonnull__ (1)));
#pragma empty_line
#pragma empty_line
/* Return a malloc'd copy of at most N bytes of STRING.  The
   resultant string is terminated even if no null terminator
   appears before STRING[N].  */
#pragma empty_line
extern char *strndup (const char *__string, size_t __n)
     __attribute__ ((__nothrow__ )) __attribute__ ((__malloc__)) __attribute__ ((__nonnull__ (1)));
#pragma line 207 "/usr/include/string.h" 3 4
/* Find the first occurrence of C in S.  */
#pragma line 231 "/usr/include/string.h" 3 4
extern char *strchr (const char *__s, int __c)
     __attribute__ ((__nothrow__ )) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1)));
#pragma empty_line
/* Find the last occurrence of C in S.  */
#pragma line 258 "/usr/include/string.h" 3 4
extern char *strrchr (const char *__s, int __c)
     __attribute__ ((__nothrow__ )) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1)));
#pragma line 278 "/usr/include/string.h" 3 4
/* Return the length of the initial segment of S which
   consists entirely of characters not in REJECT.  */
extern size_t strcspn (const char *__s, const char *__reject)
     __attribute__ ((__nothrow__ )) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));
/* Return the length of the initial segment of S which
   consists entirely of characters in ACCEPT.  */
extern size_t strspn (const char *__s, const char *__accept)
     __attribute__ ((__nothrow__ )) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));
/* Find the first occurrence in S of any character in ACCEPT.  */
#pragma line 310 "/usr/include/string.h" 3 4
extern char *strpbrk (const char *__s, const char *__accept)
     __attribute__ ((__nothrow__ )) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));
#pragma empty_line
/* Find the first occurrence of NEEDLE in HAYSTACK.  */
#pragma line 337 "/usr/include/string.h" 3 4
extern char *strstr (const char *__haystack, const char *__needle)
     __attribute__ ((__nothrow__ )) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));
#pragma empty_line
#pragma empty_line
#pragma empty_line
/* Divide S into tokens separated by characters in DELIM.  */
extern char *strtok (char *__restrict __s, const char *__restrict __delim)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (2)));
#pragma empty_line
#pragma empty_line
/* Divide S into tokens separated by characters in DELIM.  Information
   passed between calls are stored in SAVE_PTR.  */
extern char *__strtok_r (char *__restrict __s,
    const char *__restrict __delim,
    char **__restrict __save_ptr)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (2, 3)));
#pragma empty_line
extern char *strtok_r (char *__restrict __s, const char *__restrict __delim,
         char **__restrict __save_ptr)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (2, 3)));
#pragma line 393 "/usr/include/string.h" 3 4
/* Return the length of S.  */
extern size_t strlen (const char *__s)
     __attribute__ ((__nothrow__ )) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1)));
#pragma empty_line
#pragma empty_line
#pragma empty_line
/* Find the length of STRING, but scan at most MAXLEN characters.
   If no '\0' terminator is found in that many characters, return MAXLEN.  */
extern size_t strnlen (const char *__string, size_t __maxlen)
     __attribute__ ((__nothrow__ )) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1)));
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
/* Return a string describing the meaning of the `errno' code in ERRNUM.  */
extern char *strerror (int __errnum) __attribute__ ((__nothrow__ ));
#pragma empty_line
#pragma empty_line
/* Reentrant version of `strerror'.
   There are 2 flavors of `strerror_r', GNU which returns the string
   and may or may not use the supplied temporary buffer and POSIX one
   which fills the string into the buffer.
   To use the POSIX version, -D_XOPEN_SOURCE=600 or -D_POSIX_C_SOURCE=200112L
   without -D_GNU_SOURCE is needed, otherwise the GNU version is
   preferred.  */
#pragma empty_line
/* Fill BUF with a string describing the meaning of the `errno' code in
   ERRNUM.  */
#pragma empty_line
extern int strerror_r (int __errnum, char *__buf, size_t __buflen) __asm__ ("" "__xpg_strerror_r") __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (2)));
#pragma line 439 "/usr/include/string.h" 3 4
/* Translate error number to string according to the locale L.  */
extern char *strerror_l (int __errnum, __locale_t __l) __attribute__ ((__nothrow__ ));
#pragma empty_line
#pragma empty_line
#pragma empty_line
/* We define this function always since `bzero' is sometimes needed when
   the namespace rules does not allow this.  */
extern void __bzero (void *__s, size_t __n) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));
#pragma empty_line
#pragma empty_line
/* Copy N bytes of SRC to DEST (like memmove, but args reversed).  */
extern void bcopy (const void *__src, void *__dest, size_t __n)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));
#pragma empty_line
/* Set N bytes of S to 0.  */
extern void bzero (void *__s, size_t __n) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));
#pragma empty_line
/* Compare N bytes of S1 and S2 (same as memcmp).  */
extern int bcmp (const void *__s1, const void *__s2, size_t __n)
     __attribute__ ((__nothrow__ )) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));
#pragma empty_line
/* Find the first occurrence of C in S (same as strchr).  */
#pragma line 484 "/usr/include/string.h" 3 4
extern char *index (const char *__s, int __c)
     __attribute__ ((__nothrow__ )) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1)));
#pragma empty_line
#pragma empty_line
/* Find the last occurrence of C in S (same as strrchr).  */
#pragma line 512 "/usr/include/string.h" 3 4
extern char *rindex (const char *__s, int __c)
     __attribute__ ((__nothrow__ )) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1)));
#pragma empty_line
#pragma empty_line
/* Return the position of the first bit set in I, or 0 if none are set.
   The least-significant bit is position 1, the most-significant 32.  */
extern int ffs (int __i) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));
#pragma empty_line
/* The following two functions are non-standard but necessary for non-32 bit
   platforms.  */
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
/* Compare S1 and S2, ignoring case.  */
extern int strcasecmp (const char *__s1, const char *__s2)
     __attribute__ ((__nothrow__ )) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));
#pragma empty_line
/* Compare no more than N chars of S1 and S2, ignoring case.  */
extern int strncasecmp (const char *__s1, const char *__s2, size_t __n)
     __attribute__ ((__nothrow__ )) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));
#pragma line 550 "/usr/include/string.h" 3 4
/* Return the next DELIM-delimited token from *STRINGP,
   terminating it with a '\0', and update *STRINGP to point past it.  */
extern char *strsep (char **__restrict __stringp,
       const char *__restrict __delim)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));
#pragma empty_line
#pragma empty_line
#pragma empty_line
/* Return a string describing the meaning of the signal number in SIG.  */
extern char *strsignal (int __sig) __attribute__ ((__nothrow__ ));
#pragma empty_line
/* Copy SRC to DEST, returning the address of the terminating '\0' in DEST.  */
extern char *__stpcpy (char *__restrict __dest, const char *__restrict __src)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));
extern char *stpcpy (char *__restrict __dest, const char *__restrict __src)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));
#pragma empty_line
/* Copy no more than N characters of SRC to DEST, returning the address of
   the last character written into DEST.  */
extern char *__stpncpy (char *__restrict __dest,
   const char *__restrict __src, size_t __n)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));
extern char *stpncpy (char *__restrict __dest,
        const char *__restrict __src, size_t __n)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));
#pragma line 2 "ed25519_ref/src/sign.c" 2
#pragma line 1 "ed25519_ref/src/crypto_sign.h" 1
///*
// * File:   lattisigns512-20130329/crypto_sign.h
// * Author: Gim Güneysu, Tobias Oder, Thomas Pöppelmann, Peter Schwabe
// * Public Domain
// */
//
//#include "api.h"
//
//extern int crypto_sign_keypair(
//    unsigned char *,
//    unsigned char *
//    );
//
//extern int crypto_sign(
//    unsigned char *,unsigned long long *,
//    const unsigned char *,unsigned long long,
//    const unsigned char *
//    );
//
//extern int crypto_sign_open(
//    unsigned char *,unsigned long long *,
//    const unsigned char *,unsigned long long,
//    const unsigned char *
//    );
//
//int crypto_sign_open_batch(
//    unsigned char* const m[],unsigned long long mlen[],
//    unsigned char* const sm[],const unsigned long long smlen[],
//    unsigned char* const pk[],
//    unsigned long long batchsize
//    );
//
//#define crypto_sign_SECRETKEYBYTES CRYPTO_SECRETKEYBYTES
//#define crypto_sign_PUBLICKEYBYTES CRYPTO_PUBLICKEYBYTES
//#define crypto_sign_BYTES CRYPTO_BYTES
#pragma line 3 "ed25519_ref/src/sign.c" 2
//#include "crypto_hash_sha512.h"
#pragma empty_line
#pragma line 1 "ed25519_ref/src/sha512.h" 1
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
#pragma line 56 "/Xilinx/Vivado_HLS/2017.1/lnx64/tools/clang/bin/../lib/clang/3.1/include/stddef.h" 3
/* Some C libraries expect to see a wint_t here. Others (notably MinGW) will use
__WINT_TYPE__ directly; accommodate both by requiring __need_wint_t */
#pragma line 5 "ed25519_ref/src/sha512.h" 2
#pragma empty_line
#pragma line 1 "ed25519_ref/src/fixedint.h" 1
/*
    Portable header to provide the 32 and 64 bits type.
#pragma empty_line
    Not a compatible replacement for <stdint.h>, do not blindly use it as such.
*/
#pragma line 21 "ed25519_ref/src/fixedint.h"
#pragma line 1 "/Xilinx/Vivado_HLS/2017.1/lnx64/tools/clang/bin/../lib/clang/3.1/include/limits.h" 1 3
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
#pragma line 95 "/usr/include/x86_64-linux-gnu/bits/posix1_lim.h" 3 4
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
#pragma line 155 "/usr/include/x86_64-linux-gnu/bits/posix1_lim.h" 3 4
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
#pragma line 39 "/Xilinx/Vivado_HLS/2017.1/lnx64/tools/clang/bin/../lib/clang/3.1/include/limits.h" 2 3
#pragma empty_line
#pragma empty_line
/* Many system headers try to "help us out" by defining these.  No really, we
   know how big each datatype is. */
#pragma line 60 "/Xilinx/Vivado_HLS/2017.1/lnx64/tools/clang/bin/../lib/clang/3.1/include/limits.h" 3
/* C90/99 5.2.4.2.1 */
#pragma line 90 "/Xilinx/Vivado_HLS/2017.1/lnx64/tools/clang/bin/../lib/clang/3.1/include/limits.h" 3
/* C99 5.2.4.2.1: Added long long. */
#pragma line 102 "/Xilinx/Vivado_HLS/2017.1/lnx64/tools/clang/bin/../lib/clang/3.1/include/limits.h" 3
/* LONG_LONG_MIN/LONG_LONG_MAX/ULONG_LONG_MAX are a GNU extension.  It's too bad
   that we don't have something like #pragma poison that could be used to
   deprecate a macro - the code should just use LLONG_MAX and friends.
 */
#pragma line 22 "ed25519_ref/src/fixedint.h" 2
#pragma empty_line
    /* (u)int32_t */
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
            typedef unsigned int uint32_t;
#pragma line 39 "ed25519_ref/src/fixedint.h"
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
#pragma line 7 "ed25519_ref/src/sha512.h" 2
#pragma empty_line
#pragma empty_line
#pragma empty_line
/* state */
typedef struct sha512_context_ {
    uint64_t length, state[8];
    size_t curlen;
    unsigned char buf[128];
} sha512_context;
#pragma empty_line
#pragma empty_line
int sha512_init(sha512_context * md);
int sha512_final(sha512_context * md, unsigned char *out);
int sha512_update(sha512_context * md, const unsigned char *in, size_t inlen);
int sha512_update_32(sha512_context * md, const unsigned char *in);
int sha512_update_128(sha512_context * md, const unsigned char *in);
int sha512(const unsigned char *message, size_t message_len, unsigned char *out);
//int crypto_hash_sha512(unsigned char *out, unsigned char *in, unsigned int len);
#pragma line 5 "ed25519_ref/src/sign.c" 2
#pragma line 1 "ed25519_ref/src/ge25519.h" 1
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma line 1 "ed25519_ref/src/fe25519.h" 1
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma line 1 "ed25519_ref/src/crypto_int32.h" 1
#pragma empty_line
#pragma empty_line
#pragma empty_line
typedef int crypto_int32;
#pragma line 5 "ed25519_ref/src/fe25519.h" 2
#pragma line 1 "ed25519_ref/src/crypto_uint32.h" 1
#pragma empty_line
#pragma empty_line
#pragma empty_line
typedef unsigned int crypto_uint32;
#pragma line 6 "ed25519_ref/src/fe25519.h" 2
#pragma line 25 "ed25519_ref/src/fe25519.h"
typedef struct
{
  crypto_uint32 v[32];
}
crypto_sign_ed25519_ref_fe25519;
#pragma empty_line
void crypto_sign_ed25519_ref_fe25519_freeze(crypto_sign_ed25519_ref_fe25519 *r);
#pragma empty_line
void crypto_sign_ed25519_ref_fe25519_unpack(crypto_sign_ed25519_ref_fe25519 *r, const unsigned char x[32]);
#pragma empty_line
void crypto_sign_ed25519_ref_fe25519_pack(unsigned char r[32], const crypto_sign_ed25519_ref_fe25519 *x);
#pragma empty_line
int crypto_sign_ed25519_ref_fe25519_iszero(const crypto_sign_ed25519_ref_fe25519 *x);
#pragma empty_line
int crypto_sign_ed25519_ref_fe25519_iseq_vartime(const crypto_sign_ed25519_ref_fe25519 *x, const crypto_sign_ed25519_ref_fe25519 *y);
#pragma empty_line
void crypto_sign_ed25519_ref_fe25519_cmov(crypto_sign_ed25519_ref_fe25519 *r, const crypto_sign_ed25519_ref_fe25519 *x, unsigned char b);
#pragma empty_line
void crypto_sign_ed25519_ref_fe25519_setone(crypto_sign_ed25519_ref_fe25519 *r);
#pragma empty_line
void crypto_sign_ed25519_ref_fe25519_setzero(crypto_sign_ed25519_ref_fe25519 *r);
#pragma empty_line
void crypto_sign_ed25519_ref_fe25519_neg(crypto_sign_ed25519_ref_fe25519 *r, const crypto_sign_ed25519_ref_fe25519 *x);
#pragma empty_line
unsigned char crypto_sign_ed25519_ref_fe25519_getparity(const crypto_sign_ed25519_ref_fe25519 *x);
#pragma empty_line
void crypto_sign_ed25519_ref_fe25519_add(crypto_sign_ed25519_ref_fe25519 *r, const crypto_sign_ed25519_ref_fe25519 *x, const crypto_sign_ed25519_ref_fe25519 *y);
#pragma empty_line
void crypto_sign_ed25519_ref_fe25519_sub(crypto_sign_ed25519_ref_fe25519 *r, const crypto_sign_ed25519_ref_fe25519 *x, const crypto_sign_ed25519_ref_fe25519 *y);
#pragma empty_line
void crypto_sign_ed25519_ref_fe25519_mul(crypto_sign_ed25519_ref_fe25519 *r, const crypto_sign_ed25519_ref_fe25519 *x, const crypto_sign_ed25519_ref_fe25519 *y);
#pragma empty_line
void crypto_sign_ed25519_ref_fe25519_square(crypto_sign_ed25519_ref_fe25519 *r, const crypto_sign_ed25519_ref_fe25519 *x);
#pragma empty_line
void crypto_sign_ed25519_ref_fe25519_invert(crypto_sign_ed25519_ref_fe25519 *r, const crypto_sign_ed25519_ref_fe25519 *x);
#pragma empty_line
void crypto_sign_ed25519_ref_fe25519_pow2523(crypto_sign_ed25519_ref_fe25519 *r, const crypto_sign_ed25519_ref_fe25519 *x);
#pragma line 5 "ed25519_ref/src/ge25519.h" 2
#pragma line 1 "ed25519_ref/src/sc25519.h" 1
#pragma line 25 "ed25519_ref/src/sc25519.h"
typedef struct
{
  crypto_uint32 v[32];
}
crypto_sign_ed25519_ref_sc25519;
#pragma empty_line
typedef struct
{
  crypto_uint32 v[16];
}
crypto_sign_ed25519_ref_shortsc25519;
#pragma empty_line
void crypto_sign_ed25519_ref_sc25519_from32bytes(crypto_sign_ed25519_ref_sc25519 *r, const unsigned char x[32]);
#pragma empty_line
void crypto_sign_ed25519_ref_shortsc25519_from16bytes(crypto_sign_ed25519_ref_shortsc25519 *r, const unsigned char x[16]);
#pragma empty_line
void crypto_sign_ed25519_ref_sc25519_from64bytes(crypto_sign_ed25519_ref_sc25519 *r, const unsigned char x[64]);
#pragma empty_line
void crypto_sign_ed25519_ref_sc25519_from_shortsc(crypto_sign_ed25519_ref_sc25519 *r, const crypto_sign_ed25519_ref_shortsc25519 *x);
#pragma empty_line
void crypto_sign_ed25519_ref_sc25519_to32bytes(unsigned char r[32], const crypto_sign_ed25519_ref_sc25519 *x);
#pragma empty_line
int crypto_sign_ed25519_ref_sc25519_iszero_vartime(const crypto_sign_ed25519_ref_sc25519 *x);
#pragma empty_line
int crypto_sign_ed25519_ref_sc25519_isshort_vartime(const crypto_sign_ed25519_ref_sc25519 *x);
#pragma empty_line
int crypto_sign_ed25519_ref_sc25519_lt_vartime(const crypto_sign_ed25519_ref_sc25519 *x, const crypto_sign_ed25519_ref_sc25519 *y);
#pragma empty_line
void crypto_sign_ed25519_ref_sc25519_add(crypto_sign_ed25519_ref_sc25519 *r, const crypto_sign_ed25519_ref_sc25519 *x, const crypto_sign_ed25519_ref_sc25519 *y);
#pragma empty_line
void crypto_sign_ed25519_ref_sc25519_sub_nored(crypto_sign_ed25519_ref_sc25519 *r, const crypto_sign_ed25519_ref_sc25519 *x, const crypto_sign_ed25519_ref_sc25519 *y);
#pragma empty_line
void crypto_sign_ed25519_ref_sc25519_mul(crypto_sign_ed25519_ref_sc25519 *r, const crypto_sign_ed25519_ref_sc25519 *x, const crypto_sign_ed25519_ref_sc25519 *y);
#pragma empty_line
void crypto_sign_ed25519_ref_sc25519_mul_shortsc(crypto_sign_ed25519_ref_sc25519 *r, const crypto_sign_ed25519_ref_sc25519 *x, const crypto_sign_ed25519_ref_shortsc25519 *y);
#pragma empty_line
/* Convert s into a representation of the form \sum_{i=0}^{84}r[i]2^3
 * with r[i] in {-4,...,3}
 */
void crypto_sign_ed25519_ref_sc25519_window3(signed char r[85], const crypto_sign_ed25519_ref_sc25519 *s);
#pragma empty_line
/* Convert s into a representation of the form \sum_{i=0}^{50}r[i]2^5
 * with r[i] in {-16,...,15}
 */
void crypto_sign_ed25519_ref_sc25519_window5(signed char r[51], const crypto_sign_ed25519_ref_sc25519 *s);
#pragma empty_line
void crypto_sign_ed25519_ref_sc25519_2interleave2(unsigned char r[127], const crypto_sign_ed25519_ref_sc25519 *s1, const crypto_sign_ed25519_ref_sc25519 *s2);
#pragma line 6 "ed25519_ref/src/ge25519.h" 2
#pragma line 15 "ed25519_ref/src/ge25519.h"
typedef struct
{
  crypto_sign_ed25519_ref_fe25519 x;
  crypto_sign_ed25519_ref_fe25519 y;
  crypto_sign_ed25519_ref_fe25519 z;
  crypto_sign_ed25519_ref_fe25519 t;
} crypto_sign_ed25519_ref_ge25519;
#pragma empty_line
const crypto_sign_ed25519_ref_ge25519 crypto_sign_ed25519_ref_ge25519_base;
#pragma empty_line
int crypto_sign_ed25519_ref_unpackneg_vartime(crypto_sign_ed25519_ref_ge25519 *r, const unsigned char p[32]);
#pragma empty_line
void crypto_sign_ed25519_ref_pack(unsigned char r[32], const crypto_sign_ed25519_ref_ge25519 *p);
#pragma empty_line
int crypto_sign_ed25519_ref_isneutral_vartime(const crypto_sign_ed25519_ref_ge25519 *p);
#pragma empty_line
void crypto_sign_ed25519_ref_double_scalarmult_vartime(crypto_sign_ed25519_ref_ge25519 *r, const crypto_sign_ed25519_ref_ge25519 *p1, const crypto_sign_ed25519_ref_sc25519 *s1, const crypto_sign_ed25519_ref_ge25519 *p2, const crypto_sign_ed25519_ref_sc25519 *s2);
#pragma empty_line
void crypto_sign_ed25519_ref_scalarmult_base(crypto_sign_ed25519_ref_ge25519 *r, const crypto_sign_ed25519_ref_sc25519 *s);
#pragma line 6 "ed25519_ref/src/sign.c" 2
#pragma empty_line
#pragma empty_line
#pragma empty_line
//int crypto_hash_sha512(unsigned char *out, unsigned char *in, unsigned int len){
//	return sha512(in, len, out);
//}
#pragma empty_line
void _memcpy(unsigned char* dst, unsigned char* src, unsigned int len){
 int i;
 for(i=0; i<len; i++){
  dst[i] = src[i];
 }
}
#pragma empty_line
//void _memcpy_char(unsigned char* dst, unsigned char* src, unsigned int len){
//	int i;
//	for(i=0; i<len; i++){
//		dst[i] = src[i];
//	}
//}
#pragma empty_line
void _memset(unsigned char* dst, unsigned char val, unsigned int len){
 int i;
 for(i=0; i<len; i++){
  dst[i] = val;
 }
}
#pragma empty_line
void _memmove(unsigned char *dst, unsigned char *src, unsigned int len){
 _memcpy(dst, src, len);
}
#pragma empty_line
//int crypto_sign(
//    unsigned char *sm,unsigned long long *smlen,
//    const unsigned char *m,unsigned long long mlen,
//    const unsigned char *sk
//    )
//int crypto_sign(
//    unsigned char sm[192],
//    const unsigned char m[128],
//    const unsigned char sk[64]
//    )
int crypto_sign(
  unsigned char mem[32768],
  unsigned int num_blocks,
  unsigned char sk[64],
  unsigned char signature_out[64]
  )
{_ssdm_SpecArrayDimSize(mem,32768);_ssdm_SpecArrayDimSize(sk,64);_ssdm_SpecArrayDimSize(signature_out,64);
#pragma HLS INTERFACE s_axilite port=return
#pragma HLS INTERFACE s_axilite port=signature_out
#pragma HLS INTERFACE s_axilite port=sk
#pragma HLS INTERFACE s_axilite port=num_blocks
#pragma HLS INTERFACE m_axi depth=32768 port=mem
#pragma HLS ALLOCATION instances=sha512_update_32 limit=1 function
#pragma HLS ALLOCATION instances=sha512_update_128 limit=1 function
#pragma HLS ALLOCATION instances=sha512_final limit=1 function
#pragma HLS ALLOCATION instances=sha512_init limit=1 function
#pragma HLS ALLOCATION instances=_memmove limit=1 function
 unsigned char pk[32];
  unsigned char az[64];
  unsigned char nonce[64];
  unsigned char hram[64];
  unsigned long long mlen=128;
  unsigned char signature[64] = {0};
  unsigned char temp_buf[128];
  int i, j;
  crypto_sign_ed25519_ref_sc25519 sck, scs, scsk;
  crypto_sign_ed25519_ref_ge25519 ger;
  sha512_context hash;
#pragma empty_line
//  memmove(pk,sk + 32,32);
  _memmove(pk,sk + 32,32);
  /* pk: 32-byte public key A */
#pragma empty_line
//  crypto_hash_sha512(az,sk,32);
  sha512_init(&hash);
  sha512_update_32(&hash, sk);
  sha512_final(&hash, az);
#pragma empty_line
  az[0] &= 248;
  az[31] &= 127;
  az[31] |= 64;
  /* az: 32-byte scalar a, 32-byte randomizer z */
#pragma empty_line
//  *smlen = mlen + 64;
//  memmove(sm + 64,m,mlen);
//  memmove(sm + 32,az + 32,32);
//  _memmove(sm + 64,m,mlen);
//  _memmove(sm + 32,az + 32,32);
  _memmove(signature + 32,az + 32,32);
  /* sm: 32-byte uninit, 32-byte z, mlen-byte m */
#pragma empty_line
//  crypto_hash_sha512(nonce, sm+32, mlen+32);
  sha512_init(&hash);
//  sha512_update_128(&hash, sm+32);
  sha512_update_32(&hash, signature+32);
//  sha512_update_128(&hash, m);
  for(i=0; i<num_blocks; i++){
//	  _memcpy(temp_buf, mem + 128*i, 128);
   for(j=0; j<128; j++){
    temp_buf[j] = mem[128*i + j];
   }
   sha512_update_128(&hash, temp_buf);
  }
  sha512_final(&hash, nonce);
  /* nonce: 64-byte H(z,m) */
#pragma empty_line
  crypto_sign_ed25519_ref_sc25519_from64bytes(&sck, nonce);
  crypto_sign_ed25519_ref_scalarmult_base(&ger, &sck);
//  ge25519_pack(sm, &ger);
  crypto_sign_ed25519_ref_pack(signature, &ger);
  /* sm: 32-byte R, 32-byte z, mlen-byte m */
#pragma empty_line
//  memmove(sm + 32,pk,32);
//  _memmove(sm + 32,pk,32);
  _memmove(signature + 32, pk, 32);
  /* sm: 32-byte R, 32-byte A, mlen-byte m */
#pragma empty_line
//  crypto_hash_sha512(hram,sm,mlen + 64);
  sha512_init(&hash);
  sha512_update_32(&hash, signature);
  sha512_update_32(&hash, signature + 32);
//  sha512_update_128(&hash, m);
  for(i=0; i<num_blocks; i++){
//	_memcpy(temp_buf, mem + 128*i, 128);
    for(j=0; j<128; j++){
      temp_buf[j] = mem[128*i + j];
    }
 sha512_update_128(&hash, temp_buf);
  }
  sha512_final(&hash, hram);
#pragma empty_line
  /* hram: 64-byte H(R,A,m) */
#pragma empty_line
  crypto_sign_ed25519_ref_sc25519_from64bytes(&scs, hram);
  crypto_sign_ed25519_ref_sc25519_from32bytes(&scsk, az);
  crypto_sign_ed25519_ref_sc25519_mul(&scs, &scs, &scsk);
  crypto_sign_ed25519_ref_sc25519_add(&scs, &scs, &sck);
  /* scs: S = nonce + H(R,A,m)a */
#pragma empty_line
//  sc25519_to32bytes(sm + 32,&scs);
  crypto_sign_ed25519_ref_sc25519_to32bytes(signature + 32,&scs);
  /* sm: 32-byte R, 32-byte S, mlen-byte m */
#pragma empty_line
//  _memcpy(sm, signature, 64);
//  _memcpy(sm + 32, , 32);
//  _memcpy(sm + 64, m, 128);
  _memcpy(signature_out, signature, 64);
  return 0;
}
