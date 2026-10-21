// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2025.2 (64-bit)
// Tool Version Limit: 2025.11
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
#ifndef XCIFRADOR_PARALELO_16_H
#define XCIFRADOR_PARALELO_16_H

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
#include "xcifrador_paralelo_16_hw.h"

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
} XCifrador_paralelo_16_Config;
#endif

typedef struct {
    u64 Control_BaseAddress;
    u32 IsReady;
} XCifrador_paralelo_16;

typedef u32 word_type;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XCifrador_paralelo_16_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XCifrador_paralelo_16_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XCifrador_paralelo_16_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XCifrador_paralelo_16_ReadReg(BaseAddress, RegOffset) \
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
int XCifrador_paralelo_16_Initialize(XCifrador_paralelo_16 *InstancePtr, UINTPTR BaseAddress);
XCifrador_paralelo_16_Config* XCifrador_paralelo_16_LookupConfig(UINTPTR BaseAddress);
#else
int XCifrador_paralelo_16_Initialize(XCifrador_paralelo_16 *InstancePtr, u16 DeviceId);
XCifrador_paralelo_16_Config* XCifrador_paralelo_16_LookupConfig(u16 DeviceId);
#endif
int XCifrador_paralelo_16_CfgInitialize(XCifrador_paralelo_16 *InstancePtr, XCifrador_paralelo_16_Config *ConfigPtr);
#else
int XCifrador_paralelo_16_Initialize(XCifrador_paralelo_16 *InstancePtr, const char* InstanceName);
int XCifrador_paralelo_16_Release(XCifrador_paralelo_16 *InstancePtr);
#endif

void XCifrador_paralelo_16_Start(XCifrador_paralelo_16 *InstancePtr);
u32 XCifrador_paralelo_16_IsDone(XCifrador_paralelo_16 *InstancePtr);
u32 XCifrador_paralelo_16_IsIdle(XCifrador_paralelo_16 *InstancePtr);
u32 XCifrador_paralelo_16_IsReady(XCifrador_paralelo_16 *InstancePtr);
void XCifrador_paralelo_16_EnableAutoRestart(XCifrador_paralelo_16 *InstancePtr);
void XCifrador_paralelo_16_DisableAutoRestart(XCifrador_paralelo_16 *InstancePtr);

void XCifrador_paralelo_16_Set_plaintext_0(XCifrador_paralelo_16 *InstancePtr, u32 Data);
u32 XCifrador_paralelo_16_Get_plaintext_0(XCifrador_paralelo_16 *InstancePtr);
void XCifrador_paralelo_16_Set_plaintext_1(XCifrador_paralelo_16 *InstancePtr, u32 Data);
u32 XCifrador_paralelo_16_Get_plaintext_1(XCifrador_paralelo_16 *InstancePtr);
void XCifrador_paralelo_16_Set_plaintext_2(XCifrador_paralelo_16 *InstancePtr, u32 Data);
u32 XCifrador_paralelo_16_Get_plaintext_2(XCifrador_paralelo_16 *InstancePtr);
void XCifrador_paralelo_16_Set_plaintext_3(XCifrador_paralelo_16 *InstancePtr, u32 Data);
u32 XCifrador_paralelo_16_Get_plaintext_3(XCifrador_paralelo_16 *InstancePtr);
void XCifrador_paralelo_16_Set_plaintext_4(XCifrador_paralelo_16 *InstancePtr, u32 Data);
u32 XCifrador_paralelo_16_Get_plaintext_4(XCifrador_paralelo_16 *InstancePtr);
void XCifrador_paralelo_16_Set_plaintext_5(XCifrador_paralelo_16 *InstancePtr, u32 Data);
u32 XCifrador_paralelo_16_Get_plaintext_5(XCifrador_paralelo_16 *InstancePtr);
void XCifrador_paralelo_16_Set_plaintext_6(XCifrador_paralelo_16 *InstancePtr, u32 Data);
u32 XCifrador_paralelo_16_Get_plaintext_6(XCifrador_paralelo_16 *InstancePtr);
void XCifrador_paralelo_16_Set_plaintext_7(XCifrador_paralelo_16 *InstancePtr, u32 Data);
u32 XCifrador_paralelo_16_Get_plaintext_7(XCifrador_paralelo_16 *InstancePtr);
void XCifrador_paralelo_16_Set_plaintext_8(XCifrador_paralelo_16 *InstancePtr, u32 Data);
u32 XCifrador_paralelo_16_Get_plaintext_8(XCifrador_paralelo_16 *InstancePtr);
void XCifrador_paralelo_16_Set_plaintext_9(XCifrador_paralelo_16 *InstancePtr, u32 Data);
u32 XCifrador_paralelo_16_Get_plaintext_9(XCifrador_paralelo_16 *InstancePtr);
void XCifrador_paralelo_16_Set_plaintext_10(XCifrador_paralelo_16 *InstancePtr, u32 Data);
u32 XCifrador_paralelo_16_Get_plaintext_10(XCifrador_paralelo_16 *InstancePtr);
void XCifrador_paralelo_16_Set_plaintext_11(XCifrador_paralelo_16 *InstancePtr, u32 Data);
u32 XCifrador_paralelo_16_Get_plaintext_11(XCifrador_paralelo_16 *InstancePtr);
void XCifrador_paralelo_16_Set_plaintext_12(XCifrador_paralelo_16 *InstancePtr, u32 Data);
u32 XCifrador_paralelo_16_Get_plaintext_12(XCifrador_paralelo_16 *InstancePtr);
void XCifrador_paralelo_16_Set_plaintext_13(XCifrador_paralelo_16 *InstancePtr, u32 Data);
u32 XCifrador_paralelo_16_Get_plaintext_13(XCifrador_paralelo_16 *InstancePtr);
void XCifrador_paralelo_16_Set_plaintext_14(XCifrador_paralelo_16 *InstancePtr, u32 Data);
u32 XCifrador_paralelo_16_Get_plaintext_14(XCifrador_paralelo_16 *InstancePtr);
void XCifrador_paralelo_16_Set_plaintext_15(XCifrador_paralelo_16 *InstancePtr, u32 Data);
u32 XCifrador_paralelo_16_Get_plaintext_15(XCifrador_paralelo_16 *InstancePtr);
void XCifrador_paralelo_16_Set_key(XCifrador_paralelo_16 *InstancePtr, u64 Data);
u64 XCifrador_paralelo_16_Get_key(XCifrador_paralelo_16 *InstancePtr);
u32 XCifrador_paralelo_16_Get_ciphertext_0(XCifrador_paralelo_16 *InstancePtr);
u32 XCifrador_paralelo_16_Get_ciphertext_0_vld(XCifrador_paralelo_16 *InstancePtr);
u32 XCifrador_paralelo_16_Get_ciphertext_1(XCifrador_paralelo_16 *InstancePtr);
u32 XCifrador_paralelo_16_Get_ciphertext_1_vld(XCifrador_paralelo_16 *InstancePtr);
u32 XCifrador_paralelo_16_Get_ciphertext_2(XCifrador_paralelo_16 *InstancePtr);
u32 XCifrador_paralelo_16_Get_ciphertext_2_vld(XCifrador_paralelo_16 *InstancePtr);
u32 XCifrador_paralelo_16_Get_ciphertext_3(XCifrador_paralelo_16 *InstancePtr);
u32 XCifrador_paralelo_16_Get_ciphertext_3_vld(XCifrador_paralelo_16 *InstancePtr);
u32 XCifrador_paralelo_16_Get_ciphertext_4(XCifrador_paralelo_16 *InstancePtr);
u32 XCifrador_paralelo_16_Get_ciphertext_4_vld(XCifrador_paralelo_16 *InstancePtr);
u32 XCifrador_paralelo_16_Get_ciphertext_5(XCifrador_paralelo_16 *InstancePtr);
u32 XCifrador_paralelo_16_Get_ciphertext_5_vld(XCifrador_paralelo_16 *InstancePtr);
u32 XCifrador_paralelo_16_Get_ciphertext_6(XCifrador_paralelo_16 *InstancePtr);
u32 XCifrador_paralelo_16_Get_ciphertext_6_vld(XCifrador_paralelo_16 *InstancePtr);
u32 XCifrador_paralelo_16_Get_ciphertext_7(XCifrador_paralelo_16 *InstancePtr);
u32 XCifrador_paralelo_16_Get_ciphertext_7_vld(XCifrador_paralelo_16 *InstancePtr);
u32 XCifrador_paralelo_16_Get_ciphertext_8(XCifrador_paralelo_16 *InstancePtr);
u32 XCifrador_paralelo_16_Get_ciphertext_8_vld(XCifrador_paralelo_16 *InstancePtr);
u32 XCifrador_paralelo_16_Get_ciphertext_9(XCifrador_paralelo_16 *InstancePtr);
u32 XCifrador_paralelo_16_Get_ciphertext_9_vld(XCifrador_paralelo_16 *InstancePtr);
u32 XCifrador_paralelo_16_Get_ciphertext_10(XCifrador_paralelo_16 *InstancePtr);
u32 XCifrador_paralelo_16_Get_ciphertext_10_vld(XCifrador_paralelo_16 *InstancePtr);
u32 XCifrador_paralelo_16_Get_ciphertext_11(XCifrador_paralelo_16 *InstancePtr);
u32 XCifrador_paralelo_16_Get_ciphertext_11_vld(XCifrador_paralelo_16 *InstancePtr);
u32 XCifrador_paralelo_16_Get_ciphertext_12(XCifrador_paralelo_16 *InstancePtr);
u32 XCifrador_paralelo_16_Get_ciphertext_12_vld(XCifrador_paralelo_16 *InstancePtr);
u32 XCifrador_paralelo_16_Get_ciphertext_13(XCifrador_paralelo_16 *InstancePtr);
u32 XCifrador_paralelo_16_Get_ciphertext_13_vld(XCifrador_paralelo_16 *InstancePtr);
u32 XCifrador_paralelo_16_Get_ciphertext_14(XCifrador_paralelo_16 *InstancePtr);
u32 XCifrador_paralelo_16_Get_ciphertext_14_vld(XCifrador_paralelo_16 *InstancePtr);
u32 XCifrador_paralelo_16_Get_ciphertext_15(XCifrador_paralelo_16 *InstancePtr);
u32 XCifrador_paralelo_16_Get_ciphertext_15_vld(XCifrador_paralelo_16 *InstancePtr);

void XCifrador_paralelo_16_InterruptGlobalEnable(XCifrador_paralelo_16 *InstancePtr);
void XCifrador_paralelo_16_InterruptGlobalDisable(XCifrador_paralelo_16 *InstancePtr);
void XCifrador_paralelo_16_InterruptEnable(XCifrador_paralelo_16 *InstancePtr, u32 Mask);
void XCifrador_paralelo_16_InterruptDisable(XCifrador_paralelo_16 *InstancePtr, u32 Mask);
void XCifrador_paralelo_16_InterruptClear(XCifrador_paralelo_16 *InstancePtr, u32 Mask);
u32 XCifrador_paralelo_16_InterruptGetEnabled(XCifrador_paralelo_16 *InstancePtr);
u32 XCifrador_paralelo_16_InterruptGetStatus(XCifrador_paralelo_16 *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
