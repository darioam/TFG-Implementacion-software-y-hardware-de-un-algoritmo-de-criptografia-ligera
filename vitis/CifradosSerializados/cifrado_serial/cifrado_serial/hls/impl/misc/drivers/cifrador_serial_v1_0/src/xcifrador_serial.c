// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2025.2 (64-bit)
// Tool Version Limit: 2025.11
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
/***************************** Include Files *********************************/
#include "xcifrador_serial.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XCifrador_serial_CfgInitialize(XCifrador_serial *InstancePtr, XCifrador_serial_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Control_BaseAddress = ConfigPtr->Control_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XCifrador_serial_Start(XCifrador_serial *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCifrador_serial_ReadReg(InstancePtr->Control_BaseAddress, XCIFRADOR_SERIAL_CONTROL_ADDR_AP_CTRL) & 0x80;
    XCifrador_serial_WriteReg(InstancePtr->Control_BaseAddress, XCIFRADOR_SERIAL_CONTROL_ADDR_AP_CTRL, Data | 0x01);
}

u32 XCifrador_serial_IsDone(XCifrador_serial *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCifrador_serial_ReadReg(InstancePtr->Control_BaseAddress, XCIFRADOR_SERIAL_CONTROL_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XCifrador_serial_IsIdle(XCifrador_serial *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCifrador_serial_ReadReg(InstancePtr->Control_BaseAddress, XCIFRADOR_SERIAL_CONTROL_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XCifrador_serial_IsReady(XCifrador_serial *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCifrador_serial_ReadReg(InstancePtr->Control_BaseAddress, XCIFRADOR_SERIAL_CONTROL_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XCifrador_serial_EnableAutoRestart(XCifrador_serial *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCifrador_serial_WriteReg(InstancePtr->Control_BaseAddress, XCIFRADOR_SERIAL_CONTROL_ADDR_AP_CTRL, 0x80);
}

void XCifrador_serial_DisableAutoRestart(XCifrador_serial *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCifrador_serial_WriteReg(InstancePtr->Control_BaseAddress, XCIFRADOR_SERIAL_CONTROL_ADDR_AP_CTRL, 0);
}

u32 XCifrador_serial_Get_return(XCifrador_serial *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCifrador_serial_ReadReg(InstancePtr->Control_BaseAddress, XCIFRADOR_SERIAL_CONTROL_ADDR_AP_RETURN);
    return Data;
}
void XCifrador_serial_Set_plaintext(XCifrador_serial *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCifrador_serial_WriteReg(InstancePtr->Control_BaseAddress, XCIFRADOR_SERIAL_CONTROL_ADDR_PLAINTEXT_DATA, Data);
}

u32 XCifrador_serial_Get_plaintext(XCifrador_serial *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCifrador_serial_ReadReg(InstancePtr->Control_BaseAddress, XCIFRADOR_SERIAL_CONTROL_ADDR_PLAINTEXT_DATA);
    return Data;
}

void XCifrador_serial_Set_key(XCifrador_serial *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCifrador_serial_WriteReg(InstancePtr->Control_BaseAddress, XCIFRADOR_SERIAL_CONTROL_ADDR_KEY_DATA, (u32)(Data));
    XCifrador_serial_WriteReg(InstancePtr->Control_BaseAddress, XCIFRADOR_SERIAL_CONTROL_ADDR_KEY_DATA + 4, (u32)(Data >> 32));
}

u64 XCifrador_serial_Get_key(XCifrador_serial *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCifrador_serial_ReadReg(InstancePtr->Control_BaseAddress, XCIFRADOR_SERIAL_CONTROL_ADDR_KEY_DATA);
    Data += (u64)XCifrador_serial_ReadReg(InstancePtr->Control_BaseAddress, XCIFRADOR_SERIAL_CONTROL_ADDR_KEY_DATA + 4) << 32;
    return Data;
}

void XCifrador_serial_InterruptGlobalEnable(XCifrador_serial *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCifrador_serial_WriteReg(InstancePtr->Control_BaseAddress, XCIFRADOR_SERIAL_CONTROL_ADDR_GIE, 1);
}

void XCifrador_serial_InterruptGlobalDisable(XCifrador_serial *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCifrador_serial_WriteReg(InstancePtr->Control_BaseAddress, XCIFRADOR_SERIAL_CONTROL_ADDR_GIE, 0);
}

void XCifrador_serial_InterruptEnable(XCifrador_serial *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XCifrador_serial_ReadReg(InstancePtr->Control_BaseAddress, XCIFRADOR_SERIAL_CONTROL_ADDR_IER);
    XCifrador_serial_WriteReg(InstancePtr->Control_BaseAddress, XCIFRADOR_SERIAL_CONTROL_ADDR_IER, Register | Mask);
}

void XCifrador_serial_InterruptDisable(XCifrador_serial *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XCifrador_serial_ReadReg(InstancePtr->Control_BaseAddress, XCIFRADOR_SERIAL_CONTROL_ADDR_IER);
    XCifrador_serial_WriteReg(InstancePtr->Control_BaseAddress, XCIFRADOR_SERIAL_CONTROL_ADDR_IER, Register & (~Mask));
}

void XCifrador_serial_InterruptClear(XCifrador_serial *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCifrador_serial_WriteReg(InstancePtr->Control_BaseAddress, XCIFRADOR_SERIAL_CONTROL_ADDR_ISR, Mask);
}

u32 XCifrador_serial_InterruptGetEnabled(XCifrador_serial *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XCifrador_serial_ReadReg(InstancePtr->Control_BaseAddress, XCIFRADOR_SERIAL_CONTROL_ADDR_IER);
}

u32 XCifrador_serial_InterruptGetStatus(XCifrador_serial *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XCifrador_serial_ReadReg(InstancePtr->Control_BaseAddress, XCIFRADOR_SERIAL_CONTROL_ADDR_ISR);
}

