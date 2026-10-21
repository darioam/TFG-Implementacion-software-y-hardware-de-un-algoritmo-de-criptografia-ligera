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
#include "xcifrador_basico_unroll_16.h"

extern XCifrador_basico_unroll_16_Config XCifrador_basico_unroll_16_ConfigTable[];

#ifdef SDT
XCifrador_basico_unroll_16_Config *XCifrador_basico_unroll_16_LookupConfig(UINTPTR BaseAddress) {
	XCifrador_basico_unroll_16_Config *ConfigPtr = NULL;

	int Index;

	for (Index = (u32)0x0; XCifrador_basico_unroll_16_ConfigTable[Index].Name != NULL; Index++) {
		if (!BaseAddress || XCifrador_basico_unroll_16_ConfigTable[Index].Control_BaseAddress == BaseAddress) {
			ConfigPtr = &XCifrador_basico_unroll_16_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XCifrador_basico_unroll_16_Initialize(XCifrador_basico_unroll_16 *InstancePtr, UINTPTR BaseAddress) {
	XCifrador_basico_unroll_16_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XCifrador_basico_unroll_16_LookupConfig(BaseAddress);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XCifrador_basico_unroll_16_CfgInitialize(InstancePtr, ConfigPtr);
}
#else
XCifrador_basico_unroll_16_Config *XCifrador_basico_unroll_16_LookupConfig(u16 DeviceId) {
	XCifrador_basico_unroll_16_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XCIFRADOR_BASICO_UNROLL_16_NUM_INSTANCES; Index++) {
		if (XCifrador_basico_unroll_16_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XCifrador_basico_unroll_16_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XCifrador_basico_unroll_16_Initialize(XCifrador_basico_unroll_16 *InstancePtr, u16 DeviceId) {
	XCifrador_basico_unroll_16_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XCifrador_basico_unroll_16_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XCifrador_basico_unroll_16_CfgInitialize(InstancePtr, ConfigPtr);
}
#endif

#endif

