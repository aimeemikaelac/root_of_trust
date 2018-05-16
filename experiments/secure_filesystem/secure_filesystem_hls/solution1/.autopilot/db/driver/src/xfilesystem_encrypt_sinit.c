// ==============================================================
// File generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.1
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ==============================================================

#ifndef __linux__

#include "xstatus.h"
#include "xparameters.h"
#include "xfilesystem_encrypt.h"

extern XFilesystem_encrypt_Config XFilesystem_encrypt_ConfigTable[];

XFilesystem_encrypt_Config *XFilesystem_encrypt_LookupConfig(u16 DeviceId) {
	XFilesystem_encrypt_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XFILESYSTEM_ENCRYPT_NUM_INSTANCES; Index++) {
		if (XFilesystem_encrypt_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XFilesystem_encrypt_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XFilesystem_encrypt_Initialize(XFilesystem_encrypt *InstancePtr, u16 DeviceId) {
	XFilesystem_encrypt_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XFilesystem_encrypt_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XFilesystem_encrypt_CfgInitialize(InstancePtr, ConfigPtr);
}

#endif

