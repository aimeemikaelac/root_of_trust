#pragma line 1 "contact_discovery_axi/src/contact_discovery.cpp"
#pragma line 1 "contact_discovery_axi/src/contact_discovery.cpp" 1
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
#pragma line 1 "contact_discovery_axi/src/contact_discovery.cpp" 2
#pragma empty_line
//#define DATABASE_CHUNK_SIZE 300
#pragma empty_line
#pragma empty_line
#pragma empty_line
static unsigned char contacts[64*128];
static unsigned char database[64*30000];
static unsigned char current_database_item[64];
static bool results[30000];
static int contacts_size = 0;
static int database_size = 0;
//static int operation_internal = 5;
#pragma empty_line
#pragma empty_line
void _memcpy(unsigned char *dest, unsigned char *src, int length){
 int i;
 for(i=0; i<length; i++){
  dest[i] = src[i];
 }
}
#pragma empty_line
bool compare(int db_index, int contacts_index){
//#pragma HLS PIPELINE
 int i, j;
 bool found = true;
 bool results_local[64];
//	unsigned char contact_local[64];
//	unsigned char db_local[64];
#pragma empty_line
//	_memcpy(contact_local, contacts + contacts_index*64, 64);
//	_memcpy(db_local, database + db_index*64, 64);
 for(i=0; i<64; i++){
//#pragma HLS PIPELINE
//#pragma HLS ALLOCATION instances=MuxnS core
//		assert(contact.empty() == false);
//		assert(db_item.empty() == false);
  results_local[i] = (contacts[contacts_index*64 + i] == database[db_index*64 + i]);
 }
 for(i=0; i<64; i++){
  found &= results_local[i];
 }
 return found;
}
#pragma empty_line
void match_db_contact(int database_index){
//#pragma HLS PIPELINE
 int contacts_index, i;
 bool matched = false;
 bool local_results[128];
 for(contacts_index=0; contacts_index < 128; contacts_index++){
//#pragma HLS DATAFLOW
//#pragma HLS DEPENDENCE variable=compare inter false
//#pragma HLS UNROLL factor=8
//#pragma HLS ALLOCATION instances=MuxnS core
//		printf("stream size: %i\n", db_stream.size());
  local_results[contacts_index] = compare(database_index, contacts_index);
 }
 for(contacts_index = 0; contacts_index<128; contacts_index++){
  matched |= local_results[contacts_index];
 }
 results[database_index] = matched;
}
#pragma empty_line
#pragma empty_line
#pragma empty_line
void contact_discovery(
 int operation,
 unsigned char contact_in[64],
 unsigned char database_in[64],
 bool matched_out[30000],
 int *matched_finished,
 int *error_out,
 int *database_size_out,
 int *contacts_size_out
){_ssdm_SpecArrayDimSize(contact_in,64);_ssdm_SpecArrayDimSize(database_in,64);_ssdm_SpecArrayDimSize(matched_out,30000);
//#pragma HLS ARRAY_PARTITION variable=contacts block factor=64 dim=1
//#pragma HLS ARRAY_PARTITION variable=database block factor=64 dim=1
#pragma HLS INTERFACE ap_vld port=operation
#pragma HLS INTERFACE s_axilite port=return
#pragma HLS INTERFACE ap_none register port=matched_finished
#pragma HLS INTERFACE ap_none register port=contacts_size_out
#pragma HLS INTERFACE s_axilite port=contacts_size_out
#pragma HLS INTERFACE ap_none register port=database_size_out
#pragma HLS INTERFACE s_axilite port=database_size_out
#pragma HLS INTERFACE ap_none register port=error_out
#pragma HLS INTERFACE s_axilite port=matched_finished
#pragma HLS INTERFACE s_axilite port=error_out
#pragma HLS INTERFACE s_axilite register port=operation
#pragma HLS INTERFACE s_axilite port=matched_out
#pragma HLS INTERFACE s_axilite port=database_in
#pragma HLS INTERFACE s_axilite port=contact_in
 int database_index, contacts_index, i;
 bool matched, current_matched;
#pragma empty_line
//	*error_out = 0;
//	*contacts_size_out = 0;
//	*database_size_out = 0;
//	*matched_finished = 0;
#pragma empty_line
//	while(1){
//	switch(operation_internal){
 switch(operation){
  //load contact
  case 0:
   *matched_finished = 0;
   *error_out = 0;
   *contacts_size_out = contacts_size;
   *database_size_out = database_size;
   if(contacts_size >= 128){
    *error_out = 1;
    *contacts_size_out = contacts_size;
   } else{
    _memcpy(contacts + contacts_size*64, contact_in, 64);
    contacts_size++;
    *contacts_size_out = contacts_size;
   }
   break;
  //load database
  case 1:
   *matched_finished = 0;
   *error_out = 0;
   if(database_size >= 30000){
    *error_out = 2;
    *database_size_out = database_size;
   } else{
    _memcpy(database + database_size*64, database_in, 64);
    database_size++;
    *database_size_out = database_size;
   }
   break;
  //run match
  case 2:
   *matched_finished = 0;
   *error_out = 0;
   *contacts_size_out = contacts_size;
   *database_size_out = database_size;
//			for(database_index = 0; database_index < DATABASE_SIZE*64; database_index++){
//				db_stream.write(database[database_index]);
//			}
//			assert(db_stream.size() == DATABASE_SIZE*64);
   for(database_index = 0; database_index < 30000; database_index++){
#pragma HLS PIPELINE
//				for(contacts_index = 0; contacts_index < contacts_size; contacts_index++){
//					current_matched = true;
//					for(i = 0; i<64; i++){
//						if(database[database_index*64 + i] != contacts[contacts_index*64 + i]){
//							current_matched = false;
//							break;
//						}
//					}
//					if(current_matched){
//						matched = true;
//						break;
//					}
//				}
    match_db_contact(database_index);
   }
   for(i=0; i<30000; i++){
#pragma HLS PIPELINE
 matched_out[i] = results[i];
   }
   *matched_finished = 1;
   break;
  // clear database
  case 3:
   *matched_finished = 0;
   *error_out = 0;
#pragma empty_line
   database_size = 0;
#pragma empty_line
   *contacts_size_out = contacts_size;
   *database_size_out = database_size;
   break;
  // clear contacts
  case 4:
   *matched_finished = 0;
   *error_out = 0;
#pragma empty_line
   contacts_size = 0;
#pragma empty_line
   *contacts_size_out = contacts_size;
   *database_size_out = database_size;
   break;
  // idle case
//		case 5:
////			*matched_finished = 0;
////			*error_out = 0;
//			*contacts_size_out = contacts_size;
//			*database_size_out = database_size;
//			operation_internal = operation;
//			break;
  // other cases are errors
  default:
   *contacts_size_out = contacts_size;
   *database_size_out = database_size;
   *matched_finished = 0;
   *error_out = 3;
   break;
 }
//	}
}
