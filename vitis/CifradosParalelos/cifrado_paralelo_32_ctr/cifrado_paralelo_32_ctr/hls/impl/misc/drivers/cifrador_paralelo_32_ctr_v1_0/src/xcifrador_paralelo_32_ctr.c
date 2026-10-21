// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2025.2 (64-bit)
// Tool Version Limit: 2025.11
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
/***************************** Include Files *********************************/
#include "xcifrador_paralelo_32_ctr.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XCifrador_paralelo_32_ctr_CfgInitialize(XCifrador_paralelo_32_ctr *InstancePtr, XCifrador_paralelo_32_ctr_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Control_BaseAddress = ConfigPtr->Control_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XCifrador_paralelo_32_ctr_Start(XCifrador_paralelo_32_ctr *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCifrador_paralelo_32_ctr_ReadReg(InstancePtr->Control_BaseAddress, XCIFRADOR_PARALELO_32_CTR_CONTROL_ADDR_AP_CTRL) & 0x80;
    XCifrador_paralelo_32_ctr_WriteReg(InstancePtr->Control_BaseAddress, XCIFRADOR_PARALELO_32_CTR_CONTROL_ADDR_AP_CTRL, Data | 0x01);
}

u32 XCifrador_paralelo_32_ctr_IsDone(XCifrador_paralelo_32_ctr *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCifrador_paralelo_32_ctr_ReadReg(InstancePtr->Control_BaseAddress, XCIFRADOR_PARALELO_32_CTR_CONTROL_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XCifrador_paralelo_32_ctr_IsIdle(XCifrador_paralelo_32_ctr *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCifrador_paralelo_32_ctr_ReadReg(InstancePtr->Control_BaseAddress, XCIFRADOR_PARALELO_32_CTR_CONTROL_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XCifrador_paralelo_32_ctr_IsReady(XCifrador_paralelo_32_ctr *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCifrador_paralelo_32_ctr_ReadReg(InstancePtr->Control_BaseAddress, XCIFRADOR_PARALELO_32_CTR_CONTROL_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XCifrador_paralelo_32_ctr_EnableAutoRestart(XCifrador_paralelo_32_ctr *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCifrador_paralelo_32_ctr_WriteReg(InstancePtr->Control_BaseAddress, XCIFRADOR_PARALELO_32_CTR_CONTROL_ADDR_AP_CTRL, 0x80);
}

void XCifrador_paralelo_32_ctr_DisableAutoRestart(XCifrador_paralelo_32_ctr *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCifrador_paralelo_32_ctr_WriteReg(InstancePtr->Control_BaseAddress, XCIFRADOR_PARALELO_32_CTR_CONTROL_ADDR_AP_CTRL, 0);
}

u32 XCifrador_paralelo_32_ctr_Get_return(XCifrador_paralelo_32_ctr *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCifrador_paralelo_32_ctr_ReadReg(InstancePtr->Control_BaseAddress, XCIFRADOR_PARALELO_32_CTR_CONTROL_ADDR_AP_RETURN);
    return Data;
}
void XCifrador_paralelo_32_ctr_Set_plaintext_0(XCifrador_paralelo_32_ctr *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCifrador_paralelo_32_ctr_WriteReg(InstancePtr->Control_BaseAddress, XCIFRADOR_PARALELO_32_CTR_CONTROL_ADDR_PLAINTEXT_0_DATA, Data);
}

u32 XCifrador_paralelo_32_ctr_Get_plaintext_0(XCifrador_paralelo_32_ctr *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCifrador_paralelo_32_ctr_ReadReg(InstancePtr->Control_BaseAddress, XCIFRADOR_PARALELO_32_CTR_CONTROL_ADDR_PLAINTEXT_0_DATA);
    return Data;
}

void XCifrador_paralelo_32_ctr_Set_plaintext_1(XCifrador_paralelo_32_ctr *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCifrador_paralelo_32_ctr_WriteReg(InstancePtr->Control_BaseAddress, XCIFRADOR_PARALELO_32_CTR_CONTROL_ADDR_PLAINTEXT_1_DATA, Data);
}

u32 XCifrador_paralelo_32_ctr_Get_plaintext_1(XCifrador_paralelo_32_ctr *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCifrador_paralelo_32_ctr_ReadReg(InstancePtr->Control_BaseAddress, XCIFRADOR_PARALELO_32_CTR_CONTROL_ADDR_PLAINTEXT_1_DATA);
    return Data;
}

void XCifrador_paralelo_32_ctr_Set_plaintext_2(XCifrador_paralelo_32_ctr *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCifrador_paralelo_32_ctr_WriteReg(InstancePtr->Control_BaseAddress, XCIFRADOR_PARALELO_32_CTR_CONTROL_ADDR_PLAINTEXT_2_DATA, Data);
}

u32 XCifrador_paralelo_32_ctr_Get_plaintext_2(XCifrador_paralelo_32_ctr *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCifrador_paralelo_32_ctr_ReadReg(InstancePtr->Control_BaseAddress, XCIFRADOR_PARALELO_32_CTR_CONTROL_ADDR_PLAINTEXT_2_DATA);
    return Data;
}

void XCifrador_paralelo_32_ctr_Set_plaintext_3(XCifrador_paralelo_32_ctr *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCifrador_paralelo_32_ctr_WriteReg(InstancePtr->Control_BaseAddress, XCIFRADOR_PARALELO_32_CTR_CONTROL_ADDR_PLAINTEXT_3_DATA, Data);
}

u32 XCifrador_paralelo_32_ctr_Get_plaintext_3(XCifrador_paralelo_32_ctr *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCifrador_paralelo_32_ctr_ReadReg(InstancePtr->Control_BaseAddress, XCIFRADOR_PARALELO_32_CTR_CONTROL_ADDR_PLAINTEXT_3_DATA);
    return Data;
}

void XCifrador_paralelo_32_ctr_Set_plaintext_4(XCifrador_paralelo_32_ctr *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCifrador_paralelo_32_ctr_WriteReg(InstancePtr->Control_BaseAddress, XCIFRADOR_PARALELO_32_CTR_CONTROL_ADDR_PLAINTEXT_4_DATA, Data);
}

u32 XCifrador_paralelo_32_ctr_Get_plaintext_4(XCifrador_paralelo_32_ctr *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCifrador_paralelo_32_ctr_ReadReg(InstancePtr->Control_BaseAddress, XCIFRADOR_PARALELO_32_CTR_CONTROL_ADDR_PLAINTEXT_4_DATA);
    return Data;
}

void XCifrador_paralelo_32_ctr_Set_plaintext_5(XCifrador_paralelo_32_ctr *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCifrador_paralelo_32_ctr_WriteReg(InstancePtr->Control_BaseAddress, XCIFRADOR_PARALELO_32_CTR_CONTROL_ADDR_PLAINTEXT_5_DATA, Data);
}

u32 XCifrador_paralelo_32_ctr_Get_plaintext_5(XCifrador_paralelo_32_ctr *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCifrador_paralelo_32_ctr_ReadReg(InstancePtr->Control_BaseAddress, XCIFRADOR_PARALELO_32_CTR_CONTROL_ADDR_PLAINTEXT_5_DATA);
    return Data;
}

void XCifrador_paralelo_32_ctr_Set_plaintext_6(XCifrador_paralelo_32_ctr *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCifrador_paralelo_32_ctr_WriteReg(InstancePtr->Control_BaseAddress, XCIFRADOR_PARALELO_32_CTR_CONTROL_ADDR_PLAINTEXT_6_DATA, Data);
}

u32 XCifrador_paralelo_32_ctr_Get_plaintext_6(XCifrador_paralelo_32_ctr *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCifrador_paralelo_32_ctr_ReadReg(InstancePtr->Control_BaseAddress, XCIFRADOR_PARALELO_32_CTR_CONTROL_ADDR_PLAINTEXT_6_DATA);
    return Data;
}

void XCifrador_paralelo_32_ctr_Set_plaintext_7(XCifrador_paralelo_32_ctr *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCifrador_paralelo_32_ctr_WriteReg(InstancePtr->Control_BaseAddress, XCIFRADOR_PARALELO_32_CTR_CONTROL_ADDR_PLAINTEXT_7_DATA, Data);
}

u32 XCifrador_paralelo_32_ctr_Get_plaintext_7(XCifrador_paralelo_32_ctr *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCifrador_paralelo_32_ctr_ReadReg(InstancePtr->Control_BaseAddress, XCIFRADOR_PARALELO_32_CTR_CONTROL_ADDR_PLAINTEXT_7_DATA);
    return Data;
}

void XCifrador_paralelo_32_ctr_Set_plaintext_8(XCifrador_paralelo_32_ctr *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCifrador_paralelo_32_ctr_WriteReg(InstancePtr->Control_BaseAddress, XCIFRADOR_PARALELO_32_CTR_CONTROL_ADDR_PLAINTEXT_8_DATA, Data);
}

u32 XCifrador_paralelo_32_ctr_Get_plaintext_8(XCifrador_paralelo_32_ctr *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCifrador_paralelo_32_ctr_ReadReg(InstancePtr->Control_BaseAddress, XCIFRADOR_PARALELO_32_CTR_CONTROL_ADDR_PLAINTEXT_8_DATA);
    return Data;
}

void XCifrador_paralelo_32_ctr_Set_plaintext_9(XCifrador_paralelo_32_ctr *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCifrador_paralelo_32_ctr_WriteReg(InstancePtr->Control_BaseAddress, XCIFRADOR_PARALELO_32_CTR_CONTROL_ADDR_PLAINTEXT_9_DATA, Data);
}

u32 XCifrador_paralelo_32_ctr_Get_plaintext_9(XCifrador_paralelo_32_ctr *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCifrador_paralelo_32_ctr_ReadReg(InstancePtr->Control_BaseAddress, XCIFRADOR_PARALELO_32_CTR_CONTROL_ADDR_PLAINTEXT_9_DATA);
    return Data;
}

void XCifrador_paralelo_32_ctr_Set_plaintext_10(XCifrador_paralelo_32_ctr *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCifrador_paralelo_32_ctr_WriteReg(InstancePtr->Control_BaseAddress, XCIFRADOR_PARALELO_32_CTR_CONTROL_ADDR_PLAINTEXT_10_DATA, Data);
}

u32 XCifrador_paralelo_32_ctr_Get_plaintext_10(XCifrador_paralelo_32_ctr *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCifrador_paralelo_32_ctr_ReadReg(InstancePtr->Control_BaseAddress, XCIFRADOR_PARALELO_32_CTR_CONTROL_ADDR_PLAINTEXT_10_DATA);
    return Data;
}

void XCifrador_paralelo_32_ctr_Set_plaintext_11(XCifrador_paralelo_32_ctr *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCifrador_paralelo_32_ctr_WriteReg(InstancePtr->Control_BaseAddress, XCIFRADOR_PARALELO_32_CTR_CONTROL_ADDR_PLAINTEXT_11_DATA, Data);
}

u32 XCifrador_paralelo_32_ctr_Get_plaintext_11(XCifrador_paralelo_32_ctr *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCifrador_paralelo_32_ctr_ReadReg(InstancePtr->Control_BaseAddress, XCIFRADOR_PARALELO_32_CTR_CONTROL_ADDR_PLAINTEXT_11_DATA);
    return Data;
}

void XCifrador_paralelo_32_ctr_Set_plaintext_12(XCifrador_paralelo_32_ctr *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCifrador_paralelo_32_ctr_WriteReg(InstancePtr->Control_BaseAddress, XCIFRADOR_PARALELO_32_CTR_CONTROL_ADDR_PLAINTEXT_12_DATA, Data);
}

u32 XCifrador_paralelo_32_ctr_Get_plaintext_12(XCifrador_paralelo_32_ctr *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCifrador_paralelo_32_ctr_ReadReg(InstancePtr->Control_BaseAddress, XCIFRADOR_PARALELO_32_CTR_CONTROL_ADDR_PLAINTEXT_12_DATA);
    return Data;
}

void XCifrador_paralelo_32_ctr_Set_plaintext_13(XCifrador_paralelo_32_ctr *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCifrador_paralelo_32_ctr_WriteReg(InstancePtr->Control_BaseAddress, XCIFRADOR_PARALELO_32_CTR_CONTROL_ADDR_PLAINTEXT_13_DATA, Data);
}

u32 XCifrador_paralelo_32_ctr_Get_plaintext_13(XCifrador_paralelo_32_ctr *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCifrador_paralelo_32_ctr_ReadReg(InstancePtr->Control_BaseAddress, XCIFRADOR_PARALELO_32_CTR_CONTROL_ADDR_PLAINTEXT_13_DATA);
    return Data;
}

void XCifrador_paralelo_32_ctr_Set_plaintext_14(XCifrador_paralelo_32_ctr *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCifrador_paralelo_32_ctr_WriteReg(InstancePtr->Control_BaseAddress, XCIFRADOR_PARALELO_32_CTR_CONTROL_ADDR_PLAINTEXT_14_DATA, Data);
}

u32 XCifrador_paralelo_32_ctr_Get_plaintext_14(XCifrador_paralelo_32_ctr *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCifrador_paralelo_32_ctr_ReadReg(InstancePtr->Control_BaseAddress, XCIFRADOR_PARALELO_32_CTR_CONTROL_ADDR_PLAINTEXT_14_DATA);
    return Data;
}

void XCifrador_paralelo_32_ctr_Set_plaintext_15(XCifrador_paralelo_32_ctr *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCifrador_paralelo_32_ctr_WriteReg(InstancePtr->Control_BaseAddress, XCIFRADOR_PARALELO_32_CTR_CONTROL_ADDR_PLAINTEXT_15_DATA, Data);
}

u32 XCifrador_paralelo_32_ctr_Get_plaintext_15(XCifrador_paralelo_32_ctr *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCifrador_paralelo_32_ctr_ReadReg(InstancePtr->Control_BaseAddress, XCIFRADOR_PARALELO_32_CTR_CONTROL_ADDR_PLAINTEXT_15_DATA);
    return Data;
}

void XCifrador_paralelo_32_ctr_Set_plaintext_16(XCifrador_paralelo_32_ctr *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCifrador_paralelo_32_ctr_WriteReg(InstancePtr->Control_BaseAddress, XCIFRADOR_PARALELO_32_CTR_CONTROL_ADDR_PLAINTEXT_16_DATA, Data);
}

u32 XCifrador_paralelo_32_ctr_Get_plaintext_16(XCifrador_paralelo_32_ctr *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCifrador_paralelo_32_ctr_ReadReg(InstancePtr->Control_BaseAddress, XCIFRADOR_PARALELO_32_CTR_CONTROL_ADDR_PLAINTEXT_16_DATA);
    return Data;
}

void XCifrador_paralelo_32_ctr_Set_plaintext_17(XCifrador_paralelo_32_ctr *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCifrador_paralelo_32_ctr_WriteReg(InstancePtr->Control_BaseAddress, XCIFRADOR_PARALELO_32_CTR_CONTROL_ADDR_PLAINTEXT_17_DATA, Data);
}

u32 XCifrador_paralelo_32_ctr_Get_plaintext_17(XCifrador_paralelo_32_ctr *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCifrador_paralelo_32_ctr_ReadReg(InstancePtr->Control_BaseAddress, XCIFRADOR_PARALELO_32_CTR_CONTROL_ADDR_PLAINTEXT_17_DATA);
    return Data;
}

void XCifrador_paralelo_32_ctr_Set_plaintext_18(XCifrador_paralelo_32_ctr *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCifrador_paralelo_32_ctr_WriteReg(InstancePtr->Control_BaseAddress, XCIFRADOR_PARALELO_32_CTR_CONTROL_ADDR_PLAINTEXT_18_DATA, Data);
}

u32 XCifrador_paralelo_32_ctr_Get_plaintext_18(XCifrador_paralelo_32_ctr *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCifrador_paralelo_32_ctr_ReadReg(InstancePtr->Control_BaseAddress, XCIFRADOR_PARALELO_32_CTR_CONTROL_ADDR_PLAINTEXT_18_DATA);
    return Data;
}

void XCifrador_paralelo_32_ctr_Set_plaintext_19(XCifrador_paralelo_32_ctr *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCifrador_paralelo_32_ctr_WriteReg(InstancePtr->Control_BaseAddress, XCIFRADOR_PARALELO_32_CTR_CONTROL_ADDR_PLAINTEXT_19_DATA, Data);
}

u32 XCifrador_paralelo_32_ctr_Get_plaintext_19(XCifrador_paralelo_32_ctr *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCifrador_paralelo_32_ctr_ReadReg(InstancePtr->Control_BaseAddress, XCIFRADOR_PARALELO_32_CTR_CONTROL_ADDR_PLAINTEXT_19_DATA);
    return Data;
}

void XCifrador_paralelo_32_ctr_Set_plaintext_20(XCifrador_paralelo_32_ctr *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCifrador_paralelo_32_ctr_WriteReg(InstancePtr->Control_BaseAddress, XCIFRADOR_PARALELO_32_CTR_CONTROL_ADDR_PLAINTEXT_20_DATA, Data);
}

u32 XCifrador_paralelo_32_ctr_Get_plaintext_20(XCifrador_paralelo_32_ctr *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCifrador_paralelo_32_ctr_ReadReg(InstancePtr->Control_BaseAddress, XCIFRADOR_PARALELO_32_CTR_CONTROL_ADDR_PLAINTEXT_20_DATA);
    return Data;
}

void XCifrador_paralelo_32_ctr_Set_plaintext_21(XCifrador_paralelo_32_ctr *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCifrador_paralelo_32_ctr_WriteReg(InstancePtr->Control_BaseAddress, XCIFRADOR_PARALELO_32_CTR_CONTROL_ADDR_PLAINTEXT_21_DATA, Data);
}

u32 XCifrador_paralelo_32_ctr_Get_plaintext_21(XCifrador_paralelo_32_ctr *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCifrador_paralelo_32_ctr_ReadReg(InstancePtr->Control_BaseAddress, XCIFRADOR_PARALELO_32_CTR_CONTROL_ADDR_PLAINTEXT_21_DATA);
    return Data;
}

void XCifrador_paralelo_32_ctr_Set_plaintext_22(XCifrador_paralelo_32_ctr *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCifrador_paralelo_32_ctr_WriteReg(InstancePtr->Control_BaseAddress, XCIFRADOR_PARALELO_32_CTR_CONTROL_ADDR_PLAINTEXT_22_DATA, Data);
}

u32 XCifrador_paralelo_32_ctr_Get_plaintext_22(XCifrador_paralelo_32_ctr *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCifrador_paralelo_32_ctr_ReadReg(InstancePtr->Control_BaseAddress, XCIFRADOR_PARALELO_32_CTR_CONTROL_ADDR_PLAINTEXT_22_DATA);
    return Data;
}

void XCifrador_paralelo_32_ctr_Set_plaintext_23(XCifrador_paralelo_32_ctr *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCifrador_paralelo_32_ctr_WriteReg(InstancePtr->Control_BaseAddress, XCIFRADOR_PARALELO_32_CTR_CONTROL_ADDR_PLAINTEXT_23_DATA, Data);
}

u32 XCifrador_paralelo_32_ctr_Get_plaintext_23(XCifrador_paralelo_32_ctr *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCifrador_paralelo_32_ctr_ReadReg(InstancePtr->Control_BaseAddress, XCIFRADOR_PARALELO_32_CTR_CONTROL_ADDR_PLAINTEXT_23_DATA);
    return Data;
}

void XCifrador_paralelo_32_ctr_Set_plaintext_24(XCifrador_paralelo_32_ctr *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCifrador_paralelo_32_ctr_WriteReg(InstancePtr->Control_BaseAddress, XCIFRADOR_PARALELO_32_CTR_CONTROL_ADDR_PLAINTEXT_24_DATA, Data);
}

u32 XCifrador_paralelo_32_ctr_Get_plaintext_24(XCifrador_paralelo_32_ctr *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCifrador_paralelo_32_ctr_ReadReg(InstancePtr->Control_BaseAddress, XCIFRADOR_PARALELO_32_CTR_CONTROL_ADDR_PLAINTEXT_24_DATA);
    return Data;
}

void XCifrador_paralelo_32_ctr_Set_plaintext_25(XCifrador_paralelo_32_ctr *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCifrador_paralelo_32_ctr_WriteReg(InstancePtr->Control_BaseAddress, XCIFRADOR_PARALELO_32_CTR_CONTROL_ADDR_PLAINTEXT_25_DATA, Data);
}

u32 XCifrador_paralelo_32_ctr_Get_plaintext_25(XCifrador_paralelo_32_ctr *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCifrador_paralelo_32_ctr_ReadReg(InstancePtr->Control_BaseAddress, XCIFRADOR_PARALELO_32_CTR_CONTROL_ADDR_PLAINTEXT_25_DATA);
    return Data;
}

void XCifrador_paralelo_32_ctr_Set_plaintext_26(XCifrador_paralelo_32_ctr *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCifrador_paralelo_32_ctr_WriteReg(InstancePtr->Control_BaseAddress, XCIFRADOR_PARALELO_32_CTR_CONTROL_ADDR_PLAINTEXT_26_DATA, Data);
}

u32 XCifrador_paralelo_32_ctr_Get_plaintext_26(XCifrador_paralelo_32_ctr *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCifrador_paralelo_32_ctr_ReadReg(InstancePtr->Control_BaseAddress, XCIFRADOR_PARALELO_32_CTR_CONTROL_ADDR_PLAINTEXT_26_DATA);
    return Data;
}

void XCifrador_paralelo_32_ctr_Set_plaintext_27(XCifrador_paralelo_32_ctr *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCifrador_paralelo_32_ctr_WriteReg(InstancePtr->Control_BaseAddress, XCIFRADOR_PARALELO_32_CTR_CONTROL_ADDR_PLAINTEXT_27_DATA, Data);
}

u32 XCifrador_paralelo_32_ctr_Get_plaintext_27(XCifrador_paralelo_32_ctr *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCifrador_paralelo_32_ctr_ReadReg(InstancePtr->Control_BaseAddress, XCIFRADOR_PARALELO_32_CTR_CONTROL_ADDR_PLAINTEXT_27_DATA);
    return Data;
}

void XCifrador_paralelo_32_ctr_Set_plaintext_28(XCifrador_paralelo_32_ctr *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCifrador_paralelo_32_ctr_WriteReg(InstancePtr->Control_BaseAddress, XCIFRADOR_PARALELO_32_CTR_CONTROL_ADDR_PLAINTEXT_28_DATA, Data);
}

u32 XCifrador_paralelo_32_ctr_Get_plaintext_28(XCifrador_paralelo_32_ctr *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCifrador_paralelo_32_ctr_ReadReg(InstancePtr->Control_BaseAddress, XCIFRADOR_PARALELO_32_CTR_CONTROL_ADDR_PLAINTEXT_28_DATA);
    return Data;
}

void XCifrador_paralelo_32_ctr_Set_plaintext_29(XCifrador_paralelo_32_ctr *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCifrador_paralelo_32_ctr_WriteReg(InstancePtr->Control_BaseAddress, XCIFRADOR_PARALELO_32_CTR_CONTROL_ADDR_PLAINTEXT_29_DATA, Data);
}

u32 XCifrador_paralelo_32_ctr_Get_plaintext_29(XCifrador_paralelo_32_ctr *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCifrador_paralelo_32_ctr_ReadReg(InstancePtr->Control_BaseAddress, XCIFRADOR_PARALELO_32_CTR_CONTROL_ADDR_PLAINTEXT_29_DATA);
    return Data;
}

void XCifrador_paralelo_32_ctr_Set_plaintext_30(XCifrador_paralelo_32_ctr *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCifrador_paralelo_32_ctr_WriteReg(InstancePtr->Control_BaseAddress, XCIFRADOR_PARALELO_32_CTR_CONTROL_ADDR_PLAINTEXT_30_DATA, Data);
}

u32 XCifrador_paralelo_32_ctr_Get_plaintext_30(XCifrador_paralelo_32_ctr *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCifrador_paralelo_32_ctr_ReadReg(InstancePtr->Control_BaseAddress, XCIFRADOR_PARALELO_32_CTR_CONTROL_ADDR_PLAINTEXT_30_DATA);
    return Data;
}

void XCifrador_paralelo_32_ctr_Set_plaintext_31(XCifrador_paralelo_32_ctr *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCifrador_paralelo_32_ctr_WriteReg(InstancePtr->Control_BaseAddress, XCIFRADOR_PARALELO_32_CTR_CONTROL_ADDR_PLAINTEXT_31_DATA, Data);
}

u32 XCifrador_paralelo_32_ctr_Get_plaintext_31(XCifrador_paralelo_32_ctr *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCifrador_paralelo_32_ctr_ReadReg(InstancePtr->Control_BaseAddress, XCIFRADOR_PARALELO_32_CTR_CONTROL_ADDR_PLAINTEXT_31_DATA);
    return Data;
}

void XCifrador_paralelo_32_ctr_Set_key(XCifrador_paralelo_32_ctr *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCifrador_paralelo_32_ctr_WriteReg(InstancePtr->Control_BaseAddress, XCIFRADOR_PARALELO_32_CTR_CONTROL_ADDR_KEY_DATA, (u32)(Data));
    XCifrador_paralelo_32_ctr_WriteReg(InstancePtr->Control_BaseAddress, XCIFRADOR_PARALELO_32_CTR_CONTROL_ADDR_KEY_DATA + 4, (u32)(Data >> 32));
}

u64 XCifrador_paralelo_32_ctr_Get_key(XCifrador_paralelo_32_ctr *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCifrador_paralelo_32_ctr_ReadReg(InstancePtr->Control_BaseAddress, XCIFRADOR_PARALELO_32_CTR_CONTROL_ADDR_KEY_DATA);
    Data += (u64)XCifrador_paralelo_32_ctr_ReadReg(InstancePtr->Control_BaseAddress, XCIFRADOR_PARALELO_32_CTR_CONTROL_ADDR_KEY_DATA + 4) << 32;
    return Data;
}

u32 XCifrador_paralelo_32_ctr_Get_ciphertext_0(XCifrador_paralelo_32_ctr *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCifrador_paralelo_32_ctr_ReadReg(InstancePtr->Control_BaseAddress, XCIFRADOR_PARALELO_32_CTR_CONTROL_ADDR_CIPHERTEXT_0_DATA);
    return Data;
}

u32 XCifrador_paralelo_32_ctr_Get_ciphertext_0_vld(XCifrador_paralelo_32_ctr *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCifrador_paralelo_32_ctr_ReadReg(InstancePtr->Control_BaseAddress, XCIFRADOR_PARALELO_32_CTR_CONTROL_ADDR_CIPHERTEXT_0_CTRL);
    return Data & 0x1;
}

u32 XCifrador_paralelo_32_ctr_Get_ciphertext_1(XCifrador_paralelo_32_ctr *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCifrador_paralelo_32_ctr_ReadReg(InstancePtr->Control_BaseAddress, XCIFRADOR_PARALELO_32_CTR_CONTROL_ADDR_CIPHERTEXT_1_DATA);
    return Data;
}

u32 XCifrador_paralelo_32_ctr_Get_ciphertext_1_vld(XCifrador_paralelo_32_ctr *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCifrador_paralelo_32_ctr_ReadReg(InstancePtr->Control_BaseAddress, XCIFRADOR_PARALELO_32_CTR_CONTROL_ADDR_CIPHERTEXT_1_CTRL);
    return Data & 0x1;
}

u32 XCifrador_paralelo_32_ctr_Get_ciphertext_2(XCifrador_paralelo_32_ctr *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCifrador_paralelo_32_ctr_ReadReg(InstancePtr->Control_BaseAddress, XCIFRADOR_PARALELO_32_CTR_CONTROL_ADDR_CIPHERTEXT_2_DATA);
    return Data;
}

u32 XCifrador_paralelo_32_ctr_Get_ciphertext_2_vld(XCifrador_paralelo_32_ctr *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCifrador_paralelo_32_ctr_ReadReg(InstancePtr->Control_BaseAddress, XCIFRADOR_PARALELO_32_CTR_CONTROL_ADDR_CIPHERTEXT_2_CTRL);
    return Data & 0x1;
}

u32 XCifrador_paralelo_32_ctr_Get_ciphertext_3(XCifrador_paralelo_32_ctr *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCifrador_paralelo_32_ctr_ReadReg(InstancePtr->Control_BaseAddress, XCIFRADOR_PARALELO_32_CTR_CONTROL_ADDR_CIPHERTEXT_3_DATA);
    return Data;
}

u32 XCifrador_paralelo_32_ctr_Get_ciphertext_3_vld(XCifrador_paralelo_32_ctr *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCifrador_paralelo_32_ctr_ReadReg(InstancePtr->Control_BaseAddress, XCIFRADOR_PARALELO_32_CTR_CONTROL_ADDR_CIPHERTEXT_3_CTRL);
    return Data & 0x1;
}

u32 XCifrador_paralelo_32_ctr_Get_ciphertext_4(XCifrador_paralelo_32_ctr *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCifrador_paralelo_32_ctr_ReadReg(InstancePtr->Control_BaseAddress, XCIFRADOR_PARALELO_32_CTR_CONTROL_ADDR_CIPHERTEXT_4_DATA);
    return Data;
}

u32 XCifrador_paralelo_32_ctr_Get_ciphertext_4_vld(XCifrador_paralelo_32_ctr *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCifrador_paralelo_32_ctr_ReadReg(InstancePtr->Control_BaseAddress, XCIFRADOR_PARALELO_32_CTR_CONTROL_ADDR_CIPHERTEXT_4_CTRL);
    return Data & 0x1;
}

u32 XCifrador_paralelo_32_ctr_Get_ciphertext_5(XCifrador_paralelo_32_ctr *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCifrador_paralelo_32_ctr_ReadReg(InstancePtr->Control_BaseAddress, XCIFRADOR_PARALELO_32_CTR_CONTROL_ADDR_CIPHERTEXT_5_DATA);
    return Data;
}

u32 XCifrador_paralelo_32_ctr_Get_ciphertext_5_vld(XCifrador_paralelo_32_ctr *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCifrador_paralelo_32_ctr_ReadReg(InstancePtr->Control_BaseAddress, XCIFRADOR_PARALELO_32_CTR_CONTROL_ADDR_CIPHERTEXT_5_CTRL);
    return Data & 0x1;
}

u32 XCifrador_paralelo_32_ctr_Get_ciphertext_6(XCifrador_paralelo_32_ctr *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCifrador_paralelo_32_ctr_ReadReg(InstancePtr->Control_BaseAddress, XCIFRADOR_PARALELO_32_CTR_CONTROL_ADDR_CIPHERTEXT_6_DATA);
    return Data;
}

u32 XCifrador_paralelo_32_ctr_Get_ciphertext_6_vld(XCifrador_paralelo_32_ctr *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCifrador_paralelo_32_ctr_ReadReg(InstancePtr->Control_BaseAddress, XCIFRADOR_PARALELO_32_CTR_CONTROL_ADDR_CIPHERTEXT_6_CTRL);
    return Data & 0x1;
}

u32 XCifrador_paralelo_32_ctr_Get_ciphertext_7(XCifrador_paralelo_32_ctr *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCifrador_paralelo_32_ctr_ReadReg(InstancePtr->Control_BaseAddress, XCIFRADOR_PARALELO_32_CTR_CONTROL_ADDR_CIPHERTEXT_7_DATA);
    return Data;
}

u32 XCifrador_paralelo_32_ctr_Get_ciphertext_7_vld(XCifrador_paralelo_32_ctr *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCifrador_paralelo_32_ctr_ReadReg(InstancePtr->Control_BaseAddress, XCIFRADOR_PARALELO_32_CTR_CONTROL_ADDR_CIPHERTEXT_7_CTRL);
    return Data & 0x1;
}

u32 XCifrador_paralelo_32_ctr_Get_ciphertext_8(XCifrador_paralelo_32_ctr *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCifrador_paralelo_32_ctr_ReadReg(InstancePtr->Control_BaseAddress, XCIFRADOR_PARALELO_32_CTR_CONTROL_ADDR_CIPHERTEXT_8_DATA);
    return Data;
}

u32 XCifrador_paralelo_32_ctr_Get_ciphertext_8_vld(XCifrador_paralelo_32_ctr *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCifrador_paralelo_32_ctr_ReadReg(InstancePtr->Control_BaseAddress, XCIFRADOR_PARALELO_32_CTR_CONTROL_ADDR_CIPHERTEXT_8_CTRL);
    return Data & 0x1;
}

u32 XCifrador_paralelo_32_ctr_Get_ciphertext_9(XCifrador_paralelo_32_ctr *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCifrador_paralelo_32_ctr_ReadReg(InstancePtr->Control_BaseAddress, XCIFRADOR_PARALELO_32_CTR_CONTROL_ADDR_CIPHERTEXT_9_DATA);
    return Data;
}

u32 XCifrador_paralelo_32_ctr_Get_ciphertext_9_vld(XCifrador_paralelo_32_ctr *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCifrador_paralelo_32_ctr_ReadReg(InstancePtr->Control_BaseAddress, XCIFRADOR_PARALELO_32_CTR_CONTROL_ADDR_CIPHERTEXT_9_CTRL);
    return Data & 0x1;
}

u32 XCifrador_paralelo_32_ctr_Get_ciphertext_10(XCifrador_paralelo_32_ctr *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCifrador_paralelo_32_ctr_ReadReg(InstancePtr->Control_BaseAddress, XCIFRADOR_PARALELO_32_CTR_CONTROL_ADDR_CIPHERTEXT_10_DATA);
    return Data;
}

u32 XCifrador_paralelo_32_ctr_Get_ciphertext_10_vld(XCifrador_paralelo_32_ctr *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCifrador_paralelo_32_ctr_ReadReg(InstancePtr->Control_BaseAddress, XCIFRADOR_PARALELO_32_CTR_CONTROL_ADDR_CIPHERTEXT_10_CTRL);
    return Data & 0x1;
}

u32 XCifrador_paralelo_32_ctr_Get_ciphertext_11(XCifrador_paralelo_32_ctr *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCifrador_paralelo_32_ctr_ReadReg(InstancePtr->Control_BaseAddress, XCIFRADOR_PARALELO_32_CTR_CONTROL_ADDR_CIPHERTEXT_11_DATA);
    return Data;
}

u32 XCifrador_paralelo_32_ctr_Get_ciphertext_11_vld(XCifrador_paralelo_32_ctr *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCifrador_paralelo_32_ctr_ReadReg(InstancePtr->Control_BaseAddress, XCIFRADOR_PARALELO_32_CTR_CONTROL_ADDR_CIPHERTEXT_11_CTRL);
    return Data & 0x1;
}

u32 XCifrador_paralelo_32_ctr_Get_ciphertext_12(XCifrador_paralelo_32_ctr *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCifrador_paralelo_32_ctr_ReadReg(InstancePtr->Control_BaseAddress, XCIFRADOR_PARALELO_32_CTR_CONTROL_ADDR_CIPHERTEXT_12_DATA);
    return Data;
}

u32 XCifrador_paralelo_32_ctr_Get_ciphertext_12_vld(XCifrador_paralelo_32_ctr *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCifrador_paralelo_32_ctr_ReadReg(InstancePtr->Control_BaseAddress, XCIFRADOR_PARALELO_32_CTR_CONTROL_ADDR_CIPHERTEXT_12_CTRL);
    return Data & 0x1;
}

u32 XCifrador_paralelo_32_ctr_Get_ciphertext_13(XCifrador_paralelo_32_ctr *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCifrador_paralelo_32_ctr_ReadReg(InstancePtr->Control_BaseAddress, XCIFRADOR_PARALELO_32_CTR_CONTROL_ADDR_CIPHERTEXT_13_DATA);
    return Data;
}

u32 XCifrador_paralelo_32_ctr_Get_ciphertext_13_vld(XCifrador_paralelo_32_ctr *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCifrador_paralelo_32_ctr_ReadReg(InstancePtr->Control_BaseAddress, XCIFRADOR_PARALELO_32_CTR_CONTROL_ADDR_CIPHERTEXT_13_CTRL);
    return Data & 0x1;
}

u32 XCifrador_paralelo_32_ctr_Get_ciphertext_14(XCifrador_paralelo_32_ctr *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCifrador_paralelo_32_ctr_ReadReg(InstancePtr->Control_BaseAddress, XCIFRADOR_PARALELO_32_CTR_CONTROL_ADDR_CIPHERTEXT_14_DATA);
    return Data;
}

u32 XCifrador_paralelo_32_ctr_Get_ciphertext_14_vld(XCifrador_paralelo_32_ctr *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCifrador_paralelo_32_ctr_ReadReg(InstancePtr->Control_BaseAddress, XCIFRADOR_PARALELO_32_CTR_CONTROL_ADDR_CIPHERTEXT_14_CTRL);
    return Data & 0x1;
}

u32 XCifrador_paralelo_32_ctr_Get_ciphertext_15(XCifrador_paralelo_32_ctr *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCifrador_paralelo_32_ctr_ReadReg(InstancePtr->Control_BaseAddress, XCIFRADOR_PARALELO_32_CTR_CONTROL_ADDR_CIPHERTEXT_15_DATA);
    return Data;
}

u32 XCifrador_paralelo_32_ctr_Get_ciphertext_15_vld(XCifrador_paralelo_32_ctr *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCifrador_paralelo_32_ctr_ReadReg(InstancePtr->Control_BaseAddress, XCIFRADOR_PARALELO_32_CTR_CONTROL_ADDR_CIPHERTEXT_15_CTRL);
    return Data & 0x1;
}

u32 XCifrador_paralelo_32_ctr_Get_ciphertext_16(XCifrador_paralelo_32_ctr *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCifrador_paralelo_32_ctr_ReadReg(InstancePtr->Control_BaseAddress, XCIFRADOR_PARALELO_32_CTR_CONTROL_ADDR_CIPHERTEXT_16_DATA);
    return Data;
}

u32 XCifrador_paralelo_32_ctr_Get_ciphertext_16_vld(XCifrador_paralelo_32_ctr *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCifrador_paralelo_32_ctr_ReadReg(InstancePtr->Control_BaseAddress, XCIFRADOR_PARALELO_32_CTR_CONTROL_ADDR_CIPHERTEXT_16_CTRL);
    return Data & 0x1;
}

u32 XCifrador_paralelo_32_ctr_Get_ciphertext_17(XCifrador_paralelo_32_ctr *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCifrador_paralelo_32_ctr_ReadReg(InstancePtr->Control_BaseAddress, XCIFRADOR_PARALELO_32_CTR_CONTROL_ADDR_CIPHERTEXT_17_DATA);
    return Data;
}

u32 XCifrador_paralelo_32_ctr_Get_ciphertext_17_vld(XCifrador_paralelo_32_ctr *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCifrador_paralelo_32_ctr_ReadReg(InstancePtr->Control_BaseAddress, XCIFRADOR_PARALELO_32_CTR_CONTROL_ADDR_CIPHERTEXT_17_CTRL);
    return Data & 0x1;
}

u32 XCifrador_paralelo_32_ctr_Get_ciphertext_18(XCifrador_paralelo_32_ctr *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCifrador_paralelo_32_ctr_ReadReg(InstancePtr->Control_BaseAddress, XCIFRADOR_PARALELO_32_CTR_CONTROL_ADDR_CIPHERTEXT_18_DATA);
    return Data;
}

u32 XCifrador_paralelo_32_ctr_Get_ciphertext_18_vld(XCifrador_paralelo_32_ctr *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCifrador_paralelo_32_ctr_ReadReg(InstancePtr->Control_BaseAddress, XCIFRADOR_PARALELO_32_CTR_CONTROL_ADDR_CIPHERTEXT_18_CTRL);
    return Data & 0x1;
}

u32 XCifrador_paralelo_32_ctr_Get_ciphertext_19(XCifrador_paralelo_32_ctr *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCifrador_paralelo_32_ctr_ReadReg(InstancePtr->Control_BaseAddress, XCIFRADOR_PARALELO_32_CTR_CONTROL_ADDR_CIPHERTEXT_19_DATA);
    return Data;
}

u32 XCifrador_paralelo_32_ctr_Get_ciphertext_19_vld(XCifrador_paralelo_32_ctr *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCifrador_paralelo_32_ctr_ReadReg(InstancePtr->Control_BaseAddress, XCIFRADOR_PARALELO_32_CTR_CONTROL_ADDR_CIPHERTEXT_19_CTRL);
    return Data & 0x1;
}

u32 XCifrador_paralelo_32_ctr_Get_ciphertext_20(XCifrador_paralelo_32_ctr *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCifrador_paralelo_32_ctr_ReadReg(InstancePtr->Control_BaseAddress, XCIFRADOR_PARALELO_32_CTR_CONTROL_ADDR_CIPHERTEXT_20_DATA);
    return Data;
}

u32 XCifrador_paralelo_32_ctr_Get_ciphertext_20_vld(XCifrador_paralelo_32_ctr *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCifrador_paralelo_32_ctr_ReadReg(InstancePtr->Control_BaseAddress, XCIFRADOR_PARALELO_32_CTR_CONTROL_ADDR_CIPHERTEXT_20_CTRL);
    return Data & 0x1;
}

u32 XCifrador_paralelo_32_ctr_Get_ciphertext_21(XCifrador_paralelo_32_ctr *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCifrador_paralelo_32_ctr_ReadReg(InstancePtr->Control_BaseAddress, XCIFRADOR_PARALELO_32_CTR_CONTROL_ADDR_CIPHERTEXT_21_DATA);
    return Data;
}

u32 XCifrador_paralelo_32_ctr_Get_ciphertext_21_vld(XCifrador_paralelo_32_ctr *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCifrador_paralelo_32_ctr_ReadReg(InstancePtr->Control_BaseAddress, XCIFRADOR_PARALELO_32_CTR_CONTROL_ADDR_CIPHERTEXT_21_CTRL);
    return Data & 0x1;
}

u32 XCifrador_paralelo_32_ctr_Get_ciphertext_22(XCifrador_paralelo_32_ctr *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCifrador_paralelo_32_ctr_ReadReg(InstancePtr->Control_BaseAddress, XCIFRADOR_PARALELO_32_CTR_CONTROL_ADDR_CIPHERTEXT_22_DATA);
    return Data;
}

u32 XCifrador_paralelo_32_ctr_Get_ciphertext_22_vld(XCifrador_paralelo_32_ctr *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCifrador_paralelo_32_ctr_ReadReg(InstancePtr->Control_BaseAddress, XCIFRADOR_PARALELO_32_CTR_CONTROL_ADDR_CIPHERTEXT_22_CTRL);
    return Data & 0x1;
}

u32 XCifrador_paralelo_32_ctr_Get_ciphertext_23(XCifrador_paralelo_32_ctr *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCifrador_paralelo_32_ctr_ReadReg(InstancePtr->Control_BaseAddress, XCIFRADOR_PARALELO_32_CTR_CONTROL_ADDR_CIPHERTEXT_23_DATA);
    return Data;
}

u32 XCifrador_paralelo_32_ctr_Get_ciphertext_23_vld(XCifrador_paralelo_32_ctr *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCifrador_paralelo_32_ctr_ReadReg(InstancePtr->Control_BaseAddress, XCIFRADOR_PARALELO_32_CTR_CONTROL_ADDR_CIPHERTEXT_23_CTRL);
    return Data & 0x1;
}

u32 XCifrador_paralelo_32_ctr_Get_ciphertext_24(XCifrador_paralelo_32_ctr *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCifrador_paralelo_32_ctr_ReadReg(InstancePtr->Control_BaseAddress, XCIFRADOR_PARALELO_32_CTR_CONTROL_ADDR_CIPHERTEXT_24_DATA);
    return Data;
}

u32 XCifrador_paralelo_32_ctr_Get_ciphertext_24_vld(XCifrador_paralelo_32_ctr *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCifrador_paralelo_32_ctr_ReadReg(InstancePtr->Control_BaseAddress, XCIFRADOR_PARALELO_32_CTR_CONTROL_ADDR_CIPHERTEXT_24_CTRL);
    return Data & 0x1;
}

u32 XCifrador_paralelo_32_ctr_Get_ciphertext_25(XCifrador_paralelo_32_ctr *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCifrador_paralelo_32_ctr_ReadReg(InstancePtr->Control_BaseAddress, XCIFRADOR_PARALELO_32_CTR_CONTROL_ADDR_CIPHERTEXT_25_DATA);
    return Data;
}

u32 XCifrador_paralelo_32_ctr_Get_ciphertext_25_vld(XCifrador_paralelo_32_ctr *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCifrador_paralelo_32_ctr_ReadReg(InstancePtr->Control_BaseAddress, XCIFRADOR_PARALELO_32_CTR_CONTROL_ADDR_CIPHERTEXT_25_CTRL);
    return Data & 0x1;
}

u32 XCifrador_paralelo_32_ctr_Get_ciphertext_26(XCifrador_paralelo_32_ctr *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCifrador_paralelo_32_ctr_ReadReg(InstancePtr->Control_BaseAddress, XCIFRADOR_PARALELO_32_CTR_CONTROL_ADDR_CIPHERTEXT_26_DATA);
    return Data;
}

u32 XCifrador_paralelo_32_ctr_Get_ciphertext_26_vld(XCifrador_paralelo_32_ctr *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCifrador_paralelo_32_ctr_ReadReg(InstancePtr->Control_BaseAddress, XCIFRADOR_PARALELO_32_CTR_CONTROL_ADDR_CIPHERTEXT_26_CTRL);
    return Data & 0x1;
}

u32 XCifrador_paralelo_32_ctr_Get_ciphertext_27(XCifrador_paralelo_32_ctr *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCifrador_paralelo_32_ctr_ReadReg(InstancePtr->Control_BaseAddress, XCIFRADOR_PARALELO_32_CTR_CONTROL_ADDR_CIPHERTEXT_27_DATA);
    return Data;
}

u32 XCifrador_paralelo_32_ctr_Get_ciphertext_27_vld(XCifrador_paralelo_32_ctr *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCifrador_paralelo_32_ctr_ReadReg(InstancePtr->Control_BaseAddress, XCIFRADOR_PARALELO_32_CTR_CONTROL_ADDR_CIPHERTEXT_27_CTRL);
    return Data & 0x1;
}

u32 XCifrador_paralelo_32_ctr_Get_ciphertext_28(XCifrador_paralelo_32_ctr *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCifrador_paralelo_32_ctr_ReadReg(InstancePtr->Control_BaseAddress, XCIFRADOR_PARALELO_32_CTR_CONTROL_ADDR_CIPHERTEXT_28_DATA);
    return Data;
}

u32 XCifrador_paralelo_32_ctr_Get_ciphertext_28_vld(XCifrador_paralelo_32_ctr *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCifrador_paralelo_32_ctr_ReadReg(InstancePtr->Control_BaseAddress, XCIFRADOR_PARALELO_32_CTR_CONTROL_ADDR_CIPHERTEXT_28_CTRL);
    return Data & 0x1;
}

u32 XCifrador_paralelo_32_ctr_Get_ciphertext_29(XCifrador_paralelo_32_ctr *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCifrador_paralelo_32_ctr_ReadReg(InstancePtr->Control_BaseAddress, XCIFRADOR_PARALELO_32_CTR_CONTROL_ADDR_CIPHERTEXT_29_DATA);
    return Data;
}

u32 XCifrador_paralelo_32_ctr_Get_ciphertext_29_vld(XCifrador_paralelo_32_ctr *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCifrador_paralelo_32_ctr_ReadReg(InstancePtr->Control_BaseAddress, XCIFRADOR_PARALELO_32_CTR_CONTROL_ADDR_CIPHERTEXT_29_CTRL);
    return Data & 0x1;
}

u32 XCifrador_paralelo_32_ctr_Get_ciphertext_30(XCifrador_paralelo_32_ctr *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCifrador_paralelo_32_ctr_ReadReg(InstancePtr->Control_BaseAddress, XCIFRADOR_PARALELO_32_CTR_CONTROL_ADDR_CIPHERTEXT_30_DATA);
    return Data;
}

u32 XCifrador_paralelo_32_ctr_Get_ciphertext_30_vld(XCifrador_paralelo_32_ctr *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCifrador_paralelo_32_ctr_ReadReg(InstancePtr->Control_BaseAddress, XCIFRADOR_PARALELO_32_CTR_CONTROL_ADDR_CIPHERTEXT_30_CTRL);
    return Data & 0x1;
}

u32 XCifrador_paralelo_32_ctr_Get_ciphertext_31(XCifrador_paralelo_32_ctr *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCifrador_paralelo_32_ctr_ReadReg(InstancePtr->Control_BaseAddress, XCIFRADOR_PARALELO_32_CTR_CONTROL_ADDR_CIPHERTEXT_31_DATA);
    return Data;
}

u32 XCifrador_paralelo_32_ctr_Get_ciphertext_31_vld(XCifrador_paralelo_32_ctr *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCifrador_paralelo_32_ctr_ReadReg(InstancePtr->Control_BaseAddress, XCIFRADOR_PARALELO_32_CTR_CONTROL_ADDR_CIPHERTEXT_31_CTRL);
    return Data & 0x1;
}

void XCifrador_paralelo_32_ctr_Set_nonce(XCifrador_paralelo_32_ctr *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCifrador_paralelo_32_ctr_WriteReg(InstancePtr->Control_BaseAddress, XCIFRADOR_PARALELO_32_CTR_CONTROL_ADDR_NONCE_DATA, Data);
}

u32 XCifrador_paralelo_32_ctr_Get_nonce(XCifrador_paralelo_32_ctr *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCifrador_paralelo_32_ctr_ReadReg(InstancePtr->Control_BaseAddress, XCIFRADOR_PARALELO_32_CTR_CONTROL_ADDR_NONCE_DATA);
    return Data;
}

void XCifrador_paralelo_32_ctr_InterruptGlobalEnable(XCifrador_paralelo_32_ctr *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCifrador_paralelo_32_ctr_WriteReg(InstancePtr->Control_BaseAddress, XCIFRADOR_PARALELO_32_CTR_CONTROL_ADDR_GIE, 1);
}

void XCifrador_paralelo_32_ctr_InterruptGlobalDisable(XCifrador_paralelo_32_ctr *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCifrador_paralelo_32_ctr_WriteReg(InstancePtr->Control_BaseAddress, XCIFRADOR_PARALELO_32_CTR_CONTROL_ADDR_GIE, 0);
}

void XCifrador_paralelo_32_ctr_InterruptEnable(XCifrador_paralelo_32_ctr *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XCifrador_paralelo_32_ctr_ReadReg(InstancePtr->Control_BaseAddress, XCIFRADOR_PARALELO_32_CTR_CONTROL_ADDR_IER);
    XCifrador_paralelo_32_ctr_WriteReg(InstancePtr->Control_BaseAddress, XCIFRADOR_PARALELO_32_CTR_CONTROL_ADDR_IER, Register | Mask);
}

void XCifrador_paralelo_32_ctr_InterruptDisable(XCifrador_paralelo_32_ctr *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XCifrador_paralelo_32_ctr_ReadReg(InstancePtr->Control_BaseAddress, XCIFRADOR_PARALELO_32_CTR_CONTROL_ADDR_IER);
    XCifrador_paralelo_32_ctr_WriteReg(InstancePtr->Control_BaseAddress, XCIFRADOR_PARALELO_32_CTR_CONTROL_ADDR_IER, Register & (~Mask));
}

void XCifrador_paralelo_32_ctr_InterruptClear(XCifrador_paralelo_32_ctr *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCifrador_paralelo_32_ctr_WriteReg(InstancePtr->Control_BaseAddress, XCIFRADOR_PARALELO_32_CTR_CONTROL_ADDR_ISR, Mask);
}

u32 XCifrador_paralelo_32_ctr_InterruptGetEnabled(XCifrador_paralelo_32_ctr *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XCifrador_paralelo_32_ctr_ReadReg(InstancePtr->Control_BaseAddress, XCIFRADOR_PARALELO_32_CTR_CONTROL_ADDR_IER);
}

u32 XCifrador_paralelo_32_ctr_InterruptGetStatus(XCifrador_paralelo_32_ctr *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XCifrador_paralelo_32_ctr_ReadReg(InstancePtr->Control_BaseAddress, XCIFRADOR_PARALELO_32_CTR_CONTROL_ADDR_ISR);
}

