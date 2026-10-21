// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2025.2 (64-bit)
// Tool Version Limit: 2025.11
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
/***************************** Include Files *********************************/
#include "xcifrador_paralelo_stream.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XCifrador_paralelo_stream_CfgInitialize(XCifrador_paralelo_stream *InstancePtr, XCifrador_paralelo_stream_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Control_BaseAddress = ConfigPtr->Control_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XCifrador_paralelo_stream_Start(XCifrador_paralelo_stream *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCifrador_paralelo_stream_ReadReg(InstancePtr->Control_BaseAddress, XCIFRADOR_PARALELO_STREAM_CONTROL_ADDR_AP_CTRL) & 0x80;
    XCifrador_paralelo_stream_WriteReg(InstancePtr->Control_BaseAddress, XCIFRADOR_PARALELO_STREAM_CONTROL_ADDR_AP_CTRL, Data | 0x01);
}

u32 XCifrador_paralelo_stream_IsDone(XCifrador_paralelo_stream *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCifrador_paralelo_stream_ReadReg(InstancePtr->Control_BaseAddress, XCIFRADOR_PARALELO_STREAM_CONTROL_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XCifrador_paralelo_stream_IsIdle(XCifrador_paralelo_stream *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCifrador_paralelo_stream_ReadReg(InstancePtr->Control_BaseAddress, XCIFRADOR_PARALELO_STREAM_CONTROL_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XCifrador_paralelo_stream_IsReady(XCifrador_paralelo_stream *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCifrador_paralelo_stream_ReadReg(InstancePtr->Control_BaseAddress, XCIFRADOR_PARALELO_STREAM_CONTROL_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XCifrador_paralelo_stream_EnableAutoRestart(XCifrador_paralelo_stream *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCifrador_paralelo_stream_WriteReg(InstancePtr->Control_BaseAddress, XCIFRADOR_PARALELO_STREAM_CONTROL_ADDR_AP_CTRL, 0x80);
}

void XCifrador_paralelo_stream_DisableAutoRestart(XCifrador_paralelo_stream *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCifrador_paralelo_stream_WriteReg(InstancePtr->Control_BaseAddress, XCIFRADOR_PARALELO_STREAM_CONTROL_ADDR_AP_CTRL, 0);
}

void XCifrador_paralelo_stream_Set_plaintext0(XCifrador_paralelo_stream *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCifrador_paralelo_stream_WriteReg(InstancePtr->Control_BaseAddress, XCIFRADOR_PARALELO_STREAM_CONTROL_ADDR_PLAINTEXT0_DATA, Data);
}

u32 XCifrador_paralelo_stream_Get_plaintext0(XCifrador_paralelo_stream *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCifrador_paralelo_stream_ReadReg(InstancePtr->Control_BaseAddress, XCIFRADOR_PARALELO_STREAM_CONTROL_ADDR_PLAINTEXT0_DATA);
    return Data;
}

void XCifrador_paralelo_stream_Set_plaintext1(XCifrador_paralelo_stream *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCifrador_paralelo_stream_WriteReg(InstancePtr->Control_BaseAddress, XCIFRADOR_PARALELO_STREAM_CONTROL_ADDR_PLAINTEXT1_DATA, Data);
}

u32 XCifrador_paralelo_stream_Get_plaintext1(XCifrador_paralelo_stream *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCifrador_paralelo_stream_ReadReg(InstancePtr->Control_BaseAddress, XCIFRADOR_PARALELO_STREAM_CONTROL_ADDR_PLAINTEXT1_DATA);
    return Data;
}

void XCifrador_paralelo_stream_Set_plaintext2(XCifrador_paralelo_stream *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCifrador_paralelo_stream_WriteReg(InstancePtr->Control_BaseAddress, XCIFRADOR_PARALELO_STREAM_CONTROL_ADDR_PLAINTEXT2_DATA, Data);
}

u32 XCifrador_paralelo_stream_Get_plaintext2(XCifrador_paralelo_stream *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCifrador_paralelo_stream_ReadReg(InstancePtr->Control_BaseAddress, XCIFRADOR_PARALELO_STREAM_CONTROL_ADDR_PLAINTEXT2_DATA);
    return Data;
}

void XCifrador_paralelo_stream_Set_plaintext3(XCifrador_paralelo_stream *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCifrador_paralelo_stream_WriteReg(InstancePtr->Control_BaseAddress, XCIFRADOR_PARALELO_STREAM_CONTROL_ADDR_PLAINTEXT3_DATA, Data);
}

u32 XCifrador_paralelo_stream_Get_plaintext3(XCifrador_paralelo_stream *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCifrador_paralelo_stream_ReadReg(InstancePtr->Control_BaseAddress, XCIFRADOR_PARALELO_STREAM_CONTROL_ADDR_PLAINTEXT3_DATA);
    return Data;
}

void XCifrador_paralelo_stream_Set_key(XCifrador_paralelo_stream *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCifrador_paralelo_stream_WriteReg(InstancePtr->Control_BaseAddress, XCIFRADOR_PARALELO_STREAM_CONTROL_ADDR_KEY_DATA, (u32)(Data));
    XCifrador_paralelo_stream_WriteReg(InstancePtr->Control_BaseAddress, XCIFRADOR_PARALELO_STREAM_CONTROL_ADDR_KEY_DATA + 4, (u32)(Data >> 32));
}

u64 XCifrador_paralelo_stream_Get_key(XCifrador_paralelo_stream *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCifrador_paralelo_stream_ReadReg(InstancePtr->Control_BaseAddress, XCIFRADOR_PARALELO_STREAM_CONTROL_ADDR_KEY_DATA);
    Data += (u64)XCifrador_paralelo_stream_ReadReg(InstancePtr->Control_BaseAddress, XCIFRADOR_PARALELO_STREAM_CONTROL_ADDR_KEY_DATA + 4) << 32;
    return Data;
}

u32 XCifrador_paralelo_stream_Get_ciphertext0(XCifrador_paralelo_stream *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCifrador_paralelo_stream_ReadReg(InstancePtr->Control_BaseAddress, XCIFRADOR_PARALELO_STREAM_CONTROL_ADDR_CIPHERTEXT0_DATA);
    return Data;
}

u32 XCifrador_paralelo_stream_Get_ciphertext0_vld(XCifrador_paralelo_stream *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCifrador_paralelo_stream_ReadReg(InstancePtr->Control_BaseAddress, XCIFRADOR_PARALELO_STREAM_CONTROL_ADDR_CIPHERTEXT0_CTRL);
    return Data & 0x1;
}

u32 XCifrador_paralelo_stream_Get_ciphertext1(XCifrador_paralelo_stream *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCifrador_paralelo_stream_ReadReg(InstancePtr->Control_BaseAddress, XCIFRADOR_PARALELO_STREAM_CONTROL_ADDR_CIPHERTEXT1_DATA);
    return Data;
}

u32 XCifrador_paralelo_stream_Get_ciphertext1_vld(XCifrador_paralelo_stream *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCifrador_paralelo_stream_ReadReg(InstancePtr->Control_BaseAddress, XCIFRADOR_PARALELO_STREAM_CONTROL_ADDR_CIPHERTEXT1_CTRL);
    return Data & 0x1;
}

u32 XCifrador_paralelo_stream_Get_ciphertext2(XCifrador_paralelo_stream *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCifrador_paralelo_stream_ReadReg(InstancePtr->Control_BaseAddress, XCIFRADOR_PARALELO_STREAM_CONTROL_ADDR_CIPHERTEXT2_DATA);
    return Data;
}

u32 XCifrador_paralelo_stream_Get_ciphertext2_vld(XCifrador_paralelo_stream *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCifrador_paralelo_stream_ReadReg(InstancePtr->Control_BaseAddress, XCIFRADOR_PARALELO_STREAM_CONTROL_ADDR_CIPHERTEXT2_CTRL);
    return Data & 0x1;
}

u32 XCifrador_paralelo_stream_Get_ciphertext3(XCifrador_paralelo_stream *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCifrador_paralelo_stream_ReadReg(InstancePtr->Control_BaseAddress, XCIFRADOR_PARALELO_STREAM_CONTROL_ADDR_CIPHERTEXT3_DATA);
    return Data;
}

u32 XCifrador_paralelo_stream_Get_ciphertext3_vld(XCifrador_paralelo_stream *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCifrador_paralelo_stream_ReadReg(InstancePtr->Control_BaseAddress, XCIFRADOR_PARALELO_STREAM_CONTROL_ADDR_CIPHERTEXT3_CTRL);
    return Data & 0x1;
}

void XCifrador_paralelo_stream_InterruptGlobalEnable(XCifrador_paralelo_stream *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCifrador_paralelo_stream_WriteReg(InstancePtr->Control_BaseAddress, XCIFRADOR_PARALELO_STREAM_CONTROL_ADDR_GIE, 1);
}

void XCifrador_paralelo_stream_InterruptGlobalDisable(XCifrador_paralelo_stream *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCifrador_paralelo_stream_WriteReg(InstancePtr->Control_BaseAddress, XCIFRADOR_PARALELO_STREAM_CONTROL_ADDR_GIE, 0);
}

void XCifrador_paralelo_stream_InterruptEnable(XCifrador_paralelo_stream *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XCifrador_paralelo_stream_ReadReg(InstancePtr->Control_BaseAddress, XCIFRADOR_PARALELO_STREAM_CONTROL_ADDR_IER);
    XCifrador_paralelo_stream_WriteReg(InstancePtr->Control_BaseAddress, XCIFRADOR_PARALELO_STREAM_CONTROL_ADDR_IER, Register | Mask);
}

void XCifrador_paralelo_stream_InterruptDisable(XCifrador_paralelo_stream *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XCifrador_paralelo_stream_ReadReg(InstancePtr->Control_BaseAddress, XCIFRADOR_PARALELO_STREAM_CONTROL_ADDR_IER);
    XCifrador_paralelo_stream_WriteReg(InstancePtr->Control_BaseAddress, XCIFRADOR_PARALELO_STREAM_CONTROL_ADDR_IER, Register & (~Mask));
}

void XCifrador_paralelo_stream_InterruptClear(XCifrador_paralelo_stream *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCifrador_paralelo_stream_WriteReg(InstancePtr->Control_BaseAddress, XCIFRADOR_PARALELO_STREAM_CONTROL_ADDR_ISR, Mask);
}

u32 XCifrador_paralelo_stream_InterruptGetEnabled(XCifrador_paralelo_stream *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XCifrador_paralelo_stream_ReadReg(InstancePtr->Control_BaseAddress, XCIFRADOR_PARALELO_STREAM_CONTROL_ADDR_IER);
}

u32 XCifrador_paralelo_stream_InterruptGetStatus(XCifrador_paralelo_stream *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XCifrador_paralelo_stream_ReadReg(InstancePtr->Control_BaseAddress, XCIFRADOR_PARALELO_STREAM_CONTROL_ADDR_ISR);
}

