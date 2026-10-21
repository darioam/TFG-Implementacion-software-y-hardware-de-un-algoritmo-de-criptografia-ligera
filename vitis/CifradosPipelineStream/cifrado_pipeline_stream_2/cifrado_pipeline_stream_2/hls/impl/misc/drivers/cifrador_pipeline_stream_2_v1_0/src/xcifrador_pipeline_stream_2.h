// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2025.2 (64-bit)
// Tool Version Limit: 2025.11
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
#ifndef XCIFRADOR_PIPELINE_STREAM_2_H
#define XCIFRADOR_PIPELINE_STREAM_2_H

#ifdef __cplusplus
extern "C" {
#endif

/***************************** Include Files *********************************/
#ifndef __linux__
#include "xil_types.h"
#include "xil_assert.h"
#include "xstatus.h"
#include "xil_io.h"
#else
#include <stdint.h>
#include <assert.h>
#include <dirent.h>
#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/mman.h>
#include <unistd.h>
#include <stddef.h>
#endif
#include "xcifrador_pipeline_stream_2_hw.h"

/**************************** Type Definitions ******************************/
#ifdef __linux__
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
typedef uint64_t u64;
#else
typedef struct {
#ifdef SDT
    char *Name;
#else
    u16 DeviceId;
#endif
    u64 Control_BaseAddress;
} XCifrador_pipeline_stream_2_Config;
#endif

typedef struct {
    u64 Control_BaseAddress;
    u32 IsReady;
} XCifrador_pipeline_stream_2;

typedef u32 word_type;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XCifrador_pipeline_stream_2_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XCifrador_pipeline_stream_2_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XCifrador_pipeline_stream_2_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XCifrador_pipeline_stream_2_ReadReg(BaseAddress, RegOffset) \
    *(volatile u32*)((BaseAddress) + (RegOffset))

#define Xil_AssertVoid(expr)    assert(expr)
#define Xil_AssertNonvoid(expr) assert(expr)

#define XST_SUCCESS             0
#define XST_DEVICE_NOT_FOUND    2
#define XST_OPEN_DEVICE_FAILED  3
#define XIL_COMPONENT_IS_READY  1
#endif

/************************** Function Prototypes *****************************/
#ifndef __linux__
#ifdef SDT
int XCifrador_pipeline_stream_2_Initialize(XCifrador_pipeline_stream_2 *InstancePtr, UINTPTR BaseAddress);
XCifrador_pipeline_stream_2_Config* XCifrador_pipeline_stream_2_LookupConfig(UINTPTR BaseAddress);
#else
int XCifrador_pipeline_stream_2_Initialize(XCifrador_pipeline_stream_2 *InstancePtr, u16 DeviceId);
XCifrador_pipeline_stream_2_Config* XCifrador_pipeline_stream_2_LookupConfig(u16 DeviceId);
#endif
int XCifrador_pipeline_stream_2_CfgInitialize(XCifrador_pipeline_stream_2 *InstancePtr, XCifrador_pipeline_stream_2_Config *ConfigPtr);
#else
int XCifrador_pipeline_stream_2_Initialize(XCifrador_pipeline_stream_2 *InstancePtr, const char* InstanceName);
int XCifrador_pipeline_stream_2_Release(XCifrador_pipeline_stream_2 *InstancePtr);
#endif

void XCifrador_pipeline_stream_2_Start(XCifrador_pipeline_stream_2 *InstancePtr);
u32 XCifrador_pipeline_stream_2_IsDone(XCifrador_pipeline_stream_2 *InstancePtr);
u32 XCifrador_pipeline_stream_2_IsIdle(XCifrador_pipeline_stream_2 *InstancePtr);
u32 XCifrador_pipeline_stream_2_IsReady(XCifrador_pipeline_stream_2 *InstancePtr);
void XCifrador_pipeline_stream_2_EnableAutoRestart(XCifrador_pipeline_stream_2 *InstancePtr);
void XCifrador_pipeline_stream_2_DisableAutoRestart(XCifrador_pipeline_stream_2 *InstancePtr);

void XCifrador_pipeline_stream_2_Set_key(XCifrador_pipeline_stream_2 *InstancePtr, u64 Data);
u64 XCifrador_pipeline_stream_2_Get_key(XCifrador_pipeline_stream_2 *InstancePtr);

void XCifrador_pipeline_stream_2_InterruptGlobalEnable(XCifrador_pipeline_stream_2 *InstancePtr);
void XCifrador_pipeline_stream_2_InterruptGlobalDisable(XCifrador_pipeline_stream_2 *InstancePtr);
void XCifrador_pipeline_stream_2_InterruptEnable(XCifrador_pipeline_stream_2 *InstancePtr, u32 Mask);
void XCifrador_pipeline_stream_2_InterruptDisable(XCifrador_pipeline_stream_2 *InstancePtr, u32 Mask);
void XCifrador_pipeline_stream_2_InterruptClear(XCifrador_pipeline_stream_2 *InstancePtr, u32 Mask);
u32 XCifrador_pipeline_stream_2_InterruptGetEnabled(XCifrador_pipeline_stream_2 *InstancePtr);
u32 XCifrador_pipeline_stream_2_InterruptGetStatus(XCifrador_pipeline_stream_2 *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
