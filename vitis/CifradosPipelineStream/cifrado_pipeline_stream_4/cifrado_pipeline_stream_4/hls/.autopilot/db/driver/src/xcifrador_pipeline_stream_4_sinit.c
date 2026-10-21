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
#include "xcifrador_pipeline_stream_4.h"

extern XCifrador_pipeline_stream_4_Config XCifrador_pipeline_stream_4_ConfigTable[];

#ifdef SDT
XCifrador_pipeline_stream_4_Config *XCifrador_pipeline_stream_4_LookupConfig(UINTPTR BaseAddress) {
	XCifrador_pipeline_stream_4_Config *ConfigPtr = NULL;

	int Index;

	for (Index = (u32)0x0; XCifrador_pipeline_stream_4_ConfigTable[Index].Name != NULL; Index++) {
		if (!BaseAddress || XCifrador_pipeline_stream_4_ConfigTable[Index].Control_BaseAddress == BaseAddress) {
			ConfigPtr = &XCifrador_pipeline_stream_4_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XCifrador_pipeline_stream_4_Initialize(XCifrador_pipeline_stream_4 *InstancePtr, UINTPTR BaseAddress) {
	XCifrador_pipeline_stream_4_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XCifrador_pipeline_stream_4_LookupConfig(BaseAddress);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XCifrador_pipeline_stream_4_CfgInitialize(InstancePtr, ConfigPtr);
}
#else
XCifrador_pipeline_stream_4_Config *XCifrador_pipeline_stream_4_LookupConfig(u16 DeviceId) {
	XCifrador_pipeline_stream_4_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XCIFRADOR_PIPELINE_STREAM_4_NUM_INSTANCES; Index++) {
		if (XCifrador_pipeline_stream_4_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XCifrador_pipeline_stream_4_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XCifrador_pipeline_stream_4_Initialize(XCifrador_pipeline_stream_4 *InstancePtr, u16 DeviceId) {
	XCifrador_pipeline_stream_4_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XCifrador_pipeline_stream_4_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XCifrador_pipeline_stream_4_CfgInitialize(InstancePtr, ConfigPtr);
}
#endif

#endif

