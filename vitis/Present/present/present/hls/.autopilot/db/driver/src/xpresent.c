// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2025.2 (64-bit)
// Tool Version Limit: 2025.11
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
/***************************** Include Files *********************************/
#include "xpresent.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XPresent_CfgInitialize(XPresent *InstancePtr, XPresent_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Control_BaseAddress = ConfigPtr->Control_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XPresent_Start(XPresent *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XPresent_ReadReg(InstancePtr->Control_BaseAddress, XPRESENT_CONTROL_ADDR_AP_CTRL) & 0x80;
    XPresent_WriteReg(InstancePtr->Control_BaseAddress, XPRESENT_CONTROL_ADDR_AP_CTRL, Data | 0x01);
}

u32 XPresent_IsDone(XPresent *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XPresent_ReadReg(InstancePtr->Control_BaseAddress, XPRESENT_CONTROL_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XPresent_IsIdle(XPresent *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XPresent_ReadReg(InstancePtr->Control_BaseAddress, XPRESENT_CONTROL_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XPresent_IsReady(XPresent *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XPresent_ReadReg(InstancePtr->Control_BaseAddress, XPRESENT_CONTROL_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XPresent_EnableAutoRestart(XPresent *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XPresent_WriteReg(InstancePtr->Control_BaseAddress, XPRESENT_CONTROL_ADDR_AP_CTRL, 0x80);
}

void XPresent_DisableAutoRestart(XPresent *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XPresent_WriteReg(InstancePtr->Control_BaseAddress, XPRESENT_CONTROL_ADDR_AP_CTRL, 0);
}

u64 XPresent_Get_return(XPresent *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XPresent_ReadReg(InstancePtr->Control_BaseAddress, XPRESENT_CONTROL_ADDR_AP_RETURN);
    Data += (u64)XPresent_ReadReg(InstancePtr->Control_BaseAddress, XPRESENT_CONTROL_ADDR_AP_RETURN + 4) << 32;
    return Data;
}
void XPresent_Set_plaintext(XPresent *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XPresent_WriteReg(InstancePtr->Control_BaseAddress, XPRESENT_CONTROL_ADDR_PLAINTEXT_DATA, (u32)(Data));
    XPresent_WriteReg(InstancePtr->Control_BaseAddress, XPRESENT_CONTROL_ADDR_PLAINTEXT_DATA + 4, (u32)(Data >> 32));
}

u64 XPresent_Get_plaintext(XPresent *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XPresent_ReadReg(InstancePtr->Control_BaseAddress, XPRESENT_CONTROL_ADDR_PLAINTEXT_DATA);
    Data += (u64)XPresent_ReadReg(InstancePtr->Control_BaseAddress, XPRESENT_CONTROL_ADDR_PLAINTEXT_DATA + 4) << 32;
    return Data;
}

void XPresent_Set_key(XPresent *InstancePtr, XPresent_Key Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XPresent_WriteReg(InstancePtr->Control_BaseAddress, XPRESENT_CONTROL_ADDR_KEY_DATA + 0, Data.word_0);
    XPresent_WriteReg(InstancePtr->Control_BaseAddress, XPRESENT_CONTROL_ADDR_KEY_DATA + 4, Data.word_1);
    XPresent_WriteReg(InstancePtr->Control_BaseAddress, XPRESENT_CONTROL_ADDR_KEY_DATA + 8, Data.word_2);
}

XPresent_Key XPresent_Get_key(XPresent *InstancePtr) {
    XPresent_Key Data;

    Data.word_0 = XPresent_ReadReg(InstancePtr->Control_BaseAddress, XPRESENT_CONTROL_ADDR_KEY_DATA + 0);
    Data.word_1 = XPresent_ReadReg(InstancePtr->Control_BaseAddress, XPRESENT_CONTROL_ADDR_KEY_DATA + 4);
    Data.word_2 = XPresent_ReadReg(InstancePtr->Control_BaseAddress, XPRESENT_CONTROL_ADDR_KEY_DATA + 8);
    return Data;
}

void XPresent_InterruptGlobalEnable(XPresent *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XPresent_WriteReg(InstancePtr->Control_BaseAddress, XPRESENT_CONTROL_ADDR_GIE, 1);
}

void XPresent_InterruptGlobalDisable(XPresent *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XPresent_WriteReg(InstancePtr->Control_BaseAddress, XPRESENT_CONTROL_ADDR_GIE, 0);
}

void XPresent_InterruptEnable(XPresent *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XPresent_ReadReg(InstancePtr->Control_BaseAddress, XPRESENT_CONTROL_ADDR_IER);
    XPresent_WriteReg(InstancePtr->Control_BaseAddress, XPRESENT_CONTROL_ADDR_IER, Register | Mask);
}

void XPresent_InterruptDisable(XPresent *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XPresent_ReadReg(InstancePtr->Control_BaseAddress, XPRESENT_CONTROL_ADDR_IER);
    XPresent_WriteReg(InstancePtr->Control_BaseAddress, XPRESENT_CONTROL_ADDR_IER, Register & (~Mask));
}

void XPresent_InterruptClear(XPresent *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XPresent_WriteReg(InstancePtr->Control_BaseAddress, XPRESENT_CONTROL_ADDR_ISR, Mask);
}

u32 XPresent_InterruptGetEnabled(XPresent *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XPresent_ReadReg(InstancePtr->Control_BaseAddress, XPRESENT_CONTROL_ADDR_IER);
}

u32 XPresent_InterruptGetStatus(XPresent *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XPresent_ReadReg(InstancePtr->Control_BaseAddress, XPRESENT_CONTROL_ADDR_ISR);
}

