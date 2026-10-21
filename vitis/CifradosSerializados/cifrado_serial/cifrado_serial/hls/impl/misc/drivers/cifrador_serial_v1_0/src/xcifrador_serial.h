// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2025.2 (64-bit)
// Tool Version Limit: 2025.11
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
#ifndef XCIFRADOR_SERIAL_H
#define XCIFRADOR_SERIAL_H

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
#include "xcifrador_serial_hw.h"

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
} XCifrador_serial_Config;
#endif

typedef struct {
    u64 Control_BaseAddress;
    u32 IsReady;
} XCifrador_serial;

typedef u32 word_type;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XCifrador_serial_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XCifrador_serial_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XCifrador_serial_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XCifrador_serial_ReadReg(BaseAddress, RegOffset) \
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
int XCifrador_serial_Initialize(XCifrador_serial *InstancePtr, UINTPTR BaseAddress);
XCifrador_serial_Config* XCifrador_serial_LookupConfig(UINTPTR BaseAddress);
#else
int XCifrador_serial_Initialize(XCifrador_serial *InstancePtr, u16 DeviceId);
XCifrador_serial_Config* XCifrador_serial_LookupConfig(u16 DeviceId);
#endif
int XCifrador_serial_CfgInitialize(XCifrador_serial *InstancePtr, XCifrador_serial_Config *ConfigPtr);
#else
int XCifrador_serial_Initialize(XCifrador_serial *InstancePtr, const char* InstanceName);
int XCifrador_serial_Release(XCifrador_serial *InstancePtr);
#endif

void XCifrador_serial_Start(XCifrador_serial *InstancePtr);
u32 XCifrador_serial_IsDone(XCifrador_serial *InstancePtr);
u32 XCifrador_serial_IsIdle(XCifrador_serial *InstancePtr);
u32 XCifrador_serial_IsReady(XCifrador_serial *InstancePtr);
void XCifrador_serial_EnableAutoRestart(XCifrador_serial *InstancePtr);
void XCifrador_serial_DisableAutoRestart(XCifrador_serial *InstancePtr);
u32 XCifrador_serial_Get_return(XCifrador_serial *InstancePtr);

void XCifrador_serial_Set_plaintext(XCifrador_serial *InstancePtr, u32 Data);
u32 XCifrador_serial_Get_plaintext(XCifrador_serial *InstancePtr);
void XCifrador_serial_Set_key(XCifrador_serial *InstancePtr, u64 Data);
u64 XCifrador_serial_Get_key(XCifrador_serial *InstancePtr);

void XCifrador_serial_InterruptGlobalEnable(XCifrador_serial *InstancePtr);
void XCifrador_serial_InterruptGlobalDisable(XCifrador_serial *InstancePtr);
void XCifrador_serial_InterruptEnable(XCifrador_serial *InstancePtr, u32 Mask);
void XCifrador_serial_InterruptDisable(XCifrador_serial *InstancePtr, u32 Mask);
void XCifrador_serial_InterruptClear(XCifrador_serial *InstancePtr, u32 Mask);
u32 XCifrador_serial_InterruptGetEnabled(XCifrador_serial *InstancePtr);
u32 XCifrador_serial_InterruptGetStatus(XCifrador_serial *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
