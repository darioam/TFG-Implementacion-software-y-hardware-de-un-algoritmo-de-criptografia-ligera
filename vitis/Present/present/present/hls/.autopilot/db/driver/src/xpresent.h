// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2025.2 (64-bit)
// Tool Version Limit: 2025.11
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
#ifndef XPRESENT_H
#define XPRESENT_H

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
#include "xpresent_hw.h"

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
} XPresent_Config;
#endif

typedef struct {
    u64 Control_BaseAddress;
    u32 IsReady;
} XPresent;

typedef u32 word_type;

typedef struct {
    u32 word_0;
    u32 word_1;
    u32 word_2;
} XPresent_Key;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XPresent_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XPresent_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XPresent_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XPresent_ReadReg(BaseAddress, RegOffset) \
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
int XPresent_Initialize(XPresent *InstancePtr, UINTPTR BaseAddress);
XPresent_Config* XPresent_LookupConfig(UINTPTR BaseAddress);
#else
int XPresent_Initialize(XPresent *InstancePtr, u16 DeviceId);
XPresent_Config* XPresent_LookupConfig(u16 DeviceId);
#endif
int XPresent_CfgInitialize(XPresent *InstancePtr, XPresent_Config *ConfigPtr);
#else
int XPresent_Initialize(XPresent *InstancePtr, const char* InstanceName);
int XPresent_Release(XPresent *InstancePtr);
#endif

void XPresent_Start(XPresent *InstancePtr);
u32 XPresent_IsDone(XPresent *InstancePtr);
u32 XPresent_IsIdle(XPresent *InstancePtr);
u32 XPresent_IsReady(XPresent *InstancePtr);
void XPresent_EnableAutoRestart(XPresent *InstancePtr);
void XPresent_DisableAutoRestart(XPresent *InstancePtr);
u64 XPresent_Get_return(XPresent *InstancePtr);

void XPresent_Set_plaintext(XPresent *InstancePtr, u64 Data);
u64 XPresent_Get_plaintext(XPresent *InstancePtr);
void XPresent_Set_key(XPresent *InstancePtr, XPresent_Key Data);
XPresent_Key XPresent_Get_key(XPresent *InstancePtr);

void XPresent_InterruptGlobalEnable(XPresent *InstancePtr);
void XPresent_InterruptGlobalDisable(XPresent *InstancePtr);
void XPresent_InterruptEnable(XPresent *InstancePtr, u32 Mask);
void XPresent_InterruptDisable(XPresent *InstancePtr, u32 Mask);
void XPresent_InterruptClear(XPresent *InstancePtr, u32 Mask);
u32 XPresent_InterruptGetEnabled(XPresent *InstancePtr);
u32 XPresent_InterruptGetStatus(XPresent *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
