// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2025.2 (64-bit)
// Tool Version Limit: 2025.11
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
/***************************** Include Files *********************************/
#include "xcifrador_basico_unroll_10.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XCifrador_basico_unroll_10_CfgInitialize(XCifrador_basico_unroll_10 *InstancePtr, XCifrador_basico_unroll_10_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Control_BaseAddress = ConfigPtr->Control_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XCifrador_basico_unroll_10_Start(XCifrador_basico_unroll_10 *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCifrador_basico_unroll_10_ReadReg(InstancePtr->Control_BaseAddress, XCIFRADOR_BASICO_UNROLL_10_CONTROL_ADDR_AP_CTRL) & 0x80;
    XCifrador_basico_unroll_10_WriteReg(InstancePtr->Control_BaseAddress, XCIFRADOR_BASICO_UNROLL_10_CONTROL_ADDR_AP_CTRL, Data | 0x01);
}

u32 XCifrador_basico_unroll_10_IsDone(XCifrador_basico_unroll_10 *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCifrador_basico_unroll_10_ReadReg(InstancePtr->Control_BaseAddress, XCIFRADOR_BASICO_UNROLL_10_CONTROL_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XCifrador_basico_unroll_10_IsIdle(XCifrador_basico_unroll_10 *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCifrador_basico_unroll_10_ReadReg(InstancePtr->Control_BaseAddress, XCIFRADOR_BASICO_UNROLL_10_CONTROL_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XCifrador_basico_unroll_10_IsReady(XCifrador_basico_unroll_10 *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCifrador_basico_unroll_10_ReadReg(InstancePtr->Control_BaseAddress, XCIFRADOR_BASICO_UNROLL_10_CONTROL_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XCifrador_basico_unroll_10_EnableAutoRestart(XCifrador_basico_unroll_10 *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCifrador_basico_unroll_10_WriteReg(InstancePtr->Control_BaseAddress, XCIFRADOR_BASICO_UNROLL_10_CONTROL_ADDR_AP_CTRL, 0x80);
}

void XCifrador_basico_unroll_10_DisableAutoRestart(XCifrador_basico_unroll_10 *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCifrador_basico_unroll_10_WriteReg(InstancePtr->Control_BaseAddress, XCIFRADOR_BASICO_UNROLL_10_CONTROL_ADDR_AP_CTRL, 0);
}

u32 XCifrador_basico_unroll_10_Get_return(XCifrador_basico_unroll_10 *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCifrador_basico_unroll_10_ReadReg(InstancePtr->Control_BaseAddress, XCIFRADOR_BASICO_UNROLL_10_CONTROL_ADDR_AP_RETURN);
    return Data;
}
void XCifrador_basico_unroll_10_Set_plaintext(XCifrador_basico_unroll_10 *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCifrador_basico_unroll_10_WriteReg(InstancePtr->Control_BaseAddress, XCIFRADOR_BASICO_UNROLL_10_CONTROL_ADDR_PLAINTEXT_DATA, Data);
}

u32 XCifrador_basico_unroll_10_Get_plaintext(XCifrador_basico_unroll_10 *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCifrador_basico_unroll_10_ReadReg(InstancePtr->Control_BaseAddress, XCIFRADOR_BASICO_UNROLL_10_CONTROL_ADDR_PLAINTEXT_DATA);
    return Data;
}

void XCifrador_basico_unroll_10_Set_key(XCifrador_basico_unroll_10 *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCifrador_basico_unroll_10_WriteReg(InstancePtr->Control_BaseAddress, XCIFRADOR_BASICO_UNROLL_10_CONTROL_ADDR_KEY_DATA, (u32)(Data));
    XCifrador_basico_unroll_10_WriteReg(InstancePtr->Control_BaseAddress, XCIFRADOR_BASICO_UNROLL_10_CONTROL_ADDR_KEY_DATA + 4, (u32)(Data >> 32));
}

u64 XCifrador_basico_unroll_10_Get_key(XCifrador_basico_unroll_10 *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCifrador_basico_unroll_10_ReadReg(InstancePtr->Control_BaseAddress, XCIFRADOR_BASICO_UNROLL_10_CONTROL_ADDR_KEY_DATA);
    Data += (u64)XCifrador_basico_unroll_10_ReadReg(InstancePtr->Control_BaseAddress, XCIFRADOR_BASICO_UNROLL_10_CONTROL_ADDR_KEY_DATA + 4) << 32;
    return Data;
}

void XCifrador_basico_unroll_10_InterruptGlobalEnable(XCifrador_basico_unroll_10 *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCifrador_basico_unroll_10_WriteReg(InstancePtr->Control_BaseAddress, XCIFRADOR_BASICO_UNROLL_10_CONTROL_ADDR_GIE, 1);
}

void XCifrador_basico_unroll_10_InterruptGlobalDisable(XCifrador_basico_unroll_10 *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCifrador_basico_unroll_10_WriteReg(InstancePtr->Control_BaseAddress, XCIFRADOR_BASICO_UNROLL_10_CONTROL_ADDR_GIE, 0);
}

void XCifrador_basico_unroll_10_InterruptEnable(XCifrador_basico_unroll_10 *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XCifrador_basico_unroll_10_ReadReg(InstancePtr->Control_BaseAddress, XCIFRADOR_BASICO_UNROLL_10_CONTROL_ADDR_IER);
    XCifrador_basico_unroll_10_WriteReg(InstancePtr->Control_BaseAddress, XCIFRADOR_BASICO_UNROLL_10_CONTROL_ADDR_IER, Register | Mask);
}

void XCifrador_basico_unroll_10_InterruptDisable(XCifrador_basico_unroll_10 *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XCifrador_basico_unroll_10_ReadReg(InstancePtr->Control_BaseAddress, XCIFRADOR_BASICO_UNROLL_10_CONTROL_ADDR_IER);
    XCifrador_basico_unroll_10_WriteReg(InstancePtr->Control_BaseAddress, XCIFRADOR_BASICO_UNROLL_10_CONTROL_ADDR_IER, Register & (~Mask));
}

void XCifrador_basico_unroll_10_InterruptClear(XCifrador_basico_unroll_10 *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCifrador_basico_unroll_10_WriteReg(InstancePtr->Control_BaseAddress, XCIFRADOR_BASICO_UNROLL_10_CONTROL_ADDR_ISR, Mask);
}

u32 XCifrador_basico_unroll_10_InterruptGetEnabled(XCifrador_basico_unroll_10 *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XCifrador_basico_unroll_10_ReadReg(InstancePtr->Control_BaseAddress, XCIFRADOR_BASICO_UNROLL_10_CONTROL_ADDR_IER);
}

u32 XCifrador_basico_unroll_10_InterruptGetStatus(XCifrador_basico_unroll_10 *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XCifrador_basico_unroll_10_ReadReg(InstancePtr->Control_BaseAddress, XCIFRADOR_BASICO_UNROLL_10_CONTROL_ADDR_ISR);
}

