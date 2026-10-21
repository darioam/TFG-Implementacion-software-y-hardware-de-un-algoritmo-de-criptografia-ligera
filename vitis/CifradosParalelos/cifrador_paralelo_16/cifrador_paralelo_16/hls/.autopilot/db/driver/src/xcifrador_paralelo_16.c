// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2025.2 (64-bit)
// Tool Version Limit: 2025.11
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
/***************************** Include Files *********************************/
#include "xcifrador_paralelo_16.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XCifrador_paralelo_16_CfgInitialize(XCifrador_paralelo_16 *InstancePtr, XCifrador_paralelo_16_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Control_BaseAddress = ConfigPtr->Control_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XCifrador_paralelo_16_Start(XCifrador_paralelo_16 *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCifrador_paralelo_16_ReadReg(InstancePtr->Control_BaseAddress, XCIFRADOR_PARALELO_16_CONTROL_ADDR_AP_CTRL) & 0x80;
    XCifrador_paralelo_16_WriteReg(InstancePtr->Control_BaseAddress, XCIFRADOR_PARALELO_16_CONTROL_ADDR_AP_CTRL, Data | 0x01);
}

u32 XCifrador_paralelo_16_IsDone(XCifrador_paralelo_16 *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCifrador_paralelo_16_ReadReg(InstancePtr->Control_BaseAddress, XCIFRADOR_PARALELO_16_CONTROL_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XCifrador_paralelo_16_IsIdle(XCifrador_paralelo_16 *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCifrador_paralelo_16_ReadReg(InstancePtr->Control_BaseAddress, XCIFRADOR_PARALELO_16_CONTROL_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XCifrador_paralelo_16_IsReady(XCifrador_paralelo_16 *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCifrador_paralelo_16_ReadReg(InstancePtr->Control_BaseAddress, XCIFRADOR_PARALELO_16_CONTROL_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XCifrador_paralelo_16_EnableAutoRestart(XCifrador_paralelo_16 *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCifrador_paralelo_16_WriteReg(InstancePtr->Control_BaseAddress, XCIFRADOR_PARALELO_16_CONTROL_ADDR_AP_CTRL, 0x80);
}

void XCifrador_paralelo_16_DisableAutoRestart(XCifrador_paralelo_16 *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCifrador_paralelo_16_WriteReg(InstancePtr->Control_BaseAddress, XCIFRADOR_PARALELO_16_CONTROL_ADDR_AP_CTRL, 0);
}

void XCifrador_paralelo_16_Set_plaintext_0(XCifrador_paralelo_16 *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCifrador_paralelo_16_WriteReg(InstancePtr->Control_BaseAddress, XCIFRADOR_PARALELO_16_CONTROL_ADDR_PLAINTEXT_0_DATA, Data);
}

u32 XCifrador_paralelo_16_Get_plaintext_0(XCifrador_paralelo_16 *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCifrador_paralelo_16_ReadReg(InstancePtr->Control_BaseAddress, XCIFRADOR_PARALELO_16_CONTROL_ADDR_PLAINTEXT_0_DATA);
    return Data;
}

void XCifrador_paralelo_16_Set_plaintext_1(XCifrador_paralelo_16 *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCifrador_paralelo_16_WriteReg(InstancePtr->Control_BaseAddress, XCIFRADOR_PARALELO_16_CONTROL_ADDR_PLAINTEXT_1_DATA, Data);
}

u32 XCifrador_paralelo_16_Get_plaintext_1(XCifrador_paralelo_16 *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCifrador_paralelo_16_ReadReg(InstancePtr->Control_BaseAddress, XCIFRADOR_PARALELO_16_CONTROL_ADDR_PLAINTEXT_1_DATA);
    return Data;
}

void XCifrador_paralelo_16_Set_plaintext_2(XCifrador_paralelo_16 *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCifrador_paralelo_16_WriteReg(InstancePtr->Control_BaseAddress, XCIFRADOR_PARALELO_16_CONTROL_ADDR_PLAINTEXT_2_DATA, Data);
}

u32 XCifrador_paralelo_16_Get_plaintext_2(XCifrador_paralelo_16 *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCifrador_paralelo_16_ReadReg(InstancePtr->Control_BaseAddress, XCIFRADOR_PARALELO_16_CONTROL_ADDR_PLAINTEXT_2_DATA);
    return Data;
}

void XCifrador_paralelo_16_Set_plaintext_3(XCifrador_paralelo_16 *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCifrador_paralelo_16_WriteReg(InstancePtr->Control_BaseAddress, XCIFRADOR_PARALELO_16_CONTROL_ADDR_PLAINTEXT_3_DATA, Data);
}

u32 XCifrador_paralelo_16_Get_plaintext_3(XCifrador_paralelo_16 *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCifrador_paralelo_16_ReadReg(InstancePtr->Control_BaseAddress, XCIFRADOR_PARALELO_16_CONTROL_ADDR_PLAINTEXT_3_DATA);
    return Data;
}

void XCifrador_paralelo_16_Set_plaintext_4(XCifrador_paralelo_16 *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCifrador_paralelo_16_WriteReg(InstancePtr->Control_BaseAddress, XCIFRADOR_PARALELO_16_CONTROL_ADDR_PLAINTEXT_4_DATA, Data);
}

u32 XCifrador_paralelo_16_Get_plaintext_4(XCifrador_paralelo_16 *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCifrador_paralelo_16_ReadReg(InstancePtr->Control_BaseAddress, XCIFRADOR_PARALELO_16_CONTROL_ADDR_PLAINTEXT_4_DATA);
    return Data;
}

void XCifrador_paralelo_16_Set_plaintext_5(XCifrador_paralelo_16 *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCifrador_paralelo_16_WriteReg(InstancePtr->Control_BaseAddress, XCIFRADOR_PARALELO_16_CONTROL_ADDR_PLAINTEXT_5_DATA, Data);
}

u32 XCifrador_paralelo_16_Get_plaintext_5(XCifrador_paralelo_16 *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCifrador_paralelo_16_ReadReg(InstancePtr->Control_BaseAddress, XCIFRADOR_PARALELO_16_CONTROL_ADDR_PLAINTEXT_5_DATA);
    return Data;
}

void XCifrador_paralelo_16_Set_plaintext_6(XCifrador_paralelo_16 *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCifrador_paralelo_16_WriteReg(InstancePtr->Control_BaseAddress, XCIFRADOR_PARALELO_16_CONTROL_ADDR_PLAINTEXT_6_DATA, Data);
}

u32 XCifrador_paralelo_16_Get_plaintext_6(XCifrador_paralelo_16 *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCifrador_paralelo_16_ReadReg(InstancePtr->Control_BaseAddress, XCIFRADOR_PARALELO_16_CONTROL_ADDR_PLAINTEXT_6_DATA);
    return Data;
}

void XCifrador_paralelo_16_Set_plaintext_7(XCifrador_paralelo_16 *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCifrador_paralelo_16_WriteReg(InstancePtr->Control_BaseAddress, XCIFRADOR_PARALELO_16_CONTROL_ADDR_PLAINTEXT_7_DATA, Data);
}

u32 XCifrador_paralelo_16_Get_plaintext_7(XCifrador_paralelo_16 *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCifrador_paralelo_16_ReadReg(InstancePtr->Control_BaseAddress, XCIFRADOR_PARALELO_16_CONTROL_ADDR_PLAINTEXT_7_DATA);
    return Data;
}

void XCifrador_paralelo_16_Set_plaintext_8(XCifrador_paralelo_16 *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCifrador_paralelo_16_WriteReg(InstancePtr->Control_BaseAddress, XCIFRADOR_PARALELO_16_CONTROL_ADDR_PLAINTEXT_8_DATA, Data);
}

u32 XCifrador_paralelo_16_Get_plaintext_8(XCifrador_paralelo_16 *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCifrador_paralelo_16_ReadReg(InstancePtr->Control_BaseAddress, XCIFRADOR_PARALELO_16_CONTROL_ADDR_PLAINTEXT_8_DATA);
    return Data;
}

void XCifrador_paralelo_16_Set_plaintext_9(XCifrador_paralelo_16 *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCifrador_paralelo_16_WriteReg(InstancePtr->Control_BaseAddress, XCIFRADOR_PARALELO_16_CONTROL_ADDR_PLAINTEXT_9_DATA, Data);
}

u32 XCifrador_paralelo_16_Get_plaintext_9(XCifrador_paralelo_16 *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCifrador_paralelo_16_ReadReg(InstancePtr->Control_BaseAddress, XCIFRADOR_PARALELO_16_CONTROL_ADDR_PLAINTEXT_9_DATA);
    return Data;
}

void XCifrador_paralelo_16_Set_plaintext_10(XCifrador_paralelo_16 *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCifrador_paralelo_16_WriteReg(InstancePtr->Control_BaseAddress, XCIFRADOR_PARALELO_16_CONTROL_ADDR_PLAINTEXT_10_DATA, Data);
}

u32 XCifrador_paralelo_16_Get_plaintext_10(XCifrador_paralelo_16 *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCifrador_paralelo_16_ReadReg(InstancePtr->Control_BaseAddress, XCIFRADOR_PARALELO_16_CONTROL_ADDR_PLAINTEXT_10_DATA);
    return Data;
}

void XCifrador_paralelo_16_Set_plaintext_11(XCifrador_paralelo_16 *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCifrador_paralelo_16_WriteReg(InstancePtr->Control_BaseAddress, XCIFRADOR_PARALELO_16_CONTROL_ADDR_PLAINTEXT_11_DATA, Data);
}

u32 XCifrador_paralelo_16_Get_plaintext_11(XCifrador_paralelo_16 *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCifrador_paralelo_16_ReadReg(InstancePtr->Control_BaseAddress, XCIFRADOR_PARALELO_16_CONTROL_ADDR_PLAINTEXT_11_DATA);
    return Data;
}

void XCifrador_paralelo_16_Set_plaintext_12(XCifrador_paralelo_16 *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCifrador_paralelo_16_WriteReg(InstancePtr->Control_BaseAddress, XCIFRADOR_PARALELO_16_CONTROL_ADDR_PLAINTEXT_12_DATA, Data);
}

u32 XCifrador_paralelo_16_Get_plaintext_12(XCifrador_paralelo_16 *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCifrador_paralelo_16_ReadReg(InstancePtr->Control_BaseAddress, XCIFRADOR_PARALELO_16_CONTROL_ADDR_PLAINTEXT_12_DATA);
    return Data;
}

void XCifrador_paralelo_16_Set_plaintext_13(XCifrador_paralelo_16 *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCifrador_paralelo_16_WriteReg(InstancePtr->Control_BaseAddress, XCIFRADOR_PARALELO_16_CONTROL_ADDR_PLAINTEXT_13_DATA, Data);
}

u32 XCifrador_paralelo_16_Get_plaintext_13(XCifrador_paralelo_16 *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCifrador_paralelo_16_ReadReg(InstancePtr->Control_BaseAddress, XCIFRADOR_PARALELO_16_CONTROL_ADDR_PLAINTEXT_13_DATA);
    return Data;
}

void XCifrador_paralelo_16_Set_plaintext_14(XCifrador_paralelo_16 *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCifrador_paralelo_16_WriteReg(InstancePtr->Control_BaseAddress, XCIFRADOR_PARALELO_16_CONTROL_ADDR_PLAINTEXT_14_DATA, Data);
}

u32 XCifrador_paralelo_16_Get_plaintext_14(XCifrador_paralelo_16 *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCifrador_paralelo_16_ReadReg(InstancePtr->Control_BaseAddress, XCIFRADOR_PARALELO_16_CONTROL_ADDR_PLAINTEXT_14_DATA);
    return Data;
}

void XCifrador_paralelo_16_Set_plaintext_15(XCifrador_paralelo_16 *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCifrador_paralelo_16_WriteReg(InstancePtr->Control_BaseAddress, XCIFRADOR_PARALELO_16_CONTROL_ADDR_PLAINTEXT_15_DATA, Data);
}

u32 XCifrador_paralelo_16_Get_plaintext_15(XCifrador_paralelo_16 *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCifrador_paralelo_16_ReadReg(InstancePtr->Control_BaseAddress, XCIFRADOR_PARALELO_16_CONTROL_ADDR_PLAINTEXT_15_DATA);
    return Data;
}

void XCifrador_paralelo_16_Set_key(XCifrador_paralelo_16 *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCifrador_paralelo_16_WriteReg(InstancePtr->Control_BaseAddress, XCIFRADOR_PARALELO_16_CONTROL_ADDR_KEY_DATA, (u32)(Data));
    XCifrador_paralelo_16_WriteReg(InstancePtr->Control_BaseAddress, XCIFRADOR_PARALELO_16_CONTROL_ADDR_KEY_DATA + 4, (u32)(Data >> 32));
}

u64 XCifrador_paralelo_16_Get_key(XCifrador_paralelo_16 *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCifrador_paralelo_16_ReadReg(InstancePtr->Control_BaseAddress, XCIFRADOR_PARALELO_16_CONTROL_ADDR_KEY_DATA);
    Data += (u64)XCifrador_paralelo_16_ReadReg(InstancePtr->Control_BaseAddress, XCIFRADOR_PARALELO_16_CONTROL_ADDR_KEY_DATA + 4) << 32;
    return Data;
}

u32 XCifrador_paralelo_16_Get_ciphertext_0(XCifrador_paralelo_16 *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCifrador_paralelo_16_ReadReg(InstancePtr->Control_BaseAddress, XCIFRADOR_PARALELO_16_CONTROL_ADDR_CIPHERTEXT_0_DATA);
    return Data;
}

u32 XCifrador_paralelo_16_Get_ciphertext_0_vld(XCifrador_paralelo_16 *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCifrador_paralelo_16_ReadReg(InstancePtr->Control_BaseAddress, XCIFRADOR_PARALELO_16_CONTROL_ADDR_CIPHERTEXT_0_CTRL);
    return Data & 0x1;
}

u32 XCifrador_paralelo_16_Get_ciphertext_1(XCifrador_paralelo_16 *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCifrador_paralelo_16_ReadReg(InstancePtr->Control_BaseAddress, XCIFRADOR_PARALELO_16_CONTROL_ADDR_CIPHERTEXT_1_DATA);
    return Data;
}

u32 XCifrador_paralelo_16_Get_ciphertext_1_vld(XCifrador_paralelo_16 *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCifrador_paralelo_16_ReadReg(InstancePtr->Control_BaseAddress, XCIFRADOR_PARALELO_16_CONTROL_ADDR_CIPHERTEXT_1_CTRL);
    return Data & 0x1;
}

u32 XCifrador_paralelo_16_Get_ciphertext_2(XCifrador_paralelo_16 *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCifrador_paralelo_16_ReadReg(InstancePtr->Control_BaseAddress, XCIFRADOR_PARALELO_16_CONTROL_ADDR_CIPHERTEXT_2_DATA);
    return Data;
}

u32 XCifrador_paralelo_16_Get_ciphertext_2_vld(XCifrador_paralelo_16 *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCifrador_paralelo_16_ReadReg(InstancePtr->Control_BaseAddress, XCIFRADOR_PARALELO_16_CONTROL_ADDR_CIPHERTEXT_2_CTRL);
    return Data & 0x1;
}

u32 XCifrador_paralelo_16_Get_ciphertext_3(XCifrador_paralelo_16 *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCifrador_paralelo_16_ReadReg(InstancePtr->Control_BaseAddress, XCIFRADOR_PARALELO_16_CONTROL_ADDR_CIPHERTEXT_3_DATA);
    return Data;
}

u32 XCifrador_paralelo_16_Get_ciphertext_3_vld(XCifrador_paralelo_16 *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCifrador_paralelo_16_ReadReg(InstancePtr->Control_BaseAddress, XCIFRADOR_PARALELO_16_CONTROL_ADDR_CIPHERTEXT_3_CTRL);
    return Data & 0x1;
}

u32 XCifrador_paralelo_16_Get_ciphertext_4(XCifrador_paralelo_16 *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCifrador_paralelo_16_ReadReg(InstancePtr->Control_BaseAddress, XCIFRADOR_PARALELO_16_CONTROL_ADDR_CIPHERTEXT_4_DATA);
    return Data;
}

u32 XCifrador_paralelo_16_Get_ciphertext_4_vld(XCifrador_paralelo_16 *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCifrador_paralelo_16_ReadReg(InstancePtr->Control_BaseAddress, XCIFRADOR_PARALELO_16_CONTROL_ADDR_CIPHERTEXT_4_CTRL);
    return Data & 0x1;
}

u32 XCifrador_paralelo_16_Get_ciphertext_5(XCifrador_paralelo_16 *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCifrador_paralelo_16_ReadReg(InstancePtr->Control_BaseAddress, XCIFRADOR_PARALELO_16_CONTROL_ADDR_CIPHERTEXT_5_DATA);
    return Data;
}

u32 XCifrador_paralelo_16_Get_ciphertext_5_vld(XCifrador_paralelo_16 *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCifrador_paralelo_16_ReadReg(InstancePtr->Control_BaseAddress, XCIFRADOR_PARALELO_16_CONTROL_ADDR_CIPHERTEXT_5_CTRL);
    return Data & 0x1;
}

u32 XCifrador_paralelo_16_Get_ciphertext_6(XCifrador_paralelo_16 *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCifrador_paralelo_16_ReadReg(InstancePtr->Control_BaseAddress, XCIFRADOR_PARALELO_16_CONTROL_ADDR_CIPHERTEXT_6_DATA);
    return Data;
}

u32 XCifrador_paralelo_16_Get_ciphertext_6_vld(XCifrador_paralelo_16 *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCifrador_paralelo_16_ReadReg(InstancePtr->Control_BaseAddress, XCIFRADOR_PARALELO_16_CONTROL_ADDR_CIPHERTEXT_6_CTRL);
    return Data & 0x1;
}

u32 XCifrador_paralelo_16_Get_ciphertext_7(XCifrador_paralelo_16 *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCifrador_paralelo_16_ReadReg(InstancePtr->Control_BaseAddress, XCIFRADOR_PARALELO_16_CONTROL_ADDR_CIPHERTEXT_7_DATA);
    return Data;
}

u32 XCifrador_paralelo_16_Get_ciphertext_7_vld(XCifrador_paralelo_16 *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCifrador_paralelo_16_ReadReg(InstancePtr->Control_BaseAddress, XCIFRADOR_PARALELO_16_CONTROL_ADDR_CIPHERTEXT_7_CTRL);
    return Data & 0x1;
}

u32 XCifrador_paralelo_16_Get_ciphertext_8(XCifrador_paralelo_16 *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCifrador_paralelo_16_ReadReg(InstancePtr->Control_BaseAddress, XCIFRADOR_PARALELO_16_CONTROL_ADDR_CIPHERTEXT_8_DATA);
    return Data;
}

u32 XCifrador_paralelo_16_Get_ciphertext_8_vld(XCifrador_paralelo_16 *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCifrador_paralelo_16_ReadReg(InstancePtr->Control_BaseAddress, XCIFRADOR_PARALELO_16_CONTROL_ADDR_CIPHERTEXT_8_CTRL);
    return Data & 0x1;
}

u32 XCifrador_paralelo_16_Get_ciphertext_9(XCifrador_paralelo_16 *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCifrador_paralelo_16_ReadReg(InstancePtr->Control_BaseAddress, XCIFRADOR_PARALELO_16_CONTROL_ADDR_CIPHERTEXT_9_DATA);
    return Data;
}

u32 XCifrador_paralelo_16_Get_ciphertext_9_vld(XCifrador_paralelo_16 *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCifrador_paralelo_16_ReadReg(InstancePtr->Control_BaseAddress, XCIFRADOR_PARALELO_16_CONTROL_ADDR_CIPHERTEXT_9_CTRL);
    return Data & 0x1;
}

u32 XCifrador_paralelo_16_Get_ciphertext_10(XCifrador_paralelo_16 *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCifrador_paralelo_16_ReadReg(InstancePtr->Control_BaseAddress, XCIFRADOR_PARALELO_16_CONTROL_ADDR_CIPHERTEXT_10_DATA);
    return Data;
}

u32 XCifrador_paralelo_16_Get_ciphertext_10_vld(XCifrador_paralelo_16 *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCifrador_paralelo_16_ReadReg(InstancePtr->Control_BaseAddress, XCIFRADOR_PARALELO_16_CONTROL_ADDR_CIPHERTEXT_10_CTRL);
    return Data & 0x1;
}

u32 XCifrador_paralelo_16_Get_ciphertext_11(XCifrador_paralelo_16 *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCifrador_paralelo_16_ReadReg(InstancePtr->Control_BaseAddress, XCIFRADOR_PARALELO_16_CONTROL_ADDR_CIPHERTEXT_11_DATA);
    return Data;
}

u32 XCifrador_paralelo_16_Get_ciphertext_11_vld(XCifrador_paralelo_16 *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCifrador_paralelo_16_ReadReg(InstancePtr->Control_BaseAddress, XCIFRADOR_PARALELO_16_CONTROL_ADDR_CIPHERTEXT_11_CTRL);
    return Data & 0x1;
}

u32 XCifrador_paralelo_16_Get_ciphertext_12(XCifrador_paralelo_16 *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCifrador_paralelo_16_ReadReg(InstancePtr->Control_BaseAddress, XCIFRADOR_PARALELO_16_CONTROL_ADDR_CIPHERTEXT_12_DATA);
    return Data;
}

u32 XCifrador_paralelo_16_Get_ciphertext_12_vld(XCifrador_paralelo_16 *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCifrador_paralelo_16_ReadReg(InstancePtr->Control_BaseAddress, XCIFRADOR_PARALELO_16_CONTROL_ADDR_CIPHERTEXT_12_CTRL);
    return Data & 0x1;
}

u32 XCifrador_paralelo_16_Get_ciphertext_13(XCifrador_paralelo_16 *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCifrador_paralelo_16_ReadReg(InstancePtr->Control_BaseAddress, XCIFRADOR_PARALELO_16_CONTROL_ADDR_CIPHERTEXT_13_DATA);
    return Data;
}

u32 XCifrador_paralelo_16_Get_ciphertext_13_vld(XCifrador_paralelo_16 *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCifrador_paralelo_16_ReadReg(InstancePtr->Control_BaseAddress, XCIFRADOR_PARALELO_16_CONTROL_ADDR_CIPHERTEXT_13_CTRL);
    return Data & 0x1;
}

u32 XCifrador_paralelo_16_Get_ciphertext_14(XCifrador_paralelo_16 *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCifrador_paralelo_16_ReadReg(InstancePtr->Control_BaseAddress, XCIFRADOR_PARALELO_16_CONTROL_ADDR_CIPHERTEXT_14_DATA);
    return Data;
}

u32 XCifrador_paralelo_16_Get_ciphertext_14_vld(XCifrador_paralelo_16 *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCifrador_paralelo_16_ReadReg(InstancePtr->Control_BaseAddress, XCIFRADOR_PARALELO_16_CONTROL_ADDR_CIPHERTEXT_14_CTRL);
    return Data & 0x1;
}

u32 XCifrador_paralelo_16_Get_ciphertext_15(XCifrador_paralelo_16 *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCifrador_paralelo_16_ReadReg(InstancePtr->Control_BaseAddress, XCIFRADOR_PARALELO_16_CONTROL_ADDR_CIPHERTEXT_15_DATA);
    return Data;
}

u32 XCifrador_paralelo_16_Get_ciphertext_15_vld(XCifrador_paralelo_16 *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCifrador_paralelo_16_ReadReg(InstancePtr->Control_BaseAddress, XCIFRADOR_PARALELO_16_CONTROL_ADDR_CIPHERTEXT_15_CTRL);
    return Data & 0x1;
}

void XCifrador_paralelo_16_InterruptGlobalEnable(XCifrador_paralelo_16 *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCifrador_paralelo_16_WriteReg(InstancePtr->Control_BaseAddress, XCIFRADOR_PARALELO_16_CONTROL_ADDR_GIE, 1);
}

void XCifrador_paralelo_16_InterruptGlobalDisable(XCifrador_paralelo_16 *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCifrador_paralelo_16_WriteReg(InstancePtr->Control_BaseAddress, XCIFRADOR_PARALELO_16_CONTROL_ADDR_GIE, 0);
}

void XCifrador_paralelo_16_InterruptEnable(XCifrador_paralelo_16 *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XCifrador_paralelo_16_ReadReg(InstancePtr->Control_BaseAddress, XCIFRADOR_PARALELO_16_CONTROL_ADDR_IER);
    XCifrador_paralelo_16_WriteReg(InstancePtr->Control_BaseAddress, XCIFRADOR_PARALELO_16_CONTROL_ADDR_IER, Register | Mask);
}

void XCifrador_paralelo_16_InterruptDisable(XCifrador_paralelo_16 *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XCifrador_paralelo_16_ReadReg(InstancePtr->Control_BaseAddress, XCIFRADOR_PARALELO_16_CONTROL_ADDR_IER);
    XCifrador_paralelo_16_WriteReg(InstancePtr->Control_BaseAddress, XCIFRADOR_PARALELO_16_CONTROL_ADDR_IER, Register & (~Mask));
}

void XCifrador_paralelo_16_InterruptClear(XCifrador_paralelo_16 *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCifrador_paralelo_16_WriteReg(InstancePtr->Control_BaseAddress, XCIFRADOR_PARALELO_16_CONTROL_ADDR_ISR, Mask);
}

u32 XCifrador_paralelo_16_InterruptGetEnabled(XCifrador_paralelo_16 *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XCifrador_paralelo_16_ReadReg(InstancePtr->Control_BaseAddress, XCIFRADOR_PARALELO_16_CONTROL_ADDR_IER);
}

u32 XCifrador_paralelo_16_InterruptGetStatus(XCifrador_paralelo_16 *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XCifrador_paralelo_16_ReadReg(InstancePtr->Control_BaseAddress, XCIFRADOR_PARALELO_16_CONTROL_ADDR_ISR);
}

