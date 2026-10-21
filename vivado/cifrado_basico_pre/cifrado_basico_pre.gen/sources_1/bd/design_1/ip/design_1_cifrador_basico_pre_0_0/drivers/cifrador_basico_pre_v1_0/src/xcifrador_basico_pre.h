// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2025.2 (64-bit)
// Tool Version Limit: 2025.11
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
#ifndef XCIFRADOR_BASICO_PRE_H
#define XCIFRADOR_BASICO_PRE_H

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
#include "xcifrador_basico_pre_hw.h"

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
} XCifrador_basico_pre_Config;
#endif

typedef struct {
    u64 Control_BaseAddress;
    u32 IsReady;
} XCifrador_basico_pre;

typedef u32 word_type;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XCifrador_basico_pre_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XCifrador_basico_pre_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XCifrador_basico_pre_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XCifrador_basico_pre_ReadReg(BaseAddress, RegOffset) \
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
int XCifrador_basico_pre_Initialize(XCifrador_basico_pre *InstancePtr, UINTPTR BaseAddress);
XCifrador_basico_pre_Config* XCifrador_basico_pre_LookupConfig(UINTPTR BaseAddress);
#else
int XCifrador_basico_pre_Initialize(XCifrador_basico_pre *InstancePtr, u16 DeviceId);
XCifrador_basico_pre_Config* XCifrador_basico_pre_LookupConfig(u16 DeviceId);
#endif
int XCifrador_basico_pre_CfgInitialize(XCifrador_basico_pre *InstancePtr, XCifrador_basico_pre_Config *ConfigPtr);
#else
int XCifrador_basico_pre_Initialize(XCifrador_basico_pre *InstancePtr, const char* InstanceName);
int XCifrador_basico_pre_Release(XCifrador_basico_pre *InstancePtr);
#endif

void XCifrador_basico_pre_Start(XCifrador_basico_pre *InstancePtr);
u32 XCifrador_basico_pre_IsDone(XCifrador_basico_pre *InstancePtr);
u32 XCifrador_basico_pre_IsIdle(XCifrador_basico_pre *InstancePtr);
u32 XCifrador_basico_pre_IsReady(XCifrador_basico_pre *InstancePtr);
void XCifrador_basico_pre_EnableAutoRestart(XCifrador_basico_pre *InstancePtr);
void XCifrador_basico_pre_DisableAutoRestart(XCifrador_basico_pre *InstancePtr);
u32 XCifrador_basico_pre_Get_return(XCifrador_basico_pre *InstancePtr);

void XCifrador_basico_pre_Set_plaintext(XCifrador_basico_pre *InstancePtr, u32 Data);
u32 XCifrador_basico_pre_Get_plaintext(XCifrador_basico_pre *InstancePtr);
void XCifrador_basico_pre_Set_key(XCifrador_basico_pre *InstancePtr, u64 Data);
u64 XCifrador_basico_pre_Get_key(XCifrador_basico_pre *InstancePtr);

void XCifrador_basico_pre_InterruptGlobalEnable(XCifrador_basico_pre *InstancePtr);
void XCifrador_basico_pre_InterruptGlobalDisable(XCifrador_basico_pre *InstancePtr);
void XCifrador_basico_pre_InterruptEnable(XCifrador_basico_pre *InstancePtr, u32 Mask);
void XCifrador_basico_pre_InterruptDisable(XCifrador_basico_pre *InstancePtr, u32 Mask);
void XCifrador_basico_pre_InterruptClear(XCifrador_basico_pre *InstancePtr, u32 Mask);
u32 XCifrador_basico_pre_InterruptGetEnabled(XCifrador_basico_pre *InstancePtr);
u32 XCifrador_basico_pre_InterruptGetStatus(XCifrador_basico_pre *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
