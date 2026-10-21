// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2025.2 (64-bit)
// Tool Version Limit: 2025.11
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#ifdef SDT
#include "xparameters.h"
#endif
#include "xcifrador_paralelo_pre_8.h"

extern XCifrador_paralelo_pre_8_Config XCifrador_paralelo_pre_8_ConfigTable[];

#ifdef SDT
XCifrador_paralelo_pre_8_Config *XCifrador_paralelo_pre_8_LookupConfig(UINTPTR BaseAddress) {
	XCifrador_paralelo_pre_8_Config *ConfigPtr = NULL;

	int Index;

	for (Index = (u32)0x0; XCifrador_paralelo_pre_8_ConfigTable[Index].Name != NULL; Index++) {
		if (!BaseAddress || XCifrador_paralelo_pre_8_ConfigTable[Index].Control_BaseAddress == BaseAddress) {
			ConfigPtr = &XCifrador_paralelo_pre_8_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XCifrador_paralelo_pre_8_Initialize(XCifrador_paralelo_pre_8 *InstancePtr, UINTPTR BaseAddress) {
	XCifrador_paralelo_pre_8_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XCifrador_paralelo_pre_8_LookupConfig(BaseAddress);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XCifrador_paralelo_pre_8_CfgInitialize(InstancePtr, ConfigPtr);
}
#else
XCifrador_paralelo_pre_8_Config *XCifrador_paralelo_pre_8_LookupConfig(u16 DeviceId) {
	XCifrador_paralelo_pre_8_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XCIFRADOR_PARALELO_PRE_8_NUM_INSTANCES; Index++) {
		if (XCifrador_paralelo_pre_8_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XCifrador_paralelo_pre_8_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XCifrador_paralelo_pre_8_Initialize(XCifrador_paralelo_pre_8 *InstancePtr, u16 DeviceId) {
	XCifrador_paralelo_pre_8_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XCifrador_paralelo_pre_8_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XCifrador_paralelo_pre_8_CfgInitialize(InstancePtr, ConfigPtr);
}
#endif

#endif

