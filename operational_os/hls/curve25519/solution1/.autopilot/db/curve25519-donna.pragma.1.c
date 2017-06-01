#1 "curve25519/src/curve25519-donna.c"
#1 "curve25519/src/curve25519-donna.c" 1
#1 "<built-in>" 1
#1 "<built-in>" 3
#149 "<built-in>" 3
#1 "<command line>" 1




#1 "/Xilinx/Vivado_HLS/2017.1/common/technology/autopilot/etc/autopilot_ssdm_op.h" 1
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
#289 "/Xilinx/Vivado_HLS/2017.1/common/technology/autopilot/etc/autopilot_ssdm_op.h"
/*#define AP_SPEC_ATTR __attribute__ ((pure))*/



    /****** SSDM Intrinsics: OPERATIONS ***/
    // Interface operations
    //typedef unsigned int __attribute__ ((bitwidth(1))) _uint1_;
    void _ssdm_op_IfRead() __attribute__ ((nothrow));
    void _ssdm_op_IfWrite() __attribute__ ((nothrow));
    //_uint1_ _ssdm_op_IfNbRead() SSDM_OP_ATTR;
    //_uint1_ _ssdm_op_IfNbWrite() SSDM_OP_ATTR;
    //_uint1_ _ssdm_op_IfCanRead() SSDM_OP_ATTR;
    //_uint1_ _ssdm_op_IfCanWrite() SSDM_OP_ATTR;

    // Stream Intrinsics
    void _ssdm_StreamRead() __attribute__ ((nothrow));
    void _ssdm_StreamWrite() __attribute__ ((nothrow));
    //_uint1_  _ssdm_StreamNbRead() SSDM_OP_ATTR;
    //_uint1_  _ssdm_StreamNbWrite() SSDM_OP_ATTR;
    //_uint1_  _ssdm_StreamCanRead() SSDM_OP_ATTR;
    //_uint1_  _ssdm_StreamCanWrite() SSDM_OP_ATTR;

    // Misc
    void _ssdm_op_MemShiftRead() __attribute__ ((nothrow));

    void _ssdm_op_Wait() __attribute__ ((nothrow));
    void _ssdm_op_Poll() __attribute__ ((nothrow));

    void _ssdm_op_Return() __attribute__ ((nothrow));

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

    void _ssdm_op_SpecReset() __attribute__ ((nothrow));

    void _ssdm_op_SpecPlatform() __attribute__ ((nothrow));
    void _ssdm_op_SpecClockDomain() __attribute__ ((nothrow));
    void _ssdm_op_SpecPowerDomain() __attribute__ ((nothrow));

    int _ssdm_op_SpecRegionBegin() __attribute__ ((nothrow));
    int _ssdm_op_SpecRegionEnd() __attribute__ ((nothrow));

    void _ssdm_op_SpecLoopName() __attribute__ ((nothrow));

    void _ssdm_op_SpecLoopTripCount() __attribute__ ((nothrow));

    int _ssdm_op_SpecStateBegin() __attribute__ ((nothrow));
    int _ssdm_op_SpecStateEnd() __attribute__ ((nothrow));

    void _ssdm_op_SpecInterface() __attribute__ ((nothrow));

    void _ssdm_op_SpecPipeline() __attribute__ ((nothrow));
    void _ssdm_op_SpecDataflowPipeline() __attribute__ ((nothrow));


    void _ssdm_op_SpecLatency() __attribute__ ((nothrow));
    void _ssdm_op_SpecParallel() __attribute__ ((nothrow));
    void _ssdm_op_SpecProtocol() __attribute__ ((nothrow));
    void _ssdm_op_SpecOccurrence() __attribute__ ((nothrow));

    void _ssdm_op_SpecResource() __attribute__ ((nothrow));
    void _ssdm_op_SpecResourceLimit() __attribute__ ((nothrow));
    void _ssdm_op_SpecCHCore() __attribute__ ((nothrow));
    void _ssdm_op_SpecFUCore() __attribute__ ((nothrow));
    void _ssdm_op_SpecIFCore() __attribute__ ((nothrow));
    void _ssdm_op_SpecIPCore() __attribute__ ((nothrow));
    void _ssdm_op_SpecKeepValue() __attribute__ ((nothrow));
    void _ssdm_op_SpecMemCore() __attribute__ ((nothrow));

    void _ssdm_op_SpecExt() __attribute__ ((nothrow));
    /*void* _ssdm_op_SpecProcess() SSDM_SPEC_ATTR;
    void* _ssdm_op_SpecEdge() SSDM_SPEC_ATTR; */

    /* Presynthesis directive functions */
    void _ssdm_SpecArrayDimSize() __attribute__ ((nothrow));

    void _ssdm_RegionBegin() __attribute__ ((nothrow));
    void _ssdm_RegionEnd() __attribute__ ((nothrow));

    void _ssdm_Unroll() __attribute__ ((nothrow));
    void _ssdm_UnrollRegion() __attribute__ ((nothrow));

    void _ssdm_InlineAll() __attribute__ ((nothrow));
    void _ssdm_InlineLoop() __attribute__ ((nothrow));
    void _ssdm_Inline() __attribute__ ((nothrow));
    void _ssdm_InlineSelf() __attribute__ ((nothrow));
    void _ssdm_InlineRegion() __attribute__ ((nothrow));

    void _ssdm_SpecArrayMap() __attribute__ ((nothrow));
    void _ssdm_SpecArrayPartition() __attribute__ ((nothrow));
    void _ssdm_SpecArrayReshape() __attribute__ ((nothrow));

    void _ssdm_SpecStream() __attribute__ ((nothrow));

    void _ssdm_SpecExpr() __attribute__ ((nothrow));
    void _ssdm_SpecExprBalance() __attribute__ ((nothrow));

    void _ssdm_SpecDependence() __attribute__ ((nothrow));

    void _ssdm_SpecLoopMerge() __attribute__ ((nothrow));
    void _ssdm_SpecLoopFlatten() __attribute__ ((nothrow));
    void _ssdm_SpecLoopRewind() __attribute__ ((nothrow));

    void _ssdm_SpecFuncInstantiation() __attribute__ ((nothrow));
    void _ssdm_SpecFuncBuffer() __attribute__ ((nothrow));
    void _ssdm_SpecFuncExtract() __attribute__ ((nothrow));
    void _ssdm_SpecConstant() __attribute__ ((nothrow));

    void _ssdm_DataPack() __attribute__ ((nothrow));
    void _ssdm_SpecDataPack() __attribute__ ((nothrow));

    void _ssdm_op_SpecBitsMap() __attribute__ ((nothrow));
    void _ssdm_op_SpecLicense() __attribute__ ((nothrow));


/*#define _ssdm_op_WaitUntil(X) while (!(X)) _ssdm_op_Wait(1);
#define _ssdm_op_Delayed(X) X */
#427 "/Xilinx/Vivado_HLS/2017.1/common/technology/autopilot/etc/autopilot_ssdm_op.h"
// 67d7842dbbe25473c3c32b93c0da8047785f30d78e8a024de1b57352245f9689
#6 "<command line>" 2
#1 "<built-in>" 2
#1 "curve25519/src/curve25519-donna.c" 2
/* Copyright 2008, Google Inc.
 * All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions are
 * met:
 *
 *     * Redistributions of source code must retain the above copyright
 * notice, this list of conditions and the following disclaimer.
 *     * Redistributions in binary form must reproduce the above
 * copyright notice, this list of conditions and the following disclaimer
 * in the documentation and/or other materials provided with the
 * distribution.
 *     * Neither the name of Google Inc. nor the names of its
 * contributors may be used to endorse or promote products derived from
 * this software without specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
 * "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
 * LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
 * A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT
 * OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
 * SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT
 * LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
 * DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY
 * THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
 * (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
 * OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 *
 * curve25519-donna: Curve25519 elliptic curve, public key function
 *
 * http://code.google.com/p/curve25519-donna/
 *
 * Adam Langley <agl@imperialviolet.org>
 *
 * Derived from public domain C code by Daniel J. Bernstein <djb@cr.yp.to>
 *
 * More information about curve25519 can be found here
 *   http://cr.yp.to/ecdh.html
 *
 * djb's sample implementation of curve25519 is written in a special assembly
 * language called qhasm and uses the floating point registers.
 *
 * This is, almost, a clean room reimplementation from the curve25519 paper. It
 * uses many of the tricks described therein. Only the crecip function is taken
 * from the sample implementation. */


#1 "/usr/include/string.h" 1 3 4
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
 *	ISO C99 Standard: 7.21 String handling	<string.h>
 */





#1 "/usr/include/features.h" 1 3 4
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
#122 "/usr/include/features.h" 3 4
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
#177 "/usr/include/features.h" 3 4
/* If nothing (other than _GNU_SOURCE and _DEFAULT_SOURCE) is defined,
   define _DEFAULT_SOURCE.  */
#188 "/usr/include/features.h" 3 4
/* This is to enable the ISO C11 extension.  */





/* This is to enable the ISO C99 extension.  */





/* This is to enable the ISO C90 Amendment 1:1995 extension.  */





/* This is to enable compatibility for ISO C++11.

   So far g++ does not provide a macro.  Check the temporary macro for
   now, too.  */





/* If none of the ANSI/POSIX macros are defined, or if _DEFAULT_SOURCE
   is defined, use POSIX.1-2008 (or another version depending on
   _XOPEN_SOURCE).  */
#340 "/usr/include/features.h" 3 4
/* Get definitions of __STDC_* predefined macros, if the compiler has
   not preincluded this header automatically.  */

#1 "/usr/include/stdc-predef.h" 1 3 4
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
#52 "/usr/include/stdc-predef.h" 3 4
/* wchar_t uses Unicode 9.0.0.  Version 9.0 of the Unicode Standard is
   synchronized with ISO/IEC 10646:2014, fourth edition, plus
   Amd. 1  and Amd. 2 and 273 characters from forthcoming  10646, fifth edition.
   (Amd. 2 was published 2016-05-01,
   see https://www.iso.org/obp/ui/#iso:std:iso-iec:10646:ed-4:v1:amd:2:v1:en) */


/* We do not support C11 <threads.h>.  */
#343 "/usr/include/features.h" 2 3 4

/* This macro indicates that the installed library is the GNU C Library.
   For historic reasons the value now is 6 and this will stay from now
   on.  The use of this variable is deprecated.  Use __GLIBC__ and
   __GLIBC_MINOR__ now (see below) when you want to test for a specific
   GNU C library version and use the values in <gnu/lib-names.h> to get
   the sonames of the shared libraries.  */



/* Major and minor version number of the GNU C library package.  Use
   these macros to test for features in specific releases.  */






/* This is here only because every header file already includes this one.  */



#1 "/usr/include/x86_64-linux-gnu/sys/cdefs.h" 1 3 4
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
#49 "/usr/include/x86_64-linux-gnu/sys/cdefs.h" 3 4
/* GCC can always grok prototypes.  For C++ programs we add throw()
   to help it optimize the function calls.  But this works only with
   gcc 2.8.x and egcs.  For gcc 3.2 and up we even mark C functions
   as non-throwing using a function attribute since programs can use
   the -fexceptions options for C code as well.  */
#80 "/usr/include/x86_64-linux-gnu/sys/cdefs.h" 3 4
/* These two macros are not used in glibc anymore.  They are kept here
   only because some other projects expect the macros to be defined.  */



/* For these things, GCC behaves the ANSI way normally,
   and the non-ANSI way under -traditional.  */




/* This is not a typedef so `const __ptr_t' does the right thing.  */




/* C++ needs to know that types and declarations are C, not C++.  */
#106 "/usr/include/x86_64-linux-gnu/sys/cdefs.h" 3 4
/* The standard library needs the functions from the ISO C90 standard
   in the std namespace.  At the same time we want to be safe for
   future changes and we include the ISO C99 code in the non-standard
   namespace __c99.  The C++ wrapper header take case of adding the
   definitions to the global namespace.  */
#119 "/usr/include/x86_64-linux-gnu/sys/cdefs.h" 3 4
/* For compatibility we do not add the declarations into any
   namespace.  They will end up in the global namespace which is what
   old code expects.  */
#131 "/usr/include/x86_64-linux-gnu/sys/cdefs.h" 3 4
/* Fortify support.  */
#147 "/usr/include/x86_64-linux-gnu/sys/cdefs.h" 3 4
/* Support for flexible arrays.  */

/* GCC 2.97 supports C99 flexible array members.  */
#165 "/usr/include/x86_64-linux-gnu/sys/cdefs.h" 3 4
/* __asm__ ("xyz") is used throughout the headers to rename functions
   at the assembly language level.  This is wrapped by the __REDIRECT
   macro, in order to support compilers that can do this some other
   way.  When compilers don't support asm-names at all, we have to do
   preprocessor tricks instead (which don't have exactly the right
   semantics, but it's the best we can do).

   Example:
   int __REDIRECT(setpgrp, (__pid_t pid, __pid_t pgrp), setpgid); */
#192 "/usr/include/x86_64-linux-gnu/sys/cdefs.h" 3 4
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
#252 "/usr/include/x86_64-linux-gnu/sys/cdefs.h" 3 4
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
#305 "/usr/include/x86_64-linux-gnu/sys/cdefs.h" 3 4
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
#351 "/usr/include/x86_64-linux-gnu/sys/cdefs.h" 3 4
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
#415 "/usr/include/x86_64-linux-gnu/sys/cdefs.h" 3 4
#1 "/usr/include/x86_64-linux-gnu/bits/wordsize.h" 1 3 4
/* Determine the wordsize from the preprocessor defines.  */
#11 "/usr/include/x86_64-linux-gnu/bits/wordsize.h" 3 4
/* Both x86-64 and x32 use the 64-bit system call interface.  */
#416 "/usr/include/x86_64-linux-gnu/sys/cdefs.h" 2 3 4
#365 "/usr/include/features.h" 2 3 4


/* If we don't have __REDIRECT, prototypes will be missing if
   __USE_FILE_OFFSET64 but not __USE_LARGEFILE[64]. */







/* Decide whether we can define 'extern inline' functions in headers.  */







/* This is here only because every header file already includes this one.
   Get the definitions of all the appropriate `__stub_FUNCTION' symbols.
   <gnu/stubs.h> contains `#define __stub_FUNCTION' when FUNCTION is a stub
   that will always return failure (and set errno to ENOSYS).  */

#1 "/usr/include/x86_64-linux-gnu/gnu/stubs.h" 1 3 4
/* This file is automatically generated.
   This file selects the right generated file of `__stub_FUNCTION' macros
   based on the architecture being compiled for.  */







#1 "/usr/include/x86_64-linux-gnu/gnu/stubs-64.h" 1 3 4
/* This file is automatically generated.
   It defines a symbol `__stub_FUNCTION' for each function
   in the C library which is a stub, meaning it will fail
   every time called, usually setting errno to ENOSYS.  */
#11 "/usr/include/x86_64-linux-gnu/gnu/stubs.h" 2 3 4
#389 "/usr/include/features.h" 2 3 4
#26 "/usr/include/string.h" 2 3 4



/* Get size_t and NULL from <stddef.h>.  */



#1 "/Xilinx/Vivado_HLS/2017.1/lnx64/tools/clang/bin/../lib/clang/3.1/include/stddef.h" 1 3 4
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




typedef int wchar_t;
#56 "/Xilinx/Vivado_HLS/2017.1/lnx64/tools/clang/bin/../lib/clang/3.1/include/stddef.h" 3 4
/* Some C libraries expect to see a wint_t here. Others (notably MinGW) will use
__WINT_TYPE__ directly; accommodate both by requiring __need_wint_t */
#33 "/usr/include/string.h" 2 3 4

/* Tell the caller that we provide correct C++ prototypes.  */






/* Copy N bytes of SRC to DEST.  */
extern void *memcpy (void *__restrict __dest, const void *__restrict __src,
       size_t __n) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));
/* Copy N bytes of SRC to DEST, guaranteeing
   correct behavior for overlapping strings.  */
extern void *memmove (void *__dest, const void *__src, size_t __n)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));


/* Copy no more than N bytes of SRC to DEST, stopping when C is found.
   Return the position in DEST one byte past where C was copied,
   or NULL if C was not found in the first N bytes of SRC.  */

extern void *memccpy (void *__restrict __dest, const void *__restrict __src,
        int __c, size_t __n)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));




/* Set N bytes of S to C.  */
extern void *memset (void *__s, int __c, size_t __n) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));

/* Compare N bytes of S1 and S2.  */
extern int memcmp (const void *__s1, const void *__s2, size_t __n)
     __attribute__ ((__nothrow__ )) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));

/* Search N bytes of S for C.  */
#92 "/usr/include/string.h" 3 4
extern void *memchr (const void *__s, int __c, size_t __n)
      __attribute__ ((__nothrow__ )) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1)));
#124 "/usr/include/string.h" 3 4
/* Copy SRC to DEST.  */
extern char *strcpy (char *__restrict __dest, const char *__restrict __src)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));
/* Copy no more than N characters of SRC to DEST.  */
extern char *strncpy (char *__restrict __dest,
        const char *__restrict __src, size_t __n)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));

/* Append SRC onto DEST.  */
extern char *strcat (char *__restrict __dest, const char *__restrict __src)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));
/* Append no more than N characters from SRC onto DEST.  */
extern char *strncat (char *__restrict __dest, const char *__restrict __src,
        size_t __n) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));

/* Compare S1 and S2.  */
extern int strcmp (const char *__s1, const char *__s2)
     __attribute__ ((__nothrow__ )) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));
/* Compare N characters of S1 and S2.  */
extern int strncmp (const char *__s1, const char *__s2, size_t __n)
     __attribute__ ((__nothrow__ )) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));

/* Compare the collated forms of S1 and S2.  */
extern int strcoll (const char *__s1, const char *__s2)
     __attribute__ ((__nothrow__ )) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));
/* Put a transformation of SRC into no more than N bytes of DEST.  */
extern size_t strxfrm (char *__restrict __dest,
         const char *__restrict __src, size_t __n)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (2)));



/* The following functions are equivalent to the both above but they
   take the locale they use for the collation as an extra argument.
   This is not standardsized but something like will come.  */

#1 "/usr/include/xlocale.h" 1 3 4
/* Definition of locale datatype.
   Copyright (C) 1997-2016 Free Software Foundation, Inc.
   This file is part of the GNU C Library.
   Contributed by Ulrich Drepper <drepper@cygnus.com>, 1997.

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




/* Structure for reentrant locale using functions.  This is an
   (almost) opaque type for the user level programs.  The file and
   this data structure is not standardized.  Don't rely on it.  It can
   go away without warning.  */
typedef struct __locale_struct
{
  /* Note: LC_ALL is not a valid index into this array.  */
  struct __locale_data *__locales[13]; /* 13 = __LC_LAST. */

  /* To increase the speed of this solution we add some special members.  */
  const unsigned short int *__ctype_b;
  const int *__ctype_tolower;
  const int *__ctype_toupper;

  /* Note: LC_ALL is not a valid index into this array.  */
  const char *__names[13];
} *__locale_t;

/* POSIX 2008 makes locale_t official.  */
typedef __locale_t locale_t;
#160 "/usr/include/string.h" 2 3 4

/* Compare the collated forms of S1 and S2 using rules from L.  */
extern int strcoll_l (const char *__s1, const char *__s2, __locale_t __l)
     __attribute__ ((__nothrow__ )) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2, 3)));
/* Put a transformation of SRC into no more than N bytes of DEST.  */
extern size_t strxfrm_l (char *__dest, const char *__src, size_t __n,
    __locale_t __l) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (2, 4)));



/* Duplicate S, returning an identical malloc'd string.  */
extern char *strdup (const char *__s)
     __attribute__ ((__nothrow__ )) __attribute__ ((__malloc__)) __attribute__ ((__nonnull__ (1)));


/* Return a malloc'd copy of at most N bytes of STRING.  The
   resultant string is terminated even if no null terminator
   appears before STRING[N].  */

extern char *strndup (const char *__string, size_t __n)
     __attribute__ ((__nothrow__ )) __attribute__ ((__malloc__)) __attribute__ ((__nonnull__ (1)));
#207 "/usr/include/string.h" 3 4
/* Find the first occurrence of C in S.  */
#231 "/usr/include/string.h" 3 4
extern char *strchr (const char *__s, int __c)
     __attribute__ ((__nothrow__ )) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1)));

/* Find the last occurrence of C in S.  */
#258 "/usr/include/string.h" 3 4
extern char *strrchr (const char *__s, int __c)
     __attribute__ ((__nothrow__ )) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1)));
#278 "/usr/include/string.h" 3 4
/* Return the length of the initial segment of S which
   consists entirely of characters not in REJECT.  */
extern size_t strcspn (const char *__s, const char *__reject)
     __attribute__ ((__nothrow__ )) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));
/* Return the length of the initial segment of S which
   consists entirely of characters in ACCEPT.  */
extern size_t strspn (const char *__s, const char *__accept)
     __attribute__ ((__nothrow__ )) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));
/* Find the first occurrence in S of any character in ACCEPT.  */
#310 "/usr/include/string.h" 3 4
extern char *strpbrk (const char *__s, const char *__accept)
     __attribute__ ((__nothrow__ )) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));

/* Find the first occurrence of NEEDLE in HAYSTACK.  */
#337 "/usr/include/string.h" 3 4
extern char *strstr (const char *__haystack, const char *__needle)
     __attribute__ ((__nothrow__ )) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));



/* Divide S into tokens separated by characters in DELIM.  */
extern char *strtok (char *__restrict __s, const char *__restrict __delim)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (2)));


/* Divide S into tokens separated by characters in DELIM.  Information
   passed between calls are stored in SAVE_PTR.  */
extern char *__strtok_r (char *__restrict __s,
    const char *__restrict __delim,
    char **__restrict __save_ptr)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (2, 3)));

extern char *strtok_r (char *__restrict __s, const char *__restrict __delim,
         char **__restrict __save_ptr)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (2, 3)));
#393 "/usr/include/string.h" 3 4
/* Return the length of S.  */
extern size_t strlen (const char *__s)
     __attribute__ ((__nothrow__ )) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1)));



/* Find the length of STRING, but scan at most MAXLEN characters.
   If no '\0' terminator is found in that many characters, return MAXLEN.  */
extern size_t strnlen (const char *__string, size_t __maxlen)
     __attribute__ ((__nothrow__ )) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1)));




/* Return a string describing the meaning of the `errno' code in ERRNUM.  */
extern char *strerror (int __errnum) __attribute__ ((__nothrow__ ));


/* Reentrant version of `strerror'.
   There are 2 flavors of `strerror_r', GNU which returns the string
   and may or may not use the supplied temporary buffer and POSIX one
   which fills the string into the buffer.
   To use the POSIX version, -D_XOPEN_SOURCE=600 or -D_POSIX_C_SOURCE=200112L
   without -D_GNU_SOURCE is needed, otherwise the GNU version is
   preferred.  */

/* Fill BUF with a string describing the meaning of the `errno' code in
   ERRNUM.  */

extern int strerror_r (int __errnum, char *__buf, size_t __buflen) __asm__ ("" "__xpg_strerror_r") __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (2)));
#439 "/usr/include/string.h" 3 4
/* Translate error number to string according to the locale L.  */
extern char *strerror_l (int __errnum, __locale_t __l) __attribute__ ((__nothrow__ ));



/* We define this function always since `bzero' is sometimes needed when
   the namespace rules does not allow this.  */
extern void __bzero (void *__s, size_t __n) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));


/* Copy N bytes of SRC to DEST (like memmove, but args reversed).  */
extern void bcopy (const void *__src, void *__dest, size_t __n)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));

/* Set N bytes of S to 0.  */
extern void bzero (void *__s, size_t __n) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));

/* Compare N bytes of S1 and S2 (same as memcmp).  */
extern int bcmp (const void *__s1, const void *__s2, size_t __n)
     __attribute__ ((__nothrow__ )) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));

/* Find the first occurrence of C in S (same as strchr).  */
#484 "/usr/include/string.h" 3 4
extern char *index (const char *__s, int __c)
     __attribute__ ((__nothrow__ )) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1)));


/* Find the last occurrence of C in S (same as strrchr).  */
#512 "/usr/include/string.h" 3 4
extern char *rindex (const char *__s, int __c)
     __attribute__ ((__nothrow__ )) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1)));


/* Return the position of the first bit set in I, or 0 if none are set.
   The least-significant bit is position 1, the most-significant 32.  */
extern int ffs (int __i) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));

/* The following two functions are non-standard but necessary for non-32 bit
   platforms.  */






/* Compare S1 and S2, ignoring case.  */
extern int strcasecmp (const char *__s1, const char *__s2)
     __attribute__ ((__nothrow__ )) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));

/* Compare no more than N chars of S1 and S2, ignoring case.  */
extern int strncasecmp (const char *__s1, const char *__s2, size_t __n)
     __attribute__ ((__nothrow__ )) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));
#550 "/usr/include/string.h" 3 4
/* Return the next DELIM-delimited token from *STRINGP,
   terminating it with a '\0', and update *STRINGP to point past it.  */
extern char *strsep (char **__restrict __stringp,
       const char *__restrict __delim)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));



/* Return a string describing the meaning of the signal number in SIG.  */
extern char *strsignal (int __sig) __attribute__ ((__nothrow__ ));

/* Copy SRC to DEST, returning the address of the terminating '\0' in DEST.  */
extern char *__stpcpy (char *__restrict __dest, const char *__restrict __src)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));
extern char *stpcpy (char *__restrict __dest, const char *__restrict __src)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));

/* Copy no more than N characters of SRC to DEST, returning the address of
   the last character written into DEST.  */
extern char *__stpncpy (char *__restrict __dest,
   const char *__restrict __src, size_t __n)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));
extern char *stpncpy (char *__restrict __dest,
        const char *__restrict __src, size_t __n)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));
#49 "curve25519/src/curve25519-donna.c" 2
#1 "/Xilinx/Vivado_HLS/2017.1/lnx64/tools/clang/bin/../lib/clang/3.1/include/stdint.h" 1 3
/*===---- stdint.h - Standard header for sized integer types --------------===*\
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




/* If we're hosted, fall back to the system's stdint.h, which might have
 * additional definitions.
 */



#1 "/usr/include/stdint.h" 1 3 4
/* Copyright (C) 1997-2016 Free Software Foundation, Inc.
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
 *	ISO C99: 7.18 Integer types <stdint.h>
 */






#1 "/usr/include/x86_64-linux-gnu/bits/wchar.h" 1 3 4
/* wchar_t type related definitions.
   Copyright (C) 2000-2016 Free Software Foundation, Inc.
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




/* The fallback definitions, for when __WCHAR_MAX__ or __WCHAR_MIN__
   are not defined, give the right value and type as long as both int
   and wchar_t are 32-bit types.  Adding L'\0' to a constant value
   ensures that the type is correct; it is necessary to use (L'\0' +
   0) rather than just L'\0' so that the type in C++ is the promoted
   version of wchar_t rather than the distinct wchar_t type itself.
   Because wchar_t in preprocessor #if expressions is treated as
   intmax_t or uintmax_t, the expression (L'\0' - 1) would have the
   wrong value for WCHAR_MAX in such expressions and so cannot be used
   to define __WCHAR_MAX in the unsigned case.  */
#27 "/usr/include/stdint.h" 2 3 4
#1 "/usr/include/x86_64-linux-gnu/bits/wordsize.h" 1 3 4
/* Determine the wordsize from the preprocessor defines.  */
#11 "/usr/include/x86_64-linux-gnu/bits/wordsize.h" 3 4
/* Both x86-64 and x32 use the 64-bit system call interface.  */
#28 "/usr/include/stdint.h" 2 3 4

/* Exact integral types.  */

/* Signed.  */

/* There is some amount of overlap with <sys/types.h> as known by inet code */


typedef signed char int8_t;
typedef short int int16_t;
typedef int int32_t;

typedef long int int64_t;






/* Unsigned.  */
typedef unsigned char uint8_t;
typedef unsigned short int uint16_t;

typedef unsigned int uint32_t;



typedef unsigned long int uint64_t;






/* Small types.  */

/* Signed.  */
typedef signed char int_least8_t;
typedef short int int_least16_t;
typedef int int_least32_t;

typedef long int int_least64_t;





/* Unsigned.  */
typedef unsigned char uint_least8_t;
typedef unsigned short int uint_least16_t;
typedef unsigned int uint_least32_t;

typedef unsigned long int uint_least64_t;






/* Fast types.  */

/* Signed.  */
typedef signed char int_fast8_t;

typedef long int int_fast16_t;
typedef long int int_fast32_t;
typedef long int int_fast64_t;







/* Unsigned.  */
typedef unsigned char uint_fast8_t;

typedef unsigned long int uint_fast16_t;
typedef unsigned long int uint_fast32_t;
typedef unsigned long int uint_fast64_t;
#116 "/usr/include/stdint.h" 3 4
/* Types for `void *' pointers.  */


typedef long int intptr_t;


typedef unsigned long int uintptr_t;
#132 "/usr/include/stdint.h" 3 4
/* Largest integral types.  */

typedef long int intmax_t;
typedef unsigned long int uintmax_t;
#152 "/usr/include/stdint.h" 3 4
/* Limits of integral types.  */

/* Minimum of signed integral types.  */




/* Maximum of signed integral types.  */





/* Maximum of unsigned integral types.  */






/* Minimum of signed integral types having a minimum size.  */




/* Maximum of signed integral types having a minimum size.  */





/* Maximum of unsigned integral types having a minimum size.  */






/* Minimum of fast signed integral types having a minimum size.  */
#200 "/usr/include/stdint.h" 3 4
/* Maximum of fast signed integral types having a minimum size.  */
#211 "/usr/include/stdint.h" 3 4
/* Maximum of fast unsigned integral types having a minimum size.  */
#223 "/usr/include/stdint.h" 3 4
/* Values to test for integral types holding `void *' pointer.  */
#235 "/usr/include/stdint.h" 3 4
/* Minimum for largest signed integral type.  */

/* Maximum for largest signed integral type.  */


/* Maximum for largest unsigned integral type.  */



/* Limits of other integer types.  */

/* Limits of `ptrdiff_t' type.  */
#255 "/usr/include/stdint.h" 3 4
/* Limits of `sig_atomic_t'.  */



/* Limit of `size_t' type.  */
#270 "/usr/include/stdint.h" 3 4
/* Limits of `wchar_t'.  */

/* These constants might also be defined in <wchar.h>.  */




/* Limits of `wint_t'.  */



/* Signed.  */
#291 "/usr/include/stdint.h" 3 4
/* Unsigned.  */
#301 "/usr/include/stdint.h" 3 4
/* Maximal type.  */
#34 "/Xilinx/Vivado_HLS/2017.1/lnx64/tools/clang/bin/../lib/clang/3.1/include/stdint.h" 2 3
#50 "curve25519/src/curve25519-donna.c" 2





typedef uint8_t u8;
typedef int32_t s32;
typedef int64_t limb;

void _memcpy(limb* dst, limb* src, unsigned int len){
 int i;
 for(i=0; i<len; i++){
  dst[i] = src[i];
 }
}

void _memcpy_char(unsigned char* dst, unsigned char* src, unsigned int len){
 int i;
 for(i=0; i<len; i++){
  dst[i] = src[i];
 }
}

void _memset(limb* dst, limb val, unsigned int len){
 int i;
 for(i=0; i<len; i++){
  dst[i] = val;
 }
}

/* Field element representation:
 *
 * Field elements are written as an array of signed, 64-bit limbs, least
 * significant first. The value of the field element is:
 *   x[0] + 2^26·x[1] + x^51·x[2] + 2^102·x[3] + ...
 *
 * i.e. the limbs are 26, 25, 26, 25, ... bits wide. */

/* Sum two numbers: output += in */
static void fsum(limb *output, const limb *in) {
  unsigned i;
  for (i = 0; i < 10; i += 2) {
    output[0+i] = output[0+i] + in[0+i];
    output[1+i] = output[1+i] + in[1+i];
  }
}

/* Find the difference of two numbers: output = in - output
 * (note the order of the arguments!). */
static void fdifference(limb *output, const limb *in) {
  unsigned i;
  for (i = 0; i < 10; ++i) {
    output[i] = in[i] - output[i];
  }
}

/* Multiply a number by a scalar: output = in * scalar */
static void fscalar_product(limb *output, const limb *in, const limb scalar) {
  unsigned i;
  for (i = 0; i < 10; ++i) {
    output[i] = in[i] * scalar;
  }
}

/* Multiply two numbers: output = in2 * in
 *
 * output must be distinct to both inputs. The inputs are reduced coefficient
 * form, the output is not.
 *
 * output[x] <= 14 * the largest product of the input limbs. */
static void fproduct(limb *output, const limb *in2, const limb *in) {
_ssdm_op_SpecResourceLimit(1, "mul", "", "", "");
_ssdm_op_SpecResourceLimit(1, "add", "", "", "");
 output[0] = ((limb) ((s32) in2[0])) * ((s32) in[0]);
  output[1] = ((limb) ((s32) in2[0])) * ((s32) in[1]) +
                    ((limb) ((s32) in2[1])) * ((s32) in[0]);
  output[2] = 2 * ((limb) ((s32) in2[1])) * ((s32) in[1]) +
                    ((limb) ((s32) in2[0])) * ((s32) in[2]) +
                    ((limb) ((s32) in2[2])) * ((s32) in[0]);
  output[3] = ((limb) ((s32) in2[1])) * ((s32) in[2]) +
                    ((limb) ((s32) in2[2])) * ((s32) in[1]) +
                    ((limb) ((s32) in2[0])) * ((s32) in[3]) +
                    ((limb) ((s32) in2[3])) * ((s32) in[0]);
  output[4] = ((limb) ((s32) in2[2])) * ((s32) in[2]) +
               2 * (((limb) ((s32) in2[1])) * ((s32) in[3]) +
                    ((limb) ((s32) in2[3])) * ((s32) in[1])) +
                    ((limb) ((s32) in2[0])) * ((s32) in[4]) +
                    ((limb) ((s32) in2[4])) * ((s32) in[0]);
  output[5] = ((limb) ((s32) in2[2])) * ((s32) in[3]) +
                    ((limb) ((s32) in2[3])) * ((s32) in[2]) +
                    ((limb) ((s32) in2[1])) * ((s32) in[4]) +
                    ((limb) ((s32) in2[4])) * ((s32) in[1]) +
                    ((limb) ((s32) in2[0])) * ((s32) in[5]) +
                    ((limb) ((s32) in2[5])) * ((s32) in[0]);
  output[6] = 2 * (((limb) ((s32) in2[3])) * ((s32) in[3]) +
                    ((limb) ((s32) in2[1])) * ((s32) in[5]) +
                    ((limb) ((s32) in2[5])) * ((s32) in[1])) +
                    ((limb) ((s32) in2[2])) * ((s32) in[4]) +
                    ((limb) ((s32) in2[4])) * ((s32) in[2]) +
                    ((limb) ((s32) in2[0])) * ((s32) in[6]) +
                    ((limb) ((s32) in2[6])) * ((s32) in[0]);
  output[7] = ((limb) ((s32) in2[3])) * ((s32) in[4]) +
                    ((limb) ((s32) in2[4])) * ((s32) in[3]) +
                    ((limb) ((s32) in2[2])) * ((s32) in[5]) +
                    ((limb) ((s32) in2[5])) * ((s32) in[2]) +
                    ((limb) ((s32) in2[1])) * ((s32) in[6]) +
                    ((limb) ((s32) in2[6])) * ((s32) in[1]) +
                    ((limb) ((s32) in2[0])) * ((s32) in[7]) +
                    ((limb) ((s32) in2[7])) * ((s32) in[0]);
  output[8] = ((limb) ((s32) in2[4])) * ((s32) in[4]) +
               2 * (((limb) ((s32) in2[3])) * ((s32) in[5]) +
                    ((limb) ((s32) in2[5])) * ((s32) in[3]) +
                    ((limb) ((s32) in2[1])) * ((s32) in[7]) +
                    ((limb) ((s32) in2[7])) * ((s32) in[1])) +
                    ((limb) ((s32) in2[2])) * ((s32) in[6]) +
                    ((limb) ((s32) in2[6])) * ((s32) in[2]) +
                    ((limb) ((s32) in2[0])) * ((s32) in[8]) +
                    ((limb) ((s32) in2[8])) * ((s32) in[0]);
  output[9] = ((limb) ((s32) in2[4])) * ((s32) in[5]) +
                    ((limb) ((s32) in2[5])) * ((s32) in[4]) +
                    ((limb) ((s32) in2[3])) * ((s32) in[6]) +
                    ((limb) ((s32) in2[6])) * ((s32) in[3]) +
                    ((limb) ((s32) in2[2])) * ((s32) in[7]) +
                    ((limb) ((s32) in2[7])) * ((s32) in[2]) +
                    ((limb) ((s32) in2[1])) * ((s32) in[8]) +
                    ((limb) ((s32) in2[8])) * ((s32) in[1]) +
                    ((limb) ((s32) in2[0])) * ((s32) in[9]) +
                    ((limb) ((s32) in2[9])) * ((s32) in[0]);
  output[10] = 2 * (((limb) ((s32) in2[5])) * ((s32) in[5]) +
                    ((limb) ((s32) in2[3])) * ((s32) in[7]) +
                    ((limb) ((s32) in2[7])) * ((s32) in[3]) +
                    ((limb) ((s32) in2[1])) * ((s32) in[9]) +
                    ((limb) ((s32) in2[9])) * ((s32) in[1])) +
                    ((limb) ((s32) in2[4])) * ((s32) in[6]) +
                    ((limb) ((s32) in2[6])) * ((s32) in[4]) +
                    ((limb) ((s32) in2[2])) * ((s32) in[8]) +
                    ((limb) ((s32) in2[8])) * ((s32) in[2]);
  output[11] = ((limb) ((s32) in2[5])) * ((s32) in[6]) +
                    ((limb) ((s32) in2[6])) * ((s32) in[5]) +
                    ((limb) ((s32) in2[4])) * ((s32) in[7]) +
                    ((limb) ((s32) in2[7])) * ((s32) in[4]) +
                    ((limb) ((s32) in2[3])) * ((s32) in[8]) +
                    ((limb) ((s32) in2[8])) * ((s32) in[3]) +
                    ((limb) ((s32) in2[2])) * ((s32) in[9]) +
                    ((limb) ((s32) in2[9])) * ((s32) in[2]);
  output[12] = ((limb) ((s32) in2[6])) * ((s32) in[6]) +
               2 * (((limb) ((s32) in2[5])) * ((s32) in[7]) +
                    ((limb) ((s32) in2[7])) * ((s32) in[5]) +
                    ((limb) ((s32) in2[3])) * ((s32) in[9]) +
                    ((limb) ((s32) in2[9])) * ((s32) in[3])) +
                    ((limb) ((s32) in2[4])) * ((s32) in[8]) +
                    ((limb) ((s32) in2[8])) * ((s32) in[4]);
  output[13] = ((limb) ((s32) in2[6])) * ((s32) in[7]) +
                    ((limb) ((s32) in2[7])) * ((s32) in[6]) +
                    ((limb) ((s32) in2[5])) * ((s32) in[8]) +
                    ((limb) ((s32) in2[8])) * ((s32) in[5]) +
                    ((limb) ((s32) in2[4])) * ((s32) in[9]) +
                    ((limb) ((s32) in2[9])) * ((s32) in[4]);
  output[14] = 2 * (((limb) ((s32) in2[7])) * ((s32) in[7]) +
                    ((limb) ((s32) in2[5])) * ((s32) in[9]) +
                    ((limb) ((s32) in2[9])) * ((s32) in[5])) +
                    ((limb) ((s32) in2[6])) * ((s32) in[8]) +
                    ((limb) ((s32) in2[8])) * ((s32) in[6]);
  output[15] = ((limb) ((s32) in2[7])) * ((s32) in[8]) +
                    ((limb) ((s32) in2[8])) * ((s32) in[7]) +
                    ((limb) ((s32) in2[6])) * ((s32) in[9]) +
                    ((limb) ((s32) in2[9])) * ((s32) in[6]);
  output[16] = ((limb) ((s32) in2[8])) * ((s32) in[8]) +
               2 * (((limb) ((s32) in2[7])) * ((s32) in[9]) +
                    ((limb) ((s32) in2[9])) * ((s32) in[7]));
  output[17] = ((limb) ((s32) in2[8])) * ((s32) in[9]) +
                    ((limb) ((s32) in2[9])) * ((s32) in[8]);
  output[18] = 2 * ((limb) ((s32) in2[9])) * ((s32) in[9]);
}

/* Reduce a long form to a short form by taking the input mod 2^255 - 19.
 *
 * On entry: |output[i]| < 14*2^54
 * On exit: |output[0..8]| < 280*2^54 */
static void freduce_degree(limb *output) {
  /* Each of these shifts and adds ends up multiplying the value by 19.
   *
   * For output[0..8], the absolute entry value is < 14*2^54 and we add, at
   * most, 19*14*2^54 thus, on exit, |output[0..8]| < 280*2^54. */
  output[8] += output[18] << 4;
  output[8] += output[18] << 1;
  output[8] += output[18];
  output[7] += output[17] << 4;
  output[7] += output[17] << 1;
  output[7] += output[17];
  output[6] += output[16] << 4;
  output[6] += output[16] << 1;
  output[6] += output[16];
  output[5] += output[15] << 4;
  output[5] += output[15] << 1;
  output[5] += output[15];
  output[4] += output[14] << 4;
  output[4] += output[14] << 1;
  output[4] += output[14];
  output[3] += output[13] << 4;
  output[3] += output[13] << 1;
  output[3] += output[13];
  output[2] += output[12] << 4;
  output[2] += output[12] << 1;
  output[2] += output[12];
  output[1] += output[11] << 4;
  output[1] += output[11] << 1;
  output[1] += output[11];
  output[0] += output[10] << 4;
  output[0] += output[10] << 1;
  output[0] += output[10];
}





/* return v / 2^26, using only shifts and adds.
 *
 * On entry: v can take any value. */
static inline limb
div_by_2_26(const limb v)
{
  /* High word of v; no shift needed. */
  const uint32_t highword = (uint32_t) (((uint64_t) v) >> 32);
  /* Set to all 1s if v was negative; else set to 0s. */
  const int32_t sign = ((int32_t) highword) >> 31;
  /* Set to 0x3ffffff if v was negative; else set to 0. */
  const int32_t roundoff = ((uint32_t) sign) >> 6;
  /* Should return v / (1<<26) */
  return (v + roundoff) >> 26;
}

/* return v / (2^25), using only shifts and adds.
 *
 * On entry: v can take any value. */
static inline limb
div_by_2_25(const limb v)
{
  /* High word of v; no shift needed*/
  const uint32_t highword = (uint32_t) (((uint64_t) v) >> 32);
  /* Set to all 1s if v was negative; else set to 0s. */
  const int32_t sign = ((int32_t) highword) >> 31;
  /* Set to 0x1ffffff if v was negative; else set to 0. */
  const int32_t roundoff = ((uint32_t) sign) >> 7;
  /* Should return v / (1<<25) */
  return (v + roundoff) >> 25;
}

/* Reduce all coefficients of the short form input so that |x| < 2^26.
 *
 * On entry: |output[i]| < 280*2^54 */
static void freduce_coefficients(limb *output) {
  unsigned i;

  output[10] = 0;

  for (i = 0; i < 10; i += 2) {
    limb over = div_by_2_26(output[i]);
    /* The entry condition (that |output[i]| < 280*2^54) means that over is, at
     * most, 280*2^28 in the first iteration of this loop. This is added to the
     * next limb and we can approximate the resulting bound of that limb by
     * 281*2^54. */
    output[i] -= over << 26;
    output[i+1] += over;

    /* For the first iteration, |output[i+1]| < 281*2^54, thus |over| <
     * 281*2^29. When this is added to the next limb, the resulting bound can
     * be approximated as 281*2^54.
     *
     * For subsequent iterations of the loop, 281*2^54 remains a conservative
     * bound and no overflow occurs. */
    over = div_by_2_25(output[i+1]);
    output[i+1] -= over << 25;
    output[i+2] += over;
  }
  /* Now |output[10]| < 281*2^29 and all other coefficients are reduced. */
  output[0] += output[10] << 4;
  output[0] += output[10] << 1;
  output[0] += output[10];

  output[10] = 0;

  /* Now output[1..9] are reduced, and |output[0]| < 2^26 + 19*281*2^29
   * So |over| will be no more than 2^16. */
  {
    limb over = div_by_2_26(output[0]);
    output[0] -= over << 26;
    output[1] += over;
  }

  /* Now output[0,2..9] are reduced, and |output[1]| < 2^25 + 2^16 < 2^26. The
   * bound on |output[1]| is sufficient to meet our needs. */
}

/* A helpful wrapper around fproduct: output = in * in2.
 *
 * On entry: |in[i]| < 2^27 and |in2[i]| < 2^27.
 *
 * output must be distinct to both inputs. The output is reduced degree
 * (indeed, one need only provide storage for 10 limbs) and |output[i]| < 2^26. */
static void
fmul(limb *output, const limb *in, const limb *in2) {
  limb t[19];
  fproduct(t, in, in2);
  /* |t[i]| < 14*2^54 */
  freduce_degree(t);
  freduce_coefficients(t);
  /* |t[i]| < 2^26 */
  _memcpy(output, t, 10);
}

/* Square a number: output = in**2
 *
 * output must be distinct from the input. The inputs are reduced coefficient
 * form, the output is not.
 *
 * output[x] <= 14 * the largest product of the input limbs. */
static void fsquare_inner(limb *output, const limb *in) {
_ssdm_op_SpecResourceLimit(1, "mul", "", "", "");
_ssdm_op_SpecResourceLimit(1, "add", "", "", "");
 limb out_1 = ((limb) ((s32) in[0])) * ((s32) in[0]);
//#pragma HLS RESOURCE variable=out_1 core=Mul_LUT
//  output[0] =       ((limb) ((s32) in[0])) * ((s32) in[0]);
  output[0] = out_1;


//  output[1] =  2 *  ((limb) ((s32) in[0])) * ((s32) in[1]);
  output[1] = (((limb) ((s32) in[0])) * ((s32) in[1])) << 1;

//  output[2] =  2 * (((limb) ((s32) in[1])) * ((s32) in[1]) +
//                    ((limb) ((s32) in[0])) * ((s32) in[2]));

  output[2] = ((((limb) ((s32) in[1])) * ((s32) in[1]) +
                      ((limb) ((s32) in[0])) * ((s32) in[2]))) << 1;

  output[3] = 2 * (((limb) ((s32) in[1])) * ((s32) in[2]) +
                    ((limb) ((s32) in[0])) * ((s32) in[3]));

  output[4] = ((limb) ((s32) in[2])) * ((s32) in[2]) +
               4 * ((limb) ((s32) in[1])) * ((s32) in[3]) +
               2 * ((limb) ((s32) in[0])) * ((s32) in[4]);

  output[5] = 2 * (((limb) ((s32) in[2])) * ((s32) in[3]) +
                    ((limb) ((s32) in[1])) * ((s32) in[4]) +
                    ((limb) ((s32) in[0])) * ((s32) in[5]));

  output[6] = 2 * (((limb) ((s32) in[3])) * ((s32) in[3]) +
                    ((limb) ((s32) in[2])) * ((s32) in[4]) +
                    ((limb) ((s32) in[0])) * ((s32) in[6]) +
               2 * ((limb) ((s32) in[1])) * ((s32) in[5]));

  output[7] = 2 * (((limb) ((s32) in[3])) * ((s32) in[4]) +
                    ((limb) ((s32) in[2])) * ((s32) in[5]) +
                    ((limb) ((s32) in[1])) * ((s32) in[6]) +
                    ((limb) ((s32) in[0])) * ((s32) in[7]));

  output[8] = ((limb) ((s32) in[4])) * ((s32) in[4]) +
               2 * (((limb) ((s32) in[2])) * ((s32) in[6]) +
                    ((limb) ((s32) in[0])) * ((s32) in[8]) +
               2 * (((limb) ((s32) in[1])) * ((s32) in[7]) +
                    ((limb) ((s32) in[3])) * ((s32) in[5])));

  output[9] = 2 * (((limb) ((s32) in[4])) * ((s32) in[5]) +
                    ((limb) ((s32) in[3])) * ((s32) in[6]) +
                    ((limb) ((s32) in[2])) * ((s32) in[7]) +
                    ((limb) ((s32) in[1])) * ((s32) in[8]) +
                    ((limb) ((s32) in[0])) * ((s32) in[9]));

  output[10] = 2 * (((limb) ((s32) in[5])) * ((s32) in[5]) +
                    ((limb) ((s32) in[4])) * ((s32) in[6]) +
                    ((limb) ((s32) in[2])) * ((s32) in[8]) +
               2 * (((limb) ((s32) in[3])) * ((s32) in[7]) +
                    ((limb) ((s32) in[1])) * ((s32) in[9])));

  output[11] = 2 * (((limb) ((s32) in[5])) * ((s32) in[6]) +
                    ((limb) ((s32) in[4])) * ((s32) in[7]) +
                    ((limb) ((s32) in[3])) * ((s32) in[8]) +
                    ((limb) ((s32) in[2])) * ((s32) in[9]));

  output[12] = ((limb) ((s32) in[6])) * ((s32) in[6]) +
               2 * (((limb) ((s32) in[4])) * ((s32) in[8]) +
               2 * (((limb) ((s32) in[5])) * ((s32) in[7]) +
                    ((limb) ((s32) in[3])) * ((s32) in[9])));

  output[13] = 2 * (((limb) ((s32) in[6])) * ((s32) in[7]) +
                    ((limb) ((s32) in[5])) * ((s32) in[8]) +
                    ((limb) ((s32) in[4])) * ((s32) in[9]));

  output[14] = 2 * (((limb) ((s32) in[7])) * ((s32) in[7]) +
                    ((limb) ((s32) in[6])) * ((s32) in[8]) +
               2 * ((limb) ((s32) in[5])) * ((s32) in[9]));

  output[15] = 2 * (((limb) ((s32) in[7])) * ((s32) in[8]) +
                    ((limb) ((s32) in[6])) * ((s32) in[9]));

  output[16] = ((limb) ((s32) in[8])) * ((s32) in[8]) +
               4 * ((limb) ((s32) in[7])) * ((s32) in[9]);

  output[17] = 2 * ((limb) ((s32) in[8])) * ((s32) in[9]);

  output[18] = 2 * ((limb) ((s32) in[9])) * ((s32) in[9]);
}

/* fsquare sets output = in^2.
 *
 * On entry: The |in| argument is in reduced coefficients form and |in[i]| <
 * 2^27.
 *
 * On exit: The |output| argument is in reduced coefficients form (indeed, one
 * need only provide storage for 10 limbs) and |out[i]| < 2^26. */
static void
fsquare(limb *output, const limb *in) {
_ssdm_op_SpecResourceLimit(1, "mul", "", "", "");
_ssdm_op_SpecResourceLimit(1, "add", "", "", "");
 limb t[19];
  fsquare_inner(t, in);
  /* |t[i]| < 14*2^54 because the largest product of two limbs will be <
   * 2^(27+27) and fsquare_inner adds together, at most, 14 of those
   * products. */
  freduce_degree(t);
  freduce_coefficients(t);
  /* |t[i]| < 2^26 */
  _memcpy(output, t, 10);
}

/* Take a little-endian, 32-byte number and expand it into polynomial form */
static void
fexpand(limb *output, const u8 *input) {





  output[0] = ((((limb) input[0 + 0]) | ((limb) input[0 + 1]) << 8 | ((limb) input[0 + 2]) << 16 | ((limb) input[0 + 3]) << 24) >> 0) & 0x3ffffff;;
  output[1] = ((((limb) input[3 + 0]) | ((limb) input[3 + 1]) << 8 | ((limb) input[3 + 2]) << 16 | ((limb) input[3 + 3]) << 24) >> 2) & 0x1ffffff;;
  output[2] = ((((limb) input[6 + 0]) | ((limb) input[6 + 1]) << 8 | ((limb) input[6 + 2]) << 16 | ((limb) input[6 + 3]) << 24) >> 3) & 0x3ffffff;;
  output[3] = ((((limb) input[9 + 0]) | ((limb) input[9 + 1]) << 8 | ((limb) input[9 + 2]) << 16 | ((limb) input[9 + 3]) << 24) >> 5) & 0x1ffffff;;
  output[4] = ((((limb) input[12 + 0]) | ((limb) input[12 + 1]) << 8 | ((limb) input[12 + 2]) << 16 | ((limb) input[12 + 3]) << 24) >> 6) & 0x3ffffff;;
  output[5] = ((((limb) input[16 + 0]) | ((limb) input[16 + 1]) << 8 | ((limb) input[16 + 2]) << 16 | ((limb) input[16 + 3]) << 24) >> 0) & 0x1ffffff;;
  output[6] = ((((limb) input[19 + 0]) | ((limb) input[19 + 1]) << 8 | ((limb) input[19 + 2]) << 16 | ((limb) input[19 + 3]) << 24) >> 1) & 0x3ffffff;;
  output[7] = ((((limb) input[22 + 0]) | ((limb) input[22 + 1]) << 8 | ((limb) input[22 + 2]) << 16 | ((limb) input[22 + 3]) << 24) >> 3) & 0x1ffffff;;
  output[8] = ((((limb) input[25 + 0]) | ((limb) input[25 + 1]) << 8 | ((limb) input[25 + 2]) << 16 | ((limb) input[25 + 3]) << 24) >> 4) & 0x3ffffff;;
  output[9] = ((((limb) input[28 + 0]) | ((limb) input[28 + 1]) << 8 | ((limb) input[28 + 2]) << 16 | ((limb) input[28 + 3]) << 24) >> 6) & 0x1ffffff;;

}





/* s32_eq returns 0xffffffff iff a == b and zero otherwise. */
static s32 s32_eq(s32 a, s32 b) {
  a = ~(a ^ b);
  a &= a << 16;
  a &= a << 8;
  a &= a << 4;
  a &= a << 2;
  a &= a << 1;
  return a >> 31;
}

/* s32_gte returns 0xffffffff if a >= b and zero otherwise, where a and b are
 * both non-negative. */
static s32 s32_gte(s32 a, s32 b) {
  a -= b;
  /* a >= 0 iff a >= b. */
  return ~(a >> 31);
}

/* Take a fully reduced polynomial form number and contract it into a
 * little-endian, 32-byte array.
 *
 * On entry: |input_limbs[i]| < 2^26 */
static void
fcontract(u8 *output, limb *input_limbs) {
  int i;
  int j;
  s32 input[10];
  s32 mask;

  /* |input_limbs[i]| < 2^26, so it's valid to convert to an s32. */
  for (i = 0; i < 10; i++) {
    input[i] = input_limbs[i];
  }

  for (j = 0; j < 2; ++j) {
    for (i = 0; i < 9; ++i) {
      if ((i & 1) == 1) {
        /* This calculation is a time-invariant way to make input[i]
         * non-negative by borrowing from the next-larger limb. */
        const s32 mask = input[i] >> 31;
        const s32 carry = -((input[i] & mask) >> 25);
        input[i] = input[i] + (carry << 25);
        input[i+1] = input[i+1] - carry;
      } else {
        const s32 mask = input[i] >> 31;
        const s32 carry = -((input[i] & mask) >> 26);
        input[i] = input[i] + (carry << 26);
        input[i+1] = input[i+1] - carry;
      }
    }

    /* There's no greater limb for input[9] to borrow from, but we can multiply
     * by 19 and borrow from input[0], which is valid mod 2^255-19. */
    {
      const s32 mask = input[9] >> 31;
      const s32 carry = -((input[9] & mask) >> 25);
      input[9] = input[9] + (carry << 25);
      input[0] = input[0] - (carry * 19);
    }

    /* After the first iteration, input[1..9] are non-negative and fit within
     * 25 or 26 bits, depending on position. However, input[0] may be
     * negative. */
  }

  /* The first borrow-propagation pass above ended with every limb
     except (possibly) input[0] non-negative.

     If input[0] was negative after the first pass, then it was because of a
     carry from input[9]. On entry, input[9] < 2^26 so the carry was, at most,
     one, since (2**26-1) >> 25 = 1. Thus input[0] >= -19.

     In the second pass, each limb is decreased by at most one. Thus the second
     borrow-propagation pass could only have wrapped around to decrease
     input[0] again if the first pass left input[0] negative *and* input[1]
     through input[9] were all zero.  In that case, input[1] is now 2^25 - 1,
     and this last borrow-propagation step will leave input[1] non-negative. */
  {
    const s32 mask = input[0] >> 31;
    const s32 carry = -((input[0] & mask) >> 26);
    input[0] = input[0] + (carry << 26);
    input[1] = input[1] - carry;
  }

  /* All input[i] are now non-negative. However, there might be values between
   * 2^25 and 2^26 in a limb which is, nominally, 25 bits wide. */
  for (j = 0; j < 2; j++) {
    for (i = 0; i < 9; i++) {
      if ((i & 1) == 1) {
        const s32 carry = input[i] >> 25;
        input[i] &= 0x1ffffff;
        input[i+1] += carry;
      } else {
        const s32 carry = input[i] >> 26;
        input[i] &= 0x3ffffff;
        input[i+1] += carry;
      }
    }

    {
      const s32 carry = input[9] >> 25;
      input[9] &= 0x1ffffff;
      input[0] += 19*carry;
    }
  }

  /* If the first carry-chain pass, just above, ended up with a carry from
   * input[9], and that caused input[0] to be out-of-bounds, then input[0] was
   * < 2^26 + 2*19, because the carry was, at most, two.
   *
   * If the second pass carried from input[9] again then input[0] is < 2*19 and
   * the input[9] -> input[0] carry didn't push input[0] out of bounds. */

  /* It still remains the case that input might be between 2^255-19 and 2^255.
   * In this case, input[1..9] must take their maximum value and input[0] must
   * be >= (2^255-19) & 0x3ffffff, which is 0x3ffffed. */
  mask = s32_gte(input[0], 0x3ffffed);
  for (i = 1; i < 10; i++) {
    if ((i & 1) == 1) {
      mask &= s32_eq(input[i], 0x1ffffff);
    } else {
      mask &= s32_eq(input[i], 0x3ffffff);
    }
  }

  /* mask is either 0xffffffff (if input >= 2^255-19) and zero otherwise. Thus
   * this conditionally subtracts 2^255-19. */
  input[0] -= mask & 0x3ffffed;

  for (i = 1; i < 10; i++) {
    if ((i & 1) == 1) {
      input[i] -= mask & 0x1ffffff;
    } else {
      input[i] -= mask & 0x3ffffff;
    }
  }

  input[1] <<= 2;
  input[2] <<= 3;
  input[3] <<= 5;
  input[4] <<= 6;
  input[6] <<= 1;
  input[7] <<= 3;
  input[8] <<= 4;
  input[9] <<= 6;





  output[0] = 0;
  output[16] = 0;
  output[0 +0] |= input[0] & 0xff; output[0 +1] = (input[0] >> 8) & 0xff; output[0 +2] = (input[0] >> 16) & 0xff; output[0 +3] = (input[0] >> 24) & 0xff;;
  output[3 +0] |= input[1] & 0xff; output[3 +1] = (input[1] >> 8) & 0xff; output[3 +2] = (input[1] >> 16) & 0xff; output[3 +3] = (input[1] >> 24) & 0xff;;
  output[6 +0] |= input[2] & 0xff; output[6 +1] = (input[2] >> 8) & 0xff; output[6 +2] = (input[2] >> 16) & 0xff; output[6 +3] = (input[2] >> 24) & 0xff;;
  output[9 +0] |= input[3] & 0xff; output[9 +1] = (input[3] >> 8) & 0xff; output[9 +2] = (input[3] >> 16) & 0xff; output[9 +3] = (input[3] >> 24) & 0xff;;
  output[12 +0] |= input[4] & 0xff; output[12 +1] = (input[4] >> 8) & 0xff; output[12 +2] = (input[4] >> 16) & 0xff; output[12 +3] = (input[4] >> 24) & 0xff;;
  output[16 +0] |= input[5] & 0xff; output[16 +1] = (input[5] >> 8) & 0xff; output[16 +2] = (input[5] >> 16) & 0xff; output[16 +3] = (input[5] >> 24) & 0xff;;
  output[19 +0] |= input[6] & 0xff; output[19 +1] = (input[6] >> 8) & 0xff; output[19 +2] = (input[6] >> 16) & 0xff; output[19 +3] = (input[6] >> 24) & 0xff;;
  output[22 +0] |= input[7] & 0xff; output[22 +1] = (input[7] >> 8) & 0xff; output[22 +2] = (input[7] >> 16) & 0xff; output[22 +3] = (input[7] >> 24) & 0xff;;
  output[25 +0] |= input[8] & 0xff; output[25 +1] = (input[8] >> 8) & 0xff; output[25 +2] = (input[8] >> 16) & 0xff; output[25 +3] = (input[8] >> 24) & 0xff;;
  output[28 +0] |= input[9] & 0xff; output[28 +1] = (input[9] >> 8) & 0xff; output[28 +2] = (input[9] >> 16) & 0xff; output[28 +3] = (input[9] >> 24) & 0xff;;

}

/* Input: Q, Q', Q-Q'
 * Output: 2Q, Q+Q'
 *
 *   x2 z3: long form
 *   x3 z3: long form
 *   x z: short form, destroyed
 *   xprime zprime: short form, destroyed
 *   qmqp: short form, preserved
 *
 * On entry and exit, the absolute value of the limbs of all inputs and outputs
 * are < 2^26. */
static void fmonty(limb *x2, limb *z2, /* output 2Q */
                   limb *x3, limb *z3, /* output Q + Q' */
                   limb *x, limb *z, /* input Q */
                   limb *xprime, limb *zprime, /* input Q' */
                   const limb *qmqp /* input Q - Q' */) {
_ssdm_op_SpecResourceLimit(1, "mul", "", "", "");
_ssdm_op_SpecResourceLimit(1, "add", "", "", "");
 limb origx[10], origxprime[10], zzz[19], xx[19], zz[19], xxprime[19],
        zzprime[19], zzzprime[19], xxxprime[19];

  int i;

  _memcpy(origx, x, 10);
  fsum(x, z);
  /* |x[i]| < 2^27 */
  fdifference(z, origx); /* does x - z */
  /* |z[i]| < 2^27 */

  _memcpy(origxprime, xprime, 10);
  fsum(xprime, zprime);
  /* |xprime[i]| < 2^27 */
  fdifference(zprime, origxprime);
  /* |zprime[i]| < 2^27 */
  fproduct(xxprime, xprime, z);
  /* |xxprime[i]| < 14*2^54: the largest product of two limbs will be <
   * 2^(27+27) and fproduct adds together, at most, 14 of those products.
   * (Approximating that to 2^58 doesn't work out.) */
  fproduct(zzprime, x, zprime);
  /* |zzprime[i]| < 14*2^54 */
  freduce_degree(xxprime);
  freduce_coefficients(xxprime);
  /* |xxprime[i]| < 2^26 */
  freduce_degree(zzprime);
  freduce_coefficients(zzprime);
  /* |zzprime[i]| < 2^26 */
  _memcpy(origxprime, xxprime, 10);
  fsum(xxprime, zzprime);
  /* |xxprime[i]| < 2^27 */
  fdifference(zzprime, origxprime);
  /* |zzprime[i]| < 2^27 */
  fsquare(xxxprime, xxprime);
  /* |xxxprime[i]| < 2^26 */
  fsquare(zzzprime, zzprime);
  /* |zzzprime[i]| < 2^26 */
  fproduct(zzprime, zzzprime, qmqp);
  /* |zzprime[i]| < 14*2^52 */
  freduce_degree(zzprime);
  freduce_coefficients(zzprime);
  /* |zzprime[i]| < 2^26 */
  _memcpy(x3, xxxprime, 10);
  _memcpy(z3, zzprime, 10);

  fsquare(xx, x);
  /* |xx[i]| < 2^26 */
  fsquare(zz, z);
  /* |zz[i]| < 2^26 */
  fproduct(x2, xx, zz);
  /* |x2[i]| < 14*2^52 */
  freduce_degree(x2);
  freduce_coefficients(x2);
  /* |x2[i]| < 2^26 */
  fdifference(zz, xx); // does zz = xx - zz
  /* |zz[i]| < 2^27 */
  _memset(zzz + 10, 0, 9);

//  printf("zzz: 0x");
//  for(i=0; i<19; i++){
//	  printf("%08x", zzz[i]);
//  }
//  printf("\n");


  fscalar_product(zzz, zz, 121665);
  /* |zzz[i]| < 2^(27+17) */
  /* No need to call freduce_degree here:
     fscalar_product doesn't increase the degree of its input. */
  freduce_coefficients(zzz);
  /* |zzz[i]| < 2^26 */
  fsum(zzz, xx);
  /* |zzz[i]| < 2^27 */
  fproduct(z2, zz, zzz);
  /* |z2[i]| < 14*2^(26+27) */
  freduce_degree(z2);
  freduce_coefficients(z2);
  /* |z2|i| < 2^26 */
}

/* Conditionally swap two reduced-form limb arrays if 'iswap' is 1, but leave
 * them unchanged if 'iswap' is 0.  Runs in data-invariant time to avoid
 * side-channel attacks.
 *
 * NOTE that this function requires that 'iswap' be 1 or 0; other values give
 * wrong results.  Also, the two limb arrays must be in reduced-coefficient,
 * reduced-degree form: the values in a[10..19] or b[10..19] aren't swapped,
 * and all all values in a[0..9],b[0..9] must have magnitude less than
 * INT32_MAX. */
static void
swap_conditional(limb a[19], limb b[19], limb iswap) {_ssdm_SpecArrayDimSize(a,19);_ssdm_SpecArrayDimSize(b,19);
  unsigned i;
  const s32 swap = (s32) -iswap;

  for (i = 0; i < 10; ++i) {
    const s32 x = swap & ( ((s32)a[i]) ^ ((s32)b[i]) );
    a[i] = ((s32)a[i]) ^ x;
    b[i] = ((s32)b[i]) ^ x;
  }
}

/* Calculates nQ where Q is the x-coordinate of a point on the curve
 *
 *   resultx/resultz: the x coordinate of the resulting curve point (short form)
 *   n: a little endian, 32-byte number
 *   q: a point of the curve (short form) */
static void
cmult(limb *resultx, limb *resultz, const u8 *n, const limb *q) {
_ssdm_op_SpecResourceLimit(1, "mul", "", "", "");
_ssdm_op_SpecResourceLimit(1, "add", "", "", "");
//  limb a[19] = {0}, b[19] = {1}, c[19] = {1}, d[19] = {0};
//  limb *nqpqx = a, *nqpqz = b, *nqx = c, *nqz = d, *t;
  limb nqpqx[19] = {0}, nqpqz[19] = {1}, nqx[19] = {1}, nqz[19] = {0}, t[19] = {0};
//  limb e[19] = {0}, f[19] = {1}, g[19] = {0}, h[19] = {1};
//  limb *nqpqx2 = e, *nqpqz2 = f, *nqx2 = g, *nqz2 = h;
  limb nqpqx2[19] = {0}, nqpqz2[19] = {1}, nqx2[19] = {0}, nqz2[19] = {1};

  unsigned i, j, k;

  _memcpy((limb*)nqpqx, q, 10);

  for (i = 0; i < 32; ++i) {
    u8 byte = n[31 - i];
    for (j = 0; j < 8; ++j) {
      const limb bit = byte >> 7;

      swap_conditional(nqx, nqpqx, bit);
      swap_conditional(nqz, nqpqz, bit);
      fmonty(nqx2, nqz2,
             nqpqx2, nqpqz2,
             nqx, nqz,
             nqpqx, nqpqz,
             q);
      swap_conditional(nqx2, nqpqx2, bit);
      swap_conditional(nqz2, nqpqz2, bit);

//      t = nqx;
      _memcpy(t, nqx, 19);

//      if(i==0){
//    	  printf("t: 0x");
//    	  for(k=0; k<19; k++){
//    		  printf("%08x", t[i]);
//    	  }
//    	  printf("\n");
//      }

//      nqx = nqx2;
      _memcpy(nqx, nqx2, 19);

//      nqx2 = t;
      _memcpy(nqx2, t, 19);

//      t = nqz;
      _memcpy(t, nqz, 19);

//      nqz = nqz2;
      _memcpy(nqz, nqz2, 19);

//      nqz2 = t;
      _memcpy(nqz2, t, 19);

//      t = nqpqx;
      _memcpy(t, nqpqx, 19);

//      nqpqx = nqpqx2;
      _memcpy(nqpqx, nqpqx2, 19);

//      nqpqx2 = t;
      _memcpy(nqpqx2, t, 19);

//      t = nqpqz;
      _memcpy(t, nqpqz, 19);

//      nqpqz = nqpqz2;
      _memcpy(nqpqz, nqpqz2, 19);

//      nqpqz2 = t;
      _memcpy(nqpqz2, t, 19);

//      if(i==0){
//    	  printf("nqpqz2: 0x");
//    	  for(k=0; k<19; k++){
//    		  printf("%08x", nqpqz2[i]);
//    	  }
//    	  printf("\n\n");
//      }

      byte <<= 1;
    }
  }

  _memcpy(resultx, nqx, 10);
  _memcpy(resultz, nqz, 10);
}

// -----------------------------------------------------------------------------
// Shamelessly copied from djb's code
// -----------------------------------------------------------------------------
static void
crecip(limb *out, const limb *z) {
_ssdm_op_SpecResourceLimit(1, "mul", "", "", "");
_ssdm_op_SpecResourceLimit(1, "add", "", "", "");
 limb z2[10];
  limb z9[10];
  limb z11[10];
  limb z2_5_0[10];
  limb z2_10_0[10];
  limb z2_20_0[10];
  limb z2_50_0[10];
  limb z2_100_0[10];
  limb t0[10];
  limb t1[10];
  int i;

  /* 2 */ fsquare(z2,z);
  /* 4 */ fsquare(t1,z2);
  /* 8 */ fsquare(t0,t1);
  /* 9 */ fmul(z9,t0,z);
  /* 11 */ fmul(z11,z9,z2);
  /* 22 */ fsquare(t0,z11);
  /* 2^5 - 2^0 = 31 */ fmul(z2_5_0,t0,z9);

  /* 2^6 - 2^1 */ fsquare(t0,z2_5_0);
  /* 2^7 - 2^2 */ fsquare(t1,t0);
  /* 2^8 - 2^3 */ fsquare(t0,t1);
  /* 2^9 - 2^4 */ fsquare(t1,t0);
  /* 2^10 - 2^5 */ fsquare(t0,t1);
  /* 2^10 - 2^0 */ fmul(z2_10_0,t0,z2_5_0);

  /* 2^11 - 2^1 */ fsquare(t0,z2_10_0);
  /* 2^12 - 2^2 */ fsquare(t1,t0);
  /* 2^20 - 2^10 */ for (i = 2;i < 10;i += 2) { fsquare(t0,t1); fsquare(t1,t0); }
  /* 2^20 - 2^0 */ fmul(z2_20_0,t1,z2_10_0);

  /* 2^21 - 2^1 */ fsquare(t0,z2_20_0);
  /* 2^22 - 2^2 */ fsquare(t1,t0);
  /* 2^40 - 2^20 */ for (i = 2;i < 20;i += 2) { fsquare(t0,t1); fsquare(t1,t0); }
  /* 2^40 - 2^0 */ fmul(t0,t1,z2_20_0);

  /* 2^41 - 2^1 */ fsquare(t1,t0);
  /* 2^42 - 2^2 */ fsquare(t0,t1);
  /* 2^50 - 2^10 */ for (i = 2;i < 10;i += 2) { fsquare(t1,t0); fsquare(t0,t1); }
  /* 2^50 - 2^0 */ fmul(z2_50_0,t0,z2_10_0);

  /* 2^51 - 2^1 */ fsquare(t0,z2_50_0);
  /* 2^52 - 2^2 */ fsquare(t1,t0);
  /* 2^100 - 2^50 */ for (i = 2;i < 50;i += 2) { fsquare(t0,t1); fsquare(t1,t0); }
  /* 2^100 - 2^0 */ fmul(z2_100_0,t1,z2_50_0);

  /* 2^101 - 2^1 */ fsquare(t1,z2_100_0);
  /* 2^102 - 2^2 */ fsquare(t0,t1);
  /* 2^200 - 2^100 */ for (i = 2;i < 100;i += 2) { fsquare(t1,t0); fsquare(t0,t1); }
  /* 2^200 - 2^0 */ fmul(t1,t0,z2_100_0);

  /* 2^201 - 2^1 */ fsquare(t0,t1);
  /* 2^202 - 2^2 */ fsquare(t1,t0);
  /* 2^250 - 2^50 */ for (i = 2;i < 50;i += 2) { fsquare(t0,t1); fsquare(t1,t0); }
  /* 2^250 - 2^0 */ fmul(t0,t1,z2_50_0);

  /* 2^251 - 2^1 */ fsquare(t1,t0);
  /* 2^252 - 2^2 */ fsquare(t0,t1);
  /* 2^253 - 2^3 */ fsquare(t1,t0);
  /* 2^254 - 2^4 */ fsquare(t0,t1);
  /* 2^255 - 2^5 */ fsquare(t1,t0);
  /* 2^255 - 21 */ fmul(out,t1,z11);
}

int
curve25519_donna(u8 mypublic_in[32], const u8 secret_in[32], const u8 basepoint_in[32],
     u8 mypublic_out[32], const u8 secret_out[32], const u8 basepoint_out[32]) {_ssdm_SpecArrayDimSize(mypublic_out,32);_ssdm_SpecArrayDimSize(basepoint_in,32);_ssdm_SpecArrayDimSize(basepoint_out,32);_ssdm_SpecArrayDimSize(mypublic_in,32);_ssdm_SpecArrayDimSize(secret_out,32);_ssdm_SpecArrayDimSize(secret_in,32);
_ssdm_op_SpecInterface(0, "s_axilite", 0, 0, "", 0, 0, "", "", "", 0, 0, 0, 0, "", "");
_ssdm_op_SpecInterface(basepoint_in, "s_axilite", 0, 0, "", 0, 0, "", "", "", 0, 0, 0, 0, "", "");
_ssdm_op_SpecInterface(secret_in, "s_axilite", 0, 0, "", 0, 0, "", "", "", 0, 0, 0, 0, "", "");
_ssdm_op_SpecInterface(mypublic_in, "s_axilite", 0, 0, "", 0, 0, "", "", "", 0, 0, 0, 0, "", "");
_ssdm_op_SpecInterface(basepoint_out, "s_axilite", 0, 0, "", 0, 0, "", "", "", 0, 0, 0, 0, "", "");
_ssdm_op_SpecInterface(secret_out, "s_axilite", 0, 0, "", 0, 0, "", "", "", 0, 0, 0, 0, "", "");
_ssdm_op_SpecInterface(mypublic_out, "s_axilite", 0, 0, "", 0, 0, "", "", "", 0, 0, 0, 0, "", "");
_ssdm_op_SpecResourceLimit(1, "", "", "cmult", "");
_ssdm_op_SpecResourceLimit(1, "", "", "fsquare", "");
_ssdm_op_SpecResourceLimit(1, "", "", "fsquare_inner", "");
_ssdm_op_SpecResourceLimit(1, "", "", "crecip", "");
_ssdm_op_SpecResourceLimit(1, "", "", "fproduct", "");
 limb bp[10], x[10], z[11], zmone[10];
  uint8_t e[32] = {0};
  int i;
  unsigned char mypublic[32], secret[32], basepoint[32];

  _memcpy_char((unsigned char*)mypublic, (unsigned char*)mypublic_in, 32);
  _memcpy_char((unsigned char*)secret, (unsigned char*)secret_in, 32);
  _memcpy_char((unsigned char*)basepoint, (unsigned char*)basepoint_in, 32);

  for (i = 0; i < 32; ++i){
   e[i] = secret[i];
  }
  e[0] &= 248;
  e[31] &= 127;
  e[31] |= 64;

  fexpand(bp, basepoint);
  cmult(x, z, e, bp);
  crecip(zmone, z);
  fmul(z, x, zmone);
  fcontract(mypublic, z);

  _memcpy_char((unsigned char*)mypublic_out, (unsigned char*)mypublic, 32);
  _memcpy_char((unsigned char*)secret_out, (unsigned char*)secret, 32);
  _memcpy_char((unsigned char*)basepoint_out, (unsigned char*)basepoint, 32);


  return 0;
}
