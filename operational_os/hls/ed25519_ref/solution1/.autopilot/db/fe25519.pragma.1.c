#1 "ed25519_ref/src/fe25519.c"
#1 "ed25519_ref/src/fe25519.c" 1
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
#1 "ed25519_ref/src/fe25519.c" 2



#1 "ed25519_ref/src/fe25519.h" 1



#1 "ed25519_ref/src/crypto_int32.h" 1



typedef int crypto_int32;
#5 "ed25519_ref/src/fe25519.h" 2
#1 "ed25519_ref/src/crypto_uint32.h" 1



typedef unsigned int crypto_uint32;
#6 "ed25519_ref/src/fe25519.h" 2
#25 "ed25519_ref/src/fe25519.h"
typedef struct
{
  crypto_uint32 v[32];
}
crypto_sign_ed25519_ref_fe25519;

void crypto_sign_ed25519_ref_fe25519_freeze(crypto_sign_ed25519_ref_fe25519 *r);

void crypto_sign_ed25519_ref_fe25519_unpack(crypto_sign_ed25519_ref_fe25519 *r, const unsigned char x[32]);

void crypto_sign_ed25519_ref_fe25519_pack(unsigned char r[32], const crypto_sign_ed25519_ref_fe25519 *x);

int crypto_sign_ed25519_ref_fe25519_iszero(const crypto_sign_ed25519_ref_fe25519 *x);

int crypto_sign_ed25519_ref_fe25519_iseq_vartime(const crypto_sign_ed25519_ref_fe25519 *x, const crypto_sign_ed25519_ref_fe25519 *y);

void crypto_sign_ed25519_ref_fe25519_cmov(crypto_sign_ed25519_ref_fe25519 *r, const crypto_sign_ed25519_ref_fe25519 *x, unsigned char b);

void crypto_sign_ed25519_ref_fe25519_setone(crypto_sign_ed25519_ref_fe25519 *r);

void crypto_sign_ed25519_ref_fe25519_setzero(crypto_sign_ed25519_ref_fe25519 *r);

void crypto_sign_ed25519_ref_fe25519_neg(crypto_sign_ed25519_ref_fe25519 *r, const crypto_sign_ed25519_ref_fe25519 *x);

unsigned char crypto_sign_ed25519_ref_fe25519_getparity(const crypto_sign_ed25519_ref_fe25519 *x);

void crypto_sign_ed25519_ref_fe25519_add(crypto_sign_ed25519_ref_fe25519 *r, const crypto_sign_ed25519_ref_fe25519 *x, const crypto_sign_ed25519_ref_fe25519 *y);

void crypto_sign_ed25519_ref_fe25519_sub(crypto_sign_ed25519_ref_fe25519 *r, const crypto_sign_ed25519_ref_fe25519 *x, const crypto_sign_ed25519_ref_fe25519 *y);

void crypto_sign_ed25519_ref_fe25519_mul(crypto_sign_ed25519_ref_fe25519 *r, const crypto_sign_ed25519_ref_fe25519 *x, const crypto_sign_ed25519_ref_fe25519 *y);

void crypto_sign_ed25519_ref_fe25519_square(crypto_sign_ed25519_ref_fe25519 *r, const crypto_sign_ed25519_ref_fe25519 *x);

void crypto_sign_ed25519_ref_fe25519_invert(crypto_sign_ed25519_ref_fe25519 *r, const crypto_sign_ed25519_ref_fe25519 *x);

void crypto_sign_ed25519_ref_fe25519_pow2523(crypto_sign_ed25519_ref_fe25519 *r, const crypto_sign_ed25519_ref_fe25519 *x);
#5 "ed25519_ref/src/fe25519.c" 2

static crypto_uint32 equal(crypto_uint32 a,crypto_uint32 b) /* 16-bit inputs */
{
  crypto_uint32 x = a ^ b; /* 0: yes; 1..65535: no */
  x -= 1; /* 4294967295: yes; 0..65534: no */
  x >>= 31; /* 1: yes; 0: no */
  return x;
}

static crypto_uint32 ge(crypto_uint32 a,crypto_uint32 b) /* 16-bit inputs */
{
  unsigned int x = a;
  x -= (unsigned int) b; /* 0..65535: yes; 4294901761..4294967295: no */
  x >>= 31; /* 0: yes; 1: no */
  x ^= 1; /* 1: yes; 0: no */
  return x;
}

static crypto_uint32 times19(crypto_uint32 a)
{
  return (a << 4) + (a << 1) + a;
}

static crypto_uint32 times38(crypto_uint32 a)
{
  return (a << 5) + (a << 2) + (a << 1);
}

static void reduce_add_sub(crypto_sign_ed25519_ref_fe25519 *r)
{
  crypto_uint32 t;
  int i,rep;

  for(rep=0;rep<4;rep++)
  {
    t = r->v[31] >> 7;
    r->v[31] &= 127;
    t = times19(t);
    r->v[0] += t;
    for(i=0;i<31;i++)
    {
      t = r->v[i] >> 8;
      r->v[i+1] += t;
      r->v[i] &= 255;
    }
  }
}

static void reduce_mul(crypto_sign_ed25519_ref_fe25519 *r)
{
  crypto_uint32 t;
  int i,rep;

  for(rep=0;rep<2;rep++)
  {
    t = r->v[31] >> 7;
    r->v[31] &= 127;
    t = times19(t);
    r->v[0] += t;
    for(i=0;i<31;i++)
    {
      t = r->v[i] >> 8;
      r->v[i+1] += t;
      r->v[i] &= 255;
    }
  }
}

/* reduction modulo 2^255-19 */
void crypto_sign_ed25519_ref_fe25519_freeze(crypto_sign_ed25519_ref_fe25519 *r)
{
  int i;
  crypto_uint32 m = equal(r->v[31],127);
  for(i=30;i>0;i--)
    m &= equal(r->v[i],255);
  m &= ge(r->v[0],237);

  m = -m;

  r->v[31] -= m&127;
  for(i=30;i>0;i--)
    r->v[i] -= m&255;
  r->v[0] -= m&237;
}

void crypto_sign_ed25519_ref_fe25519_unpack(crypto_sign_ed25519_ref_fe25519 *r, const unsigned char x[32])
{_ssdm_SpecArrayDimSize(x,32);
  int i;
  for(i=0;i<32;i++) r->v[i] = x[i];
  r->v[31] &= 127;
}

/* Assumes input x being reduced below 2^255 */
void crypto_sign_ed25519_ref_fe25519_pack(unsigned char r[32], const crypto_sign_ed25519_ref_fe25519 *x)
{_ssdm_SpecArrayDimSize(r,32);
  int i;
  crypto_sign_ed25519_ref_fe25519 y = *x;
  crypto_sign_ed25519_ref_fe25519_freeze(&y);
  for(i=0;i<32;i++)
    r[i] = y.v[i];
}

int crypto_sign_ed25519_ref_fe25519_iszero(const crypto_sign_ed25519_ref_fe25519 *x)
{
  int i;
  int r;
  crypto_sign_ed25519_ref_fe25519 t = *x;
  crypto_sign_ed25519_ref_fe25519_freeze(&t);
  r = equal(t.v[0],0);
  for(i=1;i<32;i++)
    r &= equal(t.v[i],0);
  return r;
}

int crypto_sign_ed25519_ref_fe25519_iseq_vartime(const crypto_sign_ed25519_ref_fe25519 *x, const crypto_sign_ed25519_ref_fe25519 *y)
{
  int i;
  crypto_sign_ed25519_ref_fe25519 t1 = *x;
  crypto_sign_ed25519_ref_fe25519 t2 = *y;
  crypto_sign_ed25519_ref_fe25519_freeze(&t1);
  crypto_sign_ed25519_ref_fe25519_freeze(&t2);
  for(i=0;i<32;i++)
    if(t1.v[i] != t2.v[i]) return 0;
  return 1;
}

void crypto_sign_ed25519_ref_fe25519_cmov(crypto_sign_ed25519_ref_fe25519 *r, const crypto_sign_ed25519_ref_fe25519 *x, unsigned char b)
{
  int i;
  crypto_uint32 mask = b;
  mask = -mask;
  for(i=0;i<32;i++) r->v[i] ^= mask & (x->v[i] ^ r->v[i]);
}

unsigned char crypto_sign_ed25519_ref_fe25519_getparity(const crypto_sign_ed25519_ref_fe25519 *x)
{
  crypto_sign_ed25519_ref_fe25519 t = *x;
  crypto_sign_ed25519_ref_fe25519_freeze(&t);
  return t.v[0] & 1;
}

void crypto_sign_ed25519_ref_fe25519_setone(crypto_sign_ed25519_ref_fe25519 *r)
{
  int i;
  r->v[0] = 1;
  for(i=1;i<32;i++) r->v[i]=0;
}

void crypto_sign_ed25519_ref_fe25519_setzero(crypto_sign_ed25519_ref_fe25519 *r)
{
  int i;
  for(i=0;i<32;i++) r->v[i]=0;
}

void crypto_sign_ed25519_ref_fe25519_neg(crypto_sign_ed25519_ref_fe25519 *r, const crypto_sign_ed25519_ref_fe25519 *x)
{
  crypto_sign_ed25519_ref_fe25519 t;
  int i;
  for(i=0;i<32;i++) t.v[i]=x->v[i];
  crypto_sign_ed25519_ref_fe25519_setzero(r);
  crypto_sign_ed25519_ref_fe25519_sub(r, r, &t);
}

void crypto_sign_ed25519_ref_fe25519_add(crypto_sign_ed25519_ref_fe25519 *r, const crypto_sign_ed25519_ref_fe25519 *x, const crypto_sign_ed25519_ref_fe25519 *y)
{
  int i;
  for(i=0;i<32;i++) r->v[i] = x->v[i] + y->v[i];
  reduce_add_sub(r);
}

void crypto_sign_ed25519_ref_fe25519_sub(crypto_sign_ed25519_ref_fe25519 *r, const crypto_sign_ed25519_ref_fe25519 *x, const crypto_sign_ed25519_ref_fe25519 *y)
{
  int i;
  crypto_uint32 t[32];
  t[0] = x->v[0] + 0x1da;
  t[31] = x->v[31] + 0xfe;
  for(i=1;i<31;i++) t[i] = x->v[i] + 0x1fe;
  for(i=0;i<32;i++) r->v[i] = t[i] - y->v[i];
  reduce_add_sub(r);
}

void crypto_sign_ed25519_ref_fe25519_mul(crypto_sign_ed25519_ref_fe25519 *r, const crypto_sign_ed25519_ref_fe25519 *x, const crypto_sign_ed25519_ref_fe25519 *y)
{
  int i,j;
  crypto_uint32 t[63];
  for(i=0;i<63;i++)t[i] = 0;

  for(i=0;i<32;i++)
    for(j=0;j<32;j++)
      t[i+j] += x->v[i] * y->v[j];

  for(i=32;i<63;i++)
    r->v[i-32] = t[i-32] + times38(t[i]);
  r->v[31] = t[31]; /* result now in r[0]...r[31] */

  reduce_mul(r);
}

void crypto_sign_ed25519_ref_fe25519_square(crypto_sign_ed25519_ref_fe25519 *r, const crypto_sign_ed25519_ref_fe25519 *x)
{
  crypto_sign_ed25519_ref_fe25519_mul(r, x, x);
}

void crypto_sign_ed25519_ref_fe25519_invert(crypto_sign_ed25519_ref_fe25519 *r, const crypto_sign_ed25519_ref_fe25519 *x)
{
 crypto_sign_ed25519_ref_fe25519 z2;
 crypto_sign_ed25519_ref_fe25519 z9;
 crypto_sign_ed25519_ref_fe25519 z11;
 crypto_sign_ed25519_ref_fe25519 z2_5_0;
 crypto_sign_ed25519_ref_fe25519 z2_10_0;
 crypto_sign_ed25519_ref_fe25519 z2_20_0;
 crypto_sign_ed25519_ref_fe25519 z2_50_0;
 crypto_sign_ed25519_ref_fe25519 z2_100_0;
 crypto_sign_ed25519_ref_fe25519 t0;
 crypto_sign_ed25519_ref_fe25519 t1;
 int i;

 /* 2 */ crypto_sign_ed25519_ref_fe25519_square(&z2,x);
 /* 4 */ crypto_sign_ed25519_ref_fe25519_square(&t1,&z2);
 /* 8 */ crypto_sign_ed25519_ref_fe25519_square(&t0,&t1);
 /* 9 */ crypto_sign_ed25519_ref_fe25519_mul(&z9,&t0,x);
 /* 11 */ crypto_sign_ed25519_ref_fe25519_mul(&z11,&z9,&z2);
 /* 22 */ crypto_sign_ed25519_ref_fe25519_square(&t0,&z11);
 /* 2^5 - 2^0 = 31 */ crypto_sign_ed25519_ref_fe25519_mul(&z2_5_0,&t0,&z9);

 /* 2^6 - 2^1 */ crypto_sign_ed25519_ref_fe25519_square(&t0,&z2_5_0);
 /* 2^7 - 2^2 */ crypto_sign_ed25519_ref_fe25519_square(&t1,&t0);
 /* 2^8 - 2^3 */ crypto_sign_ed25519_ref_fe25519_square(&t0,&t1);
 /* 2^9 - 2^4 */ crypto_sign_ed25519_ref_fe25519_square(&t1,&t0);
 /* 2^10 - 2^5 */ crypto_sign_ed25519_ref_fe25519_square(&t0,&t1);
 /* 2^10 - 2^0 */ crypto_sign_ed25519_ref_fe25519_mul(&z2_10_0,&t0,&z2_5_0);

 /* 2^11 - 2^1 */ crypto_sign_ed25519_ref_fe25519_square(&t0,&z2_10_0);
 /* 2^12 - 2^2 */ crypto_sign_ed25519_ref_fe25519_square(&t1,&t0);
 /* 2^20 - 2^10 */ for (i = 2;i < 10;i += 2) { crypto_sign_ed25519_ref_fe25519_square(&t0,&t1); crypto_sign_ed25519_ref_fe25519_square(&t1,&t0); }
 /* 2^20 - 2^0 */ crypto_sign_ed25519_ref_fe25519_mul(&z2_20_0,&t1,&z2_10_0);

 /* 2^21 - 2^1 */ crypto_sign_ed25519_ref_fe25519_square(&t0,&z2_20_0);
 /* 2^22 - 2^2 */ crypto_sign_ed25519_ref_fe25519_square(&t1,&t0);
 /* 2^40 - 2^20 */ for (i = 2;i < 20;i += 2) { crypto_sign_ed25519_ref_fe25519_square(&t0,&t1); crypto_sign_ed25519_ref_fe25519_square(&t1,&t0); }
 /* 2^40 - 2^0 */ crypto_sign_ed25519_ref_fe25519_mul(&t0,&t1,&z2_20_0);

 /* 2^41 - 2^1 */ crypto_sign_ed25519_ref_fe25519_square(&t1,&t0);
 /* 2^42 - 2^2 */ crypto_sign_ed25519_ref_fe25519_square(&t0,&t1);
 /* 2^50 - 2^10 */ for (i = 2;i < 10;i += 2) { crypto_sign_ed25519_ref_fe25519_square(&t1,&t0); crypto_sign_ed25519_ref_fe25519_square(&t0,&t1); }
 /* 2^50 - 2^0 */ crypto_sign_ed25519_ref_fe25519_mul(&z2_50_0,&t0,&z2_10_0);

 /* 2^51 - 2^1 */ crypto_sign_ed25519_ref_fe25519_square(&t0,&z2_50_0);
 /* 2^52 - 2^2 */ crypto_sign_ed25519_ref_fe25519_square(&t1,&t0);
 /* 2^100 - 2^50 */ for (i = 2;i < 50;i += 2) { crypto_sign_ed25519_ref_fe25519_square(&t0,&t1); crypto_sign_ed25519_ref_fe25519_square(&t1,&t0); }
 /* 2^100 - 2^0 */ crypto_sign_ed25519_ref_fe25519_mul(&z2_100_0,&t1,&z2_50_0);

 /* 2^101 - 2^1 */ crypto_sign_ed25519_ref_fe25519_square(&t1,&z2_100_0);
 /* 2^102 - 2^2 */ crypto_sign_ed25519_ref_fe25519_square(&t0,&t1);
 /* 2^200 - 2^100 */ for (i = 2;i < 100;i += 2) { crypto_sign_ed25519_ref_fe25519_square(&t1,&t0); crypto_sign_ed25519_ref_fe25519_square(&t0,&t1); }
 /* 2^200 - 2^0 */ crypto_sign_ed25519_ref_fe25519_mul(&t1,&t0,&z2_100_0);

 /* 2^201 - 2^1 */ crypto_sign_ed25519_ref_fe25519_square(&t0,&t1);
 /* 2^202 - 2^2 */ crypto_sign_ed25519_ref_fe25519_square(&t1,&t0);
 /* 2^250 - 2^50 */ for (i = 2;i < 50;i += 2) { crypto_sign_ed25519_ref_fe25519_square(&t0,&t1); crypto_sign_ed25519_ref_fe25519_square(&t1,&t0); }
 /* 2^250 - 2^0 */ crypto_sign_ed25519_ref_fe25519_mul(&t0,&t1,&z2_50_0);

 /* 2^251 - 2^1 */ crypto_sign_ed25519_ref_fe25519_square(&t1,&t0);
 /* 2^252 - 2^2 */ crypto_sign_ed25519_ref_fe25519_square(&t0,&t1);
 /* 2^253 - 2^3 */ crypto_sign_ed25519_ref_fe25519_square(&t1,&t0);
 /* 2^254 - 2^4 */ crypto_sign_ed25519_ref_fe25519_square(&t0,&t1);
 /* 2^255 - 2^5 */ crypto_sign_ed25519_ref_fe25519_square(&t1,&t0);
 /* 2^255 - 21 */ crypto_sign_ed25519_ref_fe25519_mul(r,&t1,&z11);
}

void crypto_sign_ed25519_ref_fe25519_pow2523(crypto_sign_ed25519_ref_fe25519 *r, const crypto_sign_ed25519_ref_fe25519 *x)
{
 crypto_sign_ed25519_ref_fe25519 z2;
 crypto_sign_ed25519_ref_fe25519 z9;
 crypto_sign_ed25519_ref_fe25519 z11;
 crypto_sign_ed25519_ref_fe25519 z2_5_0;
 crypto_sign_ed25519_ref_fe25519 z2_10_0;
 crypto_sign_ed25519_ref_fe25519 z2_20_0;
 crypto_sign_ed25519_ref_fe25519 z2_50_0;
 crypto_sign_ed25519_ref_fe25519 z2_100_0;
 crypto_sign_ed25519_ref_fe25519 t;
 int i;

 /* 2 */ crypto_sign_ed25519_ref_fe25519_square(&z2,x);
 /* 4 */ crypto_sign_ed25519_ref_fe25519_square(&t,&z2);
 /* 8 */ crypto_sign_ed25519_ref_fe25519_square(&t,&t);
 /* 9 */ crypto_sign_ed25519_ref_fe25519_mul(&z9,&t,x);
 /* 11 */ crypto_sign_ed25519_ref_fe25519_mul(&z11,&z9,&z2);
 /* 22 */ crypto_sign_ed25519_ref_fe25519_square(&t,&z11);
 /* 2^5 - 2^0 = 31 */ crypto_sign_ed25519_ref_fe25519_mul(&z2_5_0,&t,&z9);

 /* 2^6 - 2^1 */ crypto_sign_ed25519_ref_fe25519_square(&t,&z2_5_0);
 /* 2^10 - 2^5 */ for (i = 1;i < 5;i++) { crypto_sign_ed25519_ref_fe25519_square(&t,&t); }
 /* 2^10 - 2^0 */ crypto_sign_ed25519_ref_fe25519_mul(&z2_10_0,&t,&z2_5_0);

 /* 2^11 - 2^1 */ crypto_sign_ed25519_ref_fe25519_square(&t,&z2_10_0);
 /* 2^20 - 2^10 */ for (i = 1;i < 10;i++) { crypto_sign_ed25519_ref_fe25519_square(&t,&t); }
 /* 2^20 - 2^0 */ crypto_sign_ed25519_ref_fe25519_mul(&z2_20_0,&t,&z2_10_0);

 /* 2^21 - 2^1 */ crypto_sign_ed25519_ref_fe25519_square(&t,&z2_20_0);
 /* 2^40 - 2^20 */ for (i = 1;i < 20;i++) { crypto_sign_ed25519_ref_fe25519_square(&t,&t); }
 /* 2^40 - 2^0 */ crypto_sign_ed25519_ref_fe25519_mul(&t,&t,&z2_20_0);

 /* 2^41 - 2^1 */ crypto_sign_ed25519_ref_fe25519_square(&t,&t);
 /* 2^50 - 2^10 */ for (i = 1;i < 10;i++) { crypto_sign_ed25519_ref_fe25519_square(&t,&t); }
 /* 2^50 - 2^0 */ crypto_sign_ed25519_ref_fe25519_mul(&z2_50_0,&t,&z2_10_0);

 /* 2^51 - 2^1 */ crypto_sign_ed25519_ref_fe25519_square(&t,&z2_50_0);
 /* 2^100 - 2^50 */ for (i = 1;i < 50;i++) { crypto_sign_ed25519_ref_fe25519_square(&t,&t); }
 /* 2^100 - 2^0 */ crypto_sign_ed25519_ref_fe25519_mul(&z2_100_0,&t,&z2_50_0);

 /* 2^101 - 2^1 */ crypto_sign_ed25519_ref_fe25519_square(&t,&z2_100_0);
 /* 2^200 - 2^100 */ for (i = 1;i < 100;i++) { crypto_sign_ed25519_ref_fe25519_square(&t,&t); }
 /* 2^200 - 2^0 */ crypto_sign_ed25519_ref_fe25519_mul(&t,&t,&z2_100_0);

 /* 2^201 - 2^1 */ crypto_sign_ed25519_ref_fe25519_square(&t,&t);
 /* 2^250 - 2^50 */ for (i = 1;i < 50;i++) { crypto_sign_ed25519_ref_fe25519_square(&t,&t); }
 /* 2^250 - 2^0 */ crypto_sign_ed25519_ref_fe25519_mul(&t,&t,&z2_50_0);

 /* 2^251 - 2^1 */ crypto_sign_ed25519_ref_fe25519_square(&t,&t);
 /* 2^252 - 2^2 */ crypto_sign_ed25519_ref_fe25519_square(&t,&t);
 /* 2^252 - 3 */ crypto_sign_ed25519_ref_fe25519_mul(r,&t,x);
}
