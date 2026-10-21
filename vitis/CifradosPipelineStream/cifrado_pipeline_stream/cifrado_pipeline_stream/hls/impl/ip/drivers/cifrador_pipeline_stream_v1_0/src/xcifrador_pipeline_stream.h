// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2025.2 (64-bit)
// Tool Version Limit: 2025.11
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
#ifndef XCIFRADOR_PIPELINE_STREAM_H
#define XCIFRADOR_PIPELINE_STREAM_H

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
#include "xcifrador_pipeline_stream_hw.h"

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
} XCifrador_pipeline_stream_Config;
#endif

typedef struct {
    u64 Control_BaseAddress;
    u32 IsReady;
} XCifrador_pipeline_stream;

typedef u32 word_type;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XCifrador_pipeline_stream_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XCifrador_pipeline_stream_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XCifrador_pipeline_stream_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XCifrador_pipeline_stream_ReadReg(BaseAddress, RegOffset) \
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
int XCifrador_pipeline_stream_Initialize(XCifrador_pipeline_stream *InstancePtr, UINTPTR BaseAddress);
XCifrador_pipeline_stream_Config* XCifrador_pipeline_stream_LookupConfig(UINTPTR BaseAddress);
#else
int XCifrador_pipeline_stream_Initialize(XCifrador_pipeline_stream *InstancePtr, u16 DeviceId);
XCifrador_pipeline_stream_Config* XCifrador_pipeline_stream_LookupConfig(u16 DeviceId);
#endif
int XCifrador_pipeline_stream_CfgInitialize(XCifrador_pipeline_stream *InstancePtr, XCifrador_pipeline_stream_Config *ConfigPtr);
#else
int XCifrador_pipeline_stream_Initialize(XCifrador_pipeline_stream *InstancePtr, const char* InstanceName);
int XCifrador_pipeline_stream_Release(XCifrador_pipeline_stream *InstancePtr);
#endif

void XCifrador_pipeline_stream_Start(XCifrador_pipeline_stream *InstancePtr);
u32 XCifrador_pipeline_stream_IsDone(XCifrador_pipeline_stream *InstancePtr);
u32 XCifrador_pipeline_stream_IsIdle(XCifrador_pipeline_stream *InstancePtr);
u32 XCifrador_pipeline_stream_IsReady(XCifrador_pipeline_stream *InstancePtr);
void XCifrador_pipeline_stream_EnableAutoRestart(XCifrador_pipeline_stream *InstancePtr);
void XCifrador_pipeline_stream_DisableAutoRestart(XCifrador_pipeline_stream *InstancePtr);

void XCifrador_pipeline_stream_Set_key(XCifrador_pipeline_stream *InstancePtr, u64 Data);
u64 XCifrador_pipeline_stream_Get_key(XCifrador_pipeline_stream *InstancePtr);

void XCifrador_pipeline_stream_InterruptGlobalEnable(XCifrador_pipeline_stream *InstancePtr);
void XCifrador_pipeline_stream_InterruptGlobalDisable(XCifrador_pipeline_stream *InstancePtr);
void XCifrador_pipeline_stream_InterruptEnable(XCifrador_pipeline_stream *InstancePtr, u32 Mask);
void XCifrador_pipeline_stream_InterruptDisable(XCifrador_pipeline_stream *InstancePtr, u32 Mask);
void XCifrador_pipeline_stream_InterruptClear(XCifrador_pipeline_stream *InstancePtr, u32 Mask);
u32 XCifrador_pipeline_stream_InterruptGetEnabled(XCifrador_pipeline_stream *InstancePtr);
u32 XCifrador_pipeline_stream_InterruptGetStatus(XCifrador_pipeline_stream *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
