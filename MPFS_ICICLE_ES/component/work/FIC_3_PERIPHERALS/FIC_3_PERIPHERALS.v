//////////////////////////////////////////////////////////////////////
// Created by SmartDesign Wed Dec 17 14:58:18 2025
// Version: 2025.1 2025.1.0.14
//////////////////////////////////////////////////////////////////////

`timescale 1ns / 100ps

// FIC_3_PERIPHERALS
module FIC_3_PERIPHERALS(
    // Inputs
    APB_MMASTER_in_paddr,
    APB_MMASTER_in_penable,
    APB_MMASTER_in_psel,
    APB_MMASTER_in_pwdata,
    APB_MMASTER_in_pwrite,
    CoreUARTapb_RX,
    FIC_3_0x43xx_xxxx_0x48xx_xxxx_APBmslave16_PRDATAS16,
    FIC_3_0x43xx_xxxx_0x48xx_xxxx_APBmslave16_PREADYS16,
    FIC_3_0x43xx_xxxx_0x48xx_xxxx_APBmslave16_PSLVERRS16,
    PCLK,
    PRESETN,
    // Outputs
    APB_MMASTER_in_prdata,
    APB_MMASTER_in_pready,
    APB_MMASTER_in_pslverr,
    CoreUARTapb_TX,
    FIC_3_0x43xx_xxxx_0x48xx_xxxx_APBmslave16_PADDRS,
    FIC_3_0x43xx_xxxx_0x48xx_xxxx_APBmslave16_PENABLES,
    FIC_3_0x43xx_xxxx_0x48xx_xxxx_APBmslave16_PSELS16,
    FIC_3_0x43xx_xxxx_0x48xx_xxxx_APBmslave16_PWDATAS,
    FIC_3_0x43xx_xxxx_0x48xx_xxxx_APBmslave16_PWRITES,
    FRAMING_ERR,
    GPIO_OUT_0,
    GPIO_OUT_1,
    GPIO_OUT_2,
    GPIO_OUT_3,
    IHC_MP_APP_E51_IRQ,
    IHC_MP_APP_U54_1_IRQ,
    IHC_MP_APP_U54_2_IRQ,
    IHC_MP_APP_U54_3_IRQ,
    IHC_MP_APP_U54_4_IRQ,
    OVERFLOW,
    PARITY_ERR,
    PWM_0,
    RPI_ID_I2C_IRQ,
    RXRDY,
    TXRDY,
    fabric_sd_emmc_demux_select_out,
    // Inouts
    RPi_ID_SC,
    RPi_ID_SD
);

//--------------------------------------------------------------------
// Input
//--------------------------------------------------------------------
input  [31:0] APB_MMASTER_in_paddr;
input         APB_MMASTER_in_penable;
input         APB_MMASTER_in_psel;
input  [31:0] APB_MMASTER_in_pwdata;
input         APB_MMASTER_in_pwrite;
input         CoreUARTapb_RX;
input  [31:0] FIC_3_0x43xx_xxxx_0x48xx_xxxx_APBmslave16_PRDATAS16;
input         FIC_3_0x43xx_xxxx_0x48xx_xxxx_APBmslave16_PREADYS16;
input         FIC_3_0x43xx_xxxx_0x48xx_xxxx_APBmslave16_PSLVERRS16;
input         PCLK;
input         PRESETN;
//--------------------------------------------------------------------
// Output
//--------------------------------------------------------------------
output [31:0] APB_MMASTER_in_prdata;
output        APB_MMASTER_in_pready;
output        APB_MMASTER_in_pslverr;
output        CoreUARTapb_TX;
output [31:0] FIC_3_0x43xx_xxxx_0x48xx_xxxx_APBmslave16_PADDRS;
output        FIC_3_0x43xx_xxxx_0x48xx_xxxx_APBmslave16_PENABLES;
output        FIC_3_0x43xx_xxxx_0x48xx_xxxx_APBmslave16_PSELS16;
output [31:0] FIC_3_0x43xx_xxxx_0x48xx_xxxx_APBmslave16_PWDATAS;
output        FIC_3_0x43xx_xxxx_0x48xx_xxxx_APBmslave16_PWRITES;
output        FRAMING_ERR;
output        GPIO_OUT_0;
output        GPIO_OUT_1;
output        GPIO_OUT_2;
output        GPIO_OUT_3;
output        IHC_MP_APP_E51_IRQ;
output        IHC_MP_APP_U54_1_IRQ;
output        IHC_MP_APP_U54_2_IRQ;
output        IHC_MP_APP_U54_3_IRQ;
output        IHC_MP_APP_U54_4_IRQ;
output        OVERFLOW;
output        PARITY_ERR;
output        PWM_0;
output        RPI_ID_I2C_IRQ;
output        RXRDY;
output        TXRDY;
output        fabric_sd_emmc_demux_select_out;
//--------------------------------------------------------------------
// Inout
//--------------------------------------------------------------------
inout         RPi_ID_SC;
inout         RPi_ID_SD;
//--------------------------------------------------------------------
// Nets
//--------------------------------------------------------------------
wire   [31:0] APB_MMASTER_in_paddr;
wire          APB_MMASTER_in_penable;
wire   [31:0] APB_MMASTER_PRDATA;
wire          APB_MMASTER_PREADY;
wire          APB_MMASTER_in_psel;
wire          APB_MMASTER_PSLVERR;
wire   [31:0] APB_MMASTER_in_pwdata;
wire          APB_MMASTER_in_pwrite;
wire          APBmslave0_PENABLES_0_5;
wire          APBmslave0_PWRITES_0_5;
wire          CoreUARTapb_C1_FRAMING_ERR;
wire          CoreUARTapb_C1_OVERFLOW;
wire          CoreUARTapb_C1_PARITY_ERR;
wire          CoreUARTapb_C1_RXRDY;
wire          CoreUARTapb_C1_TX;
wire          CoreUARTapb_C1_TXRDY;
wire          CoreUARTapb_C2_FRAMING_ERR;
wire          CoreUARTapb_C2_OVERFLOW;
wire          CoreUARTapb_C2_PARITY_ERR;
wire          CoreUARTapb_C2_RXRDY;
wire          CoreUARTapb_C2_TX;
wire          CoreUARTapb_C2_TXRDY;
wire          CoreUARTapb_C3_FRAMING_ERR;
wire          CoreUARTapb_C3_OVERFLOW;
wire          CoreUARTapb_C3_PARITY_ERR;
wire          CoreUARTapb_C3_RXRDY;
wire          CoreUARTapb_C3_TX;
wire          CoreUARTapb_C3_TXRDY;
wire          CoreUARTapb_C4_FRAMING_ERR;
wire          CoreUARTapb_C4_OVERFLOW;
wire          CoreUARTapb_C4_PARITY_ERR;
wire          CoreUARTapb_C4_RXRDY;
wire          CoreUARTapb_C4_TX;
wire          CoreUARTapb_C4_TXRDY;
wire          CoreUARTapb_C5_FRAMING_ERR;
wire          CoreUARTapb_C5_OVERFLOW;
wire          CoreUARTapb_C5_PARITY_ERR;
wire          CoreUARTapb_C5_RXRDY;
wire          CoreUARTapb_C5_TX;
wire          CoreUARTapb_C5_TXRDY;
wire          CoreUARTapb_C6_FRAMING_ERR;
wire          CoreUARTapb_C6_OVERFLOW;
wire          CoreUARTapb_C6_PARITY_ERR;
wire          CoreUARTapb_C6_RXRDY;
wire          CoreUARTapb_C6_TX;
wire          CoreUARTapb_C6_TXRDY;
wire          CoreUARTapb_C7_FRAMING_ERR;
wire          CoreUARTapb_C7_OVERFLOW;
wire          CoreUARTapb_C7_PARITY_ERR;
wire          CoreUARTapb_C7_RXRDY;
wire          CoreUARTapb_C7_TX;
wire          CoreUARTapb_C7_TXRDY;
wire          CoreUARTapb_C8_FRAMING_ERR;
wire          CoreUARTapb_C8_OVERFLOW;
wire          CoreUARTapb_C8_PARITY_ERR;
wire          CoreUARTapb_C8_RXRDY;
wire          CoreUARTapb_C8_TX;
wire          CoreUARTapb_C8_TXRDY;
wire          CoreUARTapb_C9_FRAMING_ERR;
wire          CoreUARTapb_C9_OVERFLOW;
wire          CoreUARTapb_C9_PARITY_ERR;
wire          CoreUARTapb_C9_RXRDY;
wire          CoreUARTapb_C9_TX;
wire          CoreUARTapb_C9_TXRDY;
wire          CoreUARTapb_RX;
wire          CoreUARTapb_TX_net_0;
wire          fabric_sd_emmc_demux_select_out_net_0;
wire   [31:0] FIC_3_0x43xx_xxxx_0x48xx_xxxx_PADDR;
wire          FIC_3_0x43xx_xxxx_0x48xx_xxxx_PENABLE;
wire   [31:0] FIC_3_0x43xx_xxxx_0x48xx_xxxx_APBmslave16_PRDATAS16;
wire          FIC_3_0x43xx_xxxx_0x48xx_xxxx_APBmslave16_PREADYS16;
wire          FIC_3_0x43xx_xxxx_0x48xx_xxxx_PSELx;
wire          FIC_3_0x43xx_xxxx_0x48xx_xxxx_APBmslave16_PSLVERRS16;
wire   [31:0] FIC_3_0x43xx_xxxx_0x48xx_xxxx_PWDATA;
wire          FIC_3_0x43xx_xxxx_0x48xx_xxxx_PWRITE;
wire          FIC_3_0x4000_04xx_PSELS4_0;
wire          FIC_3_0x4000_04xx_PSELS4_0_0;
wire          FIC_3_0x4000_04xx_PSELS4_0_1;
wire          FIC_3_0x4000_04xx_PSELS4_0_2;
wire          FIC_3_0x4000_04xx_PSELS4_0_3;
wire          FIC_3_0x4000_04xx_PSELS4_0_4;
wire          FIC_3_0x4000_04xx_PSELS4_0_4_0;
wire   [31:0] FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4FFF_FFxx_PADDR;
wire          FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4FFF_FFxx_PENABLE;
wire   [31:0] FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4FFF_FFxx_PRDATA;
wire          FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4FFF_FFxx_PREADY;
wire          FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4FFF_FFxx_PSELx;
wire          FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4FFF_FFxx_PSLVERR;
wire   [31:0] FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4FFF_FFxx_PWDATA;
wire          FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4FFF_FFxx_PWRITE;
wire   [31:0] FIC_3_ADDRESS_GENERATION_1_FIC_3_0x5xxx_xxxx_PADDR;
wire          FIC_3_ADDRESS_GENERATION_1_FIC_3_0x5xxx_xxxx_PENABLE;
wire   [31:0] FIC_3_ADDRESS_GENERATION_1_FIC_3_0x5xxx_xxxx_PRDATA;
wire          FIC_3_ADDRESS_GENERATION_1_FIC_3_0x5xxx_xxxx_PREADY;
wire          FIC_3_ADDRESS_GENERATION_1_FIC_3_0x5xxx_xxxx_PSELx;
wire          FIC_3_ADDRESS_GENERATION_1_FIC_3_0x5xxx_xxxx_PSLVERR;
wire   [31:0] FIC_3_ADDRESS_GENERATION_1_FIC_3_0x5xxx_xxxx_PWDATA;
wire          FIC_3_ADDRESS_GENERATION_1_FIC_3_0x5xxx_xxxx_PWRITE;
wire          FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_0axx_PENABLE;
wire          FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_0axx_PREADY;
wire          FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_0axx_PSLVERR;
wire          FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_0axx_PWRITE;
wire          FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_0Bxx_PREADY;
wire          FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_0Bxx_PSLVERR;
wire   [31:0] FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_00xx_PRDATA;
wire          FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_00xx_PREADY;
wire          FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_00xx_PSELx;
wire          FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_00xx_PSLVERR;
wire   [31:0] FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_01xx_PRDATA;
wire          FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_01xx_PREADY;
wire          FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_01xx_PSELx;
wire          FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_01xx_PSLVERR;
wire          FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_02xx_PREADY;
wire          FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_02xx_PSELx;
wire          FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_02xx_PSLVERR;
wire          FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_03xx_PREADY;
wire          FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_03xx_PSELx;
wire          FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_03xx_PSLVERR;
wire          FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_04xx_PSELx;
wire          FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_05xx_PREADY;
wire          FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_05xx_PSLVERR;
wire          FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_06xx_PREADY;
wire          FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_06xx_PSLVERR;
wire          FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_07xx_PREADY;
wire          FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_07xx_PSLVERR;
wire          FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_08xx_PREADY;
wire          FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_08xx_PSLVERR;
wire          FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_09xx_PREADY;
wire          FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_09xx_PSLVERR;
wire          FRAMING_ERR_net_0;
wire   [0:0]  GPIO_OUT_0_net_0;
wire   [1:1]  GPIO_OUT_1_net_0;
wire   [2:2]  GPIO_OUT_2_net_0;
wire   [3:3]  GPIO_OUT_3_net_0;
wire          IHC_MP_APP_E51_IRQ_net_0;
wire          IHC_MP_APP_U54_1_IRQ_net_0;
wire          IHC_MP_APP_U54_2_IRQ_net_0;
wire          IHC_MP_APP_U54_3_IRQ_net_0;
wire          IHC_MP_APP_U54_4_IRQ_net_0;
wire          OR3_0_0_0_0_Y;
wire          OR3_0_0_0_1_0_Y;
wire          OR3_0_0_0_1_Y;
wire          OR3_0_0_0_Y;
wire          OR3_0_0_Y;
wire          OR3_0_Y;
wire          OR3_1_0_0_0_Y;
wire          OR3_1_0_0_1_0_Y;
wire          OR3_1_0_0_1_Y;
wire          OR3_1_0_0_Y;
wire          OR3_1_0_Y;
wire          OR3_1_Y;
wire          OR3_2_0_0_0_Y;
wire          OR3_2_0_0_1_0_Y;
wire          OR3_2_0_0_1_Y;
wire          OR3_2_0_0_Y;
wire          OR3_2_0_Y;
wire          OR3_2_Y;
wire          OVERFLOW_net_0;
wire          PARITY_ERR_net_0;
wire          PCLK;
wire          PRESETN;
wire   [0:0]  PWM_0_net_0;
wire          RPI_ID_I2C_IRQ_net_0;
wire          RPi_ID_SC;
wire          RPi_ID_SD;
wire          RXRDY_net_0;
wire          TXRDY_net_0;
wire          GPIO_OUT_0_net_1;
wire          GPIO_OUT_1_net_1;
wire          GPIO_OUT_2_net_1;
wire          GPIO_OUT_3_net_1;
wire          IHC_MP_APP_E51_IRQ_net_1;
wire          IHC_MP_APP_U54_1_IRQ_net_1;
wire          IHC_MP_APP_U54_2_IRQ_net_1;
wire          IHC_MP_APP_U54_3_IRQ_net_1;
wire          IHC_MP_APP_U54_4_IRQ_net_1;
wire          PWM_0_net_1;
wire          RPI_ID_I2C_IRQ_net_1;
wire          fabric_sd_emmc_demux_select_out_net_1;
wire          TXRDY_net_1;
wire          RXRDY_net_1;
wire          PARITY_ERR_net_1;
wire          OVERFLOW_net_1;
wire          CoreUARTapb_TX_net_1;
wire          FRAMING_ERR_net_1;
wire          APB_MMASTER_PREADY_net_0;
wire          APB_MMASTER_PSLVERR_net_0;
wire          FIC_3_0x43xx_xxxx_0x48xx_xxxx_PSELx_net_0;
wire          FIC_3_0x43xx_xxxx_0x48xx_xxxx_PENABLE_net_0;
wire          FIC_3_0x43xx_xxxx_0x48xx_xxxx_PWRITE_net_0;
wire   [31:0] APB_MMASTER_PRDATA_net_0;
wire   [31:0] FIC_3_0x43xx_xxxx_0x48xx_xxxx_PADDR_net_0;
wire   [31:0] FIC_3_0x43xx_xxxx_0x48xx_xxxx_PWDATA_net_0;
wire   [3:0]  GPIO_OUT_net_0;
wire   [0:0]  PWM_net_0;
//--------------------------------------------------------------------
// TiedOff Nets
//--------------------------------------------------------------------
wire   [3:0]  GPIO_IN_const_net_0;
wire          VCC_net;
wire          GND_net;
//--------------------------------------------------------------------
// Bus Interface Nets Declarations - Unequal Pin Widths
//--------------------------------------------------------------------
wire   [31:0] APBmslave0_PADDRS_0;
wire   [4:0]  APBmslave0_PADDRS_0_0;
wire   [4:0]  APBmslave0_PADDRS_0_0_4to0;
wire   [31:0] APBmslave0_PWDATAS_0;
wire   [7:0]  APBmslave0_PWDATAS_0_0;
wire   [7:0]  APBmslave0_PWDATAS_0_0_7to0;
wire   [31:0] FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_0axx_PADDR;
wire   [4:0]  FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_0axx_PADDR_0;
wire   [4:0]  FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_0axx_PADDR_0_4to0;
wire   [7:0]  FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_0axx_PADDR_1;
wire   [4:0]  FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_0axx_PADDR_10;
wire   [4:0]  FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_0axx_PADDR_10_4to0;
wire   [7:0]  FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_0axx_PADDR_1_7to0;
wire   [7:0]  FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_0axx_PADDR_2;
wire   [7:0]  FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_0axx_PADDR_2_7to0;
wire   [4:0]  FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_0axx_PADDR_3;
wire   [4:0]  FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_0axx_PADDR_3_4to0;
wire   [4:0]  FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_0axx_PADDR_4;
wire   [4:0]  FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_0axx_PADDR_4_4to0;
wire   [8:0]  FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_0axx_PADDR_5;
wire   [8:0]  FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_0axx_PADDR_5_8to0;
wire   [4:0]  FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_0axx_PADDR_6;
wire   [4:0]  FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_0axx_PADDR_6_4to0;
wire   [4:0]  FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_0axx_PADDR_7;
wire   [4:0]  FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_0axx_PADDR_7_4to0;
wire   [4:0]  FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_0axx_PADDR_8;
wire   [4:0]  FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_0axx_PADDR_8_4to0;
wire   [4:0]  FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_0axx_PADDR_9;
wire   [4:0]  FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_0axx_PADDR_9_4to0;
wire   [7:0]  FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_0axx_PRDATA;
wire   [31:0] FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_0axx_PRDATA_0;
wire   [31:8] FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_0axx_PRDATA_0_31to8;
wire   [7:0]  FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_0axx_PRDATA_0_7to0;
wire   [31:0] FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_0axx_PWDATA;
wire   [7:0]  FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_0axx_PWDATA_0;
wire   [7:0]  FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_0axx_PWDATA_0_7to0;
wire   [7:0]  FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_0axx_PWDATA_1;
wire   [7:0]  FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_0axx_PWDATA_1_7to0;
wire   [7:0]  FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_0axx_PWDATA_2;
wire   [7:0]  FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_0axx_PWDATA_2_7to0;
wire   [7:0]  FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_0axx_PWDATA_3;
wire   [7:0]  FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_0axx_PWDATA_3_7to0;
wire   [7:0]  FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_0axx_PWDATA_4;
wire   [7:0]  FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_0axx_PWDATA_4_7to0;
wire   [7:0]  FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_0axx_PWDATA_5;
wire   [7:0]  FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_0axx_PWDATA_5_7to0;
wire   [7:0]  FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_0axx_PWDATA_6;
wire   [7:0]  FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_0axx_PWDATA_6_7to0;
wire   [7:0]  FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_0axx_PWDATA_7;
wire   [7:0]  FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_0axx_PWDATA_7_7to0;
wire   [7:0]  FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_0axx_PWDATA_8;
wire   [7:0]  FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_0axx_PWDATA_8_7to0;
wire   [7:0]  FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_0Bxx_PRDATA;
wire   [31:0] FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_0Bxx_PRDATA_0;
wire   [31:8] FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_0Bxx_PRDATA_0_31to8;
wire   [7:0]  FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_0Bxx_PRDATA_0_7to0;
wire   [7:0]  FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_02xx_PRDATA;
wire   [31:0] FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_02xx_PRDATA_0;
wire   [31:8] FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_02xx_PRDATA_0_31to8;
wire   [7:0]  FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_02xx_PRDATA_0_7to0;
wire   [7:0]  FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_03xx_PRDATA;
wire   [31:0] FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_03xx_PRDATA_0;
wire   [31:8] FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_03xx_PRDATA_0_31to8;
wire   [7:0]  FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_03xx_PRDATA_0_7to0;
wire   [7:0]  FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_04xx_PRDATA;
wire   [31:0] FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_04xx_PRDATA_0;
wire   [31:8] FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_04xx_PRDATA_0_31to8;
wire   [7:0]  FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_04xx_PRDATA_0_7to0;
wire   [7:0]  FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_05xx_PRDATA;
wire   [31:0] FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_05xx_PRDATA_0;
wire   [31:8] FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_05xx_PRDATA_0_31to8;
wire   [7:0]  FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_05xx_PRDATA_0_7to0;
wire   [7:0]  FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_06xx_PRDATA;
wire   [31:0] FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_06xx_PRDATA_0;
wire   [31:8] FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_06xx_PRDATA_0_31to8;
wire   [7:0]  FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_06xx_PRDATA_0_7to0;
wire   [7:0]  FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_07xx_PRDATA;
wire   [31:0] FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_07xx_PRDATA_0;
wire   [31:8] FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_07xx_PRDATA_0_31to8;
wire   [7:0]  FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_07xx_PRDATA_0_7to0;
wire   [7:0]  FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_08xx_PRDATA;
wire   [31:0] FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_08xx_PRDATA_0;
wire   [31:8] FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_08xx_PRDATA_0_31to8;
wire   [7:0]  FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_08xx_PRDATA_0_7to0;
wire   [7:0]  FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_09xx_PRDATA;
wire   [31:0] FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_09xx_PRDATA_0;
wire   [31:8] FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_09xx_PRDATA_0_31to8;
wire   [7:0]  FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_09xx_PRDATA_0_7to0;
//--------------------------------------------------------------------
// Constant assignments
//--------------------------------------------------------------------
assign GPIO_IN_const_net_0 = 4'h0;
assign VCC_net             = 1'b1;
assign GND_net             = 1'b0;
//--------------------------------------------------------------------
// Top level output port assignments
//--------------------------------------------------------------------
assign GPIO_OUT_0_net_1                                        = GPIO_OUT_0_net_0[0];
assign GPIO_OUT_0                                              = GPIO_OUT_0_net_1;
assign GPIO_OUT_1_net_1                                        = GPIO_OUT_1_net_0[1];
assign GPIO_OUT_1                                              = GPIO_OUT_1_net_1;
assign GPIO_OUT_2_net_1                                        = GPIO_OUT_2_net_0[2];
assign GPIO_OUT_2                                              = GPIO_OUT_2_net_1;
assign GPIO_OUT_3_net_1                                        = GPIO_OUT_3_net_0[3];
assign GPIO_OUT_3                                              = GPIO_OUT_3_net_1;
assign IHC_MP_APP_E51_IRQ_net_1                                = IHC_MP_APP_E51_IRQ_net_0;
assign IHC_MP_APP_E51_IRQ                                      = IHC_MP_APP_E51_IRQ_net_1;
assign IHC_MP_APP_U54_1_IRQ_net_1                              = IHC_MP_APP_U54_1_IRQ_net_0;
assign IHC_MP_APP_U54_1_IRQ                                    = IHC_MP_APP_U54_1_IRQ_net_1;
assign IHC_MP_APP_U54_2_IRQ_net_1                              = IHC_MP_APP_U54_2_IRQ_net_0;
assign IHC_MP_APP_U54_2_IRQ                                    = IHC_MP_APP_U54_2_IRQ_net_1;
assign IHC_MP_APP_U54_3_IRQ_net_1                              = IHC_MP_APP_U54_3_IRQ_net_0;
assign IHC_MP_APP_U54_3_IRQ                                    = IHC_MP_APP_U54_3_IRQ_net_1;
assign IHC_MP_APP_U54_4_IRQ_net_1                              = IHC_MP_APP_U54_4_IRQ_net_0;
assign IHC_MP_APP_U54_4_IRQ                                    = IHC_MP_APP_U54_4_IRQ_net_1;
assign PWM_0_net_1                                             = PWM_0_net_0[0];
assign PWM_0                                                   = PWM_0_net_1;
assign RPI_ID_I2C_IRQ_net_1                                    = RPI_ID_I2C_IRQ_net_0;
assign RPI_ID_I2C_IRQ                                          = RPI_ID_I2C_IRQ_net_1;
assign fabric_sd_emmc_demux_select_out_net_1                   = fabric_sd_emmc_demux_select_out_net_0;
assign fabric_sd_emmc_demux_select_out                         = fabric_sd_emmc_demux_select_out_net_1;
assign TXRDY_net_1                                             = TXRDY_net_0;
assign TXRDY                                                   = TXRDY_net_1;
assign RXRDY_net_1                                             = RXRDY_net_0;
assign RXRDY                                                   = RXRDY_net_1;
assign PARITY_ERR_net_1                                        = PARITY_ERR_net_0;
assign PARITY_ERR                                              = PARITY_ERR_net_1;
assign OVERFLOW_net_1                                          = OVERFLOW_net_0;
assign OVERFLOW                                                = OVERFLOW_net_1;
assign CoreUARTapb_TX_net_1                                    = CoreUARTapb_TX_net_0;
assign CoreUARTapb_TX                                          = CoreUARTapb_TX_net_1;
assign FRAMING_ERR_net_1                                       = FRAMING_ERR_net_0;
assign FRAMING_ERR                                             = FRAMING_ERR_net_1;
assign APB_MMASTER_PREADY_net_0                                = APB_MMASTER_PREADY;
assign APB_MMASTER_in_pready                                   = APB_MMASTER_PREADY_net_0;
assign APB_MMASTER_PSLVERR_net_0                               = APB_MMASTER_PSLVERR;
assign APB_MMASTER_in_pslverr                                  = APB_MMASTER_PSLVERR_net_0;
assign FIC_3_0x43xx_xxxx_0x48xx_xxxx_PSELx_net_0               = FIC_3_0x43xx_xxxx_0x48xx_xxxx_PSELx;
assign FIC_3_0x43xx_xxxx_0x48xx_xxxx_APBmslave16_PSELS16       = FIC_3_0x43xx_xxxx_0x48xx_xxxx_PSELx_net_0;
assign FIC_3_0x43xx_xxxx_0x48xx_xxxx_PENABLE_net_0             = FIC_3_0x43xx_xxxx_0x48xx_xxxx_PENABLE;
assign FIC_3_0x43xx_xxxx_0x48xx_xxxx_APBmslave16_PENABLES      = FIC_3_0x43xx_xxxx_0x48xx_xxxx_PENABLE_net_0;
assign FIC_3_0x43xx_xxxx_0x48xx_xxxx_PWRITE_net_0              = FIC_3_0x43xx_xxxx_0x48xx_xxxx_PWRITE;
assign FIC_3_0x43xx_xxxx_0x48xx_xxxx_APBmslave16_PWRITES       = FIC_3_0x43xx_xxxx_0x48xx_xxxx_PWRITE_net_0;
assign APB_MMASTER_PRDATA_net_0                                = APB_MMASTER_PRDATA;
assign APB_MMASTER_in_prdata[31:0]                             = APB_MMASTER_PRDATA_net_0;
assign FIC_3_0x43xx_xxxx_0x48xx_xxxx_PADDR_net_0               = FIC_3_0x43xx_xxxx_0x48xx_xxxx_PADDR;
assign FIC_3_0x43xx_xxxx_0x48xx_xxxx_APBmslave16_PADDRS[31:0]  = FIC_3_0x43xx_xxxx_0x48xx_xxxx_PADDR_net_0;
assign FIC_3_0x43xx_xxxx_0x48xx_xxxx_PWDATA_net_0              = FIC_3_0x43xx_xxxx_0x48xx_xxxx_PWDATA;
assign FIC_3_0x43xx_xxxx_0x48xx_xxxx_APBmslave16_PWDATAS[31:0] = FIC_3_0x43xx_xxxx_0x48xx_xxxx_PWDATA_net_0;
//--------------------------------------------------------------------
// Slices assignments
//--------------------------------------------------------------------
assign GPIO_OUT_0_net_0[0] = GPIO_OUT_net_0[0:0];
assign GPIO_OUT_1_net_0[1] = GPIO_OUT_net_0[1:1];
assign GPIO_OUT_2_net_0[2] = GPIO_OUT_net_0[2:2];
assign GPIO_OUT_3_net_0[3] = GPIO_OUT_net_0[3:3];
assign PWM_0_net_0[0]      = PWM_net_0[0];
//--------------------------------------------------------------------
// Bus Interface Nets Assignments - Unequal Pin Widths
//--------------------------------------------------------------------
assign APBmslave0_PADDRS_0_0 = { APBmslave0_PADDRS_0_0_4to0 };
assign APBmslave0_PADDRS_0_0_4to0 = APBmslave0_PADDRS_0[4:0];

assign APBmslave0_PWDATAS_0_0 = { APBmslave0_PWDATAS_0_0_7to0 };
assign APBmslave0_PWDATAS_0_0_7to0 = APBmslave0_PWDATAS_0[7:0];

assign FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_0axx_PADDR_0 = { FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_0axx_PADDR_0_4to0 };
assign FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_0axx_PADDR_0_4to0 = FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_0axx_PADDR[4:0];
assign FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_0axx_PADDR_1 = { FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_0axx_PADDR_1_7to0 };
assign FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_0axx_PADDR_10 = { FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_0axx_PADDR_10_4to0 };
assign FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_0axx_PADDR_10_4to0 = FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_0axx_PADDR[4:0];
assign FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_0axx_PADDR_1_7to0 = FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_0axx_PADDR[7:0];
assign FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_0axx_PADDR_2 = { FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_0axx_PADDR_2_7to0 };
assign FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_0axx_PADDR_2_7to0 = FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_0axx_PADDR[7:0];
assign FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_0axx_PADDR_3 = { FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_0axx_PADDR_3_4to0 };
assign FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_0axx_PADDR_3_4to0 = FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_0axx_PADDR[4:0];
assign FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_0axx_PADDR_4 = { FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_0axx_PADDR_4_4to0 };
assign FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_0axx_PADDR_4_4to0 = FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_0axx_PADDR[4:0];
assign FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_0axx_PADDR_5 = { FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_0axx_PADDR_5_8to0 };
assign FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_0axx_PADDR_5_8to0 = FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_0axx_PADDR[8:0];
assign FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_0axx_PADDR_6 = { FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_0axx_PADDR_6_4to0 };
assign FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_0axx_PADDR_6_4to0 = FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_0axx_PADDR[4:0];
assign FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_0axx_PADDR_7 = { FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_0axx_PADDR_7_4to0 };
assign FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_0axx_PADDR_7_4to0 = FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_0axx_PADDR[4:0];
assign FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_0axx_PADDR_8 = { FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_0axx_PADDR_8_4to0 };
assign FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_0axx_PADDR_8_4to0 = FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_0axx_PADDR[4:0];
assign FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_0axx_PADDR_9 = { FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_0axx_PADDR_9_4to0 };
assign FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_0axx_PADDR_9_4to0 = FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_0axx_PADDR[4:0];

assign FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_0axx_PRDATA_0 = { FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_0axx_PRDATA_0_31to8, FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_0axx_PRDATA_0_7to0 };
assign FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_0axx_PRDATA_0_31to8 = 24'h0;
assign FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_0axx_PRDATA_0_7to0 = FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_0axx_PRDATA[7:0];

assign FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_0axx_PWDATA_0 = { FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_0axx_PWDATA_0_7to0 };
assign FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_0axx_PWDATA_0_7to0 = FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_0axx_PWDATA[7:0];
assign FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_0axx_PWDATA_1 = { FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_0axx_PWDATA_1_7to0 };
assign FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_0axx_PWDATA_1_7to0 = FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_0axx_PWDATA[7:0];
assign FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_0axx_PWDATA_2 = { FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_0axx_PWDATA_2_7to0 };
assign FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_0axx_PWDATA_2_7to0 = FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_0axx_PWDATA[7:0];
assign FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_0axx_PWDATA_3 = { FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_0axx_PWDATA_3_7to0 };
assign FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_0axx_PWDATA_3_7to0 = FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_0axx_PWDATA[7:0];
assign FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_0axx_PWDATA_4 = { FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_0axx_PWDATA_4_7to0 };
assign FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_0axx_PWDATA_4_7to0 = FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_0axx_PWDATA[7:0];
assign FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_0axx_PWDATA_5 = { FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_0axx_PWDATA_5_7to0 };
assign FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_0axx_PWDATA_5_7to0 = FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_0axx_PWDATA[7:0];
assign FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_0axx_PWDATA_6 = { FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_0axx_PWDATA_6_7to0 };
assign FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_0axx_PWDATA_6_7to0 = FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_0axx_PWDATA[7:0];
assign FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_0axx_PWDATA_7 = { FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_0axx_PWDATA_7_7to0 };
assign FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_0axx_PWDATA_7_7to0 = FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_0axx_PWDATA[7:0];
assign FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_0axx_PWDATA_8 = { FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_0axx_PWDATA_8_7to0 };
assign FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_0axx_PWDATA_8_7to0 = FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_0axx_PWDATA[7:0];

assign FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_0Bxx_PRDATA_0 = { FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_0Bxx_PRDATA_0_31to8, FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_0Bxx_PRDATA_0_7to0 };
assign FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_0Bxx_PRDATA_0_31to8 = 24'h0;
assign FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_0Bxx_PRDATA_0_7to0 = FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_0Bxx_PRDATA[7:0];

assign FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_02xx_PRDATA_0 = { FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_02xx_PRDATA_0_31to8, FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_02xx_PRDATA_0_7to0 };
assign FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_02xx_PRDATA_0_31to8 = 24'h0;
assign FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_02xx_PRDATA_0_7to0 = FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_02xx_PRDATA[7:0];

assign FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_03xx_PRDATA_0 = { FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_03xx_PRDATA_0_31to8, FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_03xx_PRDATA_0_7to0 };
assign FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_03xx_PRDATA_0_31to8 = 24'h0;
assign FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_03xx_PRDATA_0_7to0 = FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_03xx_PRDATA[7:0];

assign FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_04xx_PRDATA_0 = { FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_04xx_PRDATA_0_31to8, FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_04xx_PRDATA_0_7to0 };
assign FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_04xx_PRDATA_0_31to8 = 24'h0;
assign FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_04xx_PRDATA_0_7to0 = FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_04xx_PRDATA[7:0];

assign FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_05xx_PRDATA_0 = { FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_05xx_PRDATA_0_31to8, FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_05xx_PRDATA_0_7to0 };
assign FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_05xx_PRDATA_0_31to8 = 24'h0;
assign FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_05xx_PRDATA_0_7to0 = FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_05xx_PRDATA[7:0];

assign FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_06xx_PRDATA_0 = { FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_06xx_PRDATA_0_31to8, FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_06xx_PRDATA_0_7to0 };
assign FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_06xx_PRDATA_0_31to8 = 24'h0;
assign FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_06xx_PRDATA_0_7to0 = FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_06xx_PRDATA[7:0];

assign FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_07xx_PRDATA_0 = { FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_07xx_PRDATA_0_31to8, FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_07xx_PRDATA_0_7to0 };
assign FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_07xx_PRDATA_0_31to8 = 24'h0;
assign FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_07xx_PRDATA_0_7to0 = FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_07xx_PRDATA[7:0];

assign FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_08xx_PRDATA_0 = { FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_08xx_PRDATA_0_31to8, FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_08xx_PRDATA_0_7to0 };
assign FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_08xx_PRDATA_0_31to8 = 24'h0;
assign FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_08xx_PRDATA_0_7to0 = FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_08xx_PRDATA[7:0];

assign FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_09xx_PRDATA_0 = { FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_09xx_PRDATA_0_31to8, FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_09xx_PRDATA_0_7to0 };
assign FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_09xx_PRDATA_0_31to8 = 24'h0;
assign FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_09xx_PRDATA_0_7to0 = FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_09xx_PRDATA[7:0];

//--------------------------------------------------------------------
// Component instances
//--------------------------------------------------------------------
//--------GPIO
GPIO COREGPIO_C0(
        // Inputs
        .PRESETN  ( PRESETN ),
        .PCLK     ( PCLK ),
        .PSEL     ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_01xx_PSELx ),
        .PENABLE  ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_0axx_PENABLE ),
        .PWRITE   ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_0axx_PWRITE ),
        .GPIO_IN  ( GPIO_IN_const_net_0 ),
        .PADDR    ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_0axx_PADDR_2 ),
        .PWDATA   ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_0axx_PWDATA ),
        // Outputs
        .PREADY   ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_01xx_PREADY ),
        .PSLVERR  ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_01xx_PSLVERR ),
        .INT      (  ),
        .GPIO_OUT ( GPIO_OUT_net_0 ),
        .PRDATA   ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_01xx_PRDATA ) 
        );

//--------CoreUARTapb_C1
CoreUARTapb_C1 CoreUARTapb_C1_inst_0(
        // Inputs
        .PCLK        ( PCLK ),
        .PRESETN     ( PRESETN ),
        .RX          ( CoreUARTapb_RX ),
        .PSEL        ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_02xx_PSELx ),
        .PENABLE     ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_0axx_PENABLE ),
        .PWRITE      ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_0axx_PWRITE ),
        .PADDR       ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_0axx_PADDR_3 ),
        .PWDATA      ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_0axx_PWDATA_1 ),
        // Outputs
        .TXRDY       ( CoreUARTapb_C1_TXRDY ),
        .RXRDY       ( CoreUARTapb_C1_RXRDY ),
        .PARITY_ERR  ( CoreUARTapb_C1_PARITY_ERR ),
        .OVERFLOW    ( CoreUARTapb_C1_OVERFLOW ),
        .TX          ( CoreUARTapb_C1_TX ),
        .FRAMING_ERR ( CoreUARTapb_C1_FRAMING_ERR ),
        .PREADY      ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_02xx_PREADY ),
        .PSLVERR     ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_02xx_PSLVERR ),
        .PRDATA      ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_02xx_PRDATA ) 
        );

//--------CoreUARTapb_C2
CoreUARTapb_C2 CoreUARTapb_C2_inst_0(
        // Inputs
        .PCLK        ( PCLK ),
        .PRESETN     ( PRESETN ),
        .RX          ( CoreUARTapb_RX ),
        .PSEL        ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_03xx_PSELx ),
        .PENABLE     ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_0axx_PENABLE ),
        .PWRITE      ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_0axx_PWRITE ),
        .PADDR       ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_0axx_PADDR_4 ),
        .PWDATA      ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_0axx_PWDATA_2 ),
        // Outputs
        .TXRDY       ( CoreUARTapb_C2_TXRDY ),
        .RXRDY       ( CoreUARTapb_C2_RXRDY ),
        .PARITY_ERR  ( CoreUARTapb_C2_PARITY_ERR ),
        .OVERFLOW    ( CoreUARTapb_C2_OVERFLOW ),
        .TX          ( CoreUARTapb_C2_TX ),
        .FRAMING_ERR ( CoreUARTapb_C2_FRAMING_ERR ),
        .PREADY      ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_03xx_PREADY ),
        .PSLVERR     ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_03xx_PSLVERR ),
        .PRDATA      ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_03xx_PRDATA ) 
        );

//--------CoreUARTapb_C3
CoreUARTapb_C3 CoreUARTapb_C3_inst_0(
        // Inputs
        .PCLK        ( PCLK ),
        .PRESETN     ( PRESETN ),
        .RX          ( CoreUARTapb_RX ),
        .PSEL        ( FIC_3_0x4000_04xx_PSELS4_0 ),
        .PENABLE     ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_0axx_PENABLE ),
        .PWRITE      ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_0axx_PWRITE ),
        .PADDR       ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_0axx_PADDR_6 ),
        .PWDATA      ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_0axx_PWDATA_4 ),
        // Outputs
        .TXRDY       ( CoreUARTapb_C3_TXRDY ),
        .RXRDY       ( CoreUARTapb_C3_RXRDY ),
        .PARITY_ERR  ( CoreUARTapb_C3_PARITY_ERR ),
        .OVERFLOW    ( CoreUARTapb_C3_OVERFLOW ),
        .TX          ( CoreUARTapb_C3_TX ),
        .FRAMING_ERR ( CoreUARTapb_C3_FRAMING_ERR ),
        .PREADY      ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_05xx_PREADY ),
        .PSLVERR     ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_05xx_PSLVERR ),
        .PRDATA      ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_05xx_PRDATA ) 
        );

//--------CoreUARTapb_C4
CoreUARTapb_C4 CoreUARTapb_C4_inst_0(
        // Inputs
        .PCLK        ( PCLK ),
        .PRESETN     ( PRESETN ),
        .RX          ( CoreUARTapb_RX ),
        .PSEL        ( FIC_3_0x4000_04xx_PSELS4_0_0 ),
        .PENABLE     ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_0axx_PENABLE ),
        .PWRITE      ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_0axx_PWRITE ),
        .PADDR       ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_0axx_PADDR_7 ),
        .PWDATA      ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_0axx_PWDATA_5 ),
        // Outputs
        .TXRDY       ( CoreUARTapb_C4_TXRDY ),
        .RXRDY       ( CoreUARTapb_C4_RXRDY ),
        .PARITY_ERR  ( CoreUARTapb_C4_PARITY_ERR ),
        .OVERFLOW    ( CoreUARTapb_C4_OVERFLOW ),
        .TX          ( CoreUARTapb_C4_TX ),
        .FRAMING_ERR ( CoreUARTapb_C4_FRAMING_ERR ),
        .PREADY      ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_06xx_PREADY ),
        .PSLVERR     ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_06xx_PSLVERR ),
        .PRDATA      ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_06xx_PRDATA ) 
        );

//--------CoreUARTapb_C5
CoreUARTapb_C5 CoreUARTapb_C5_inst_0(
        // Inputs
        .PCLK        ( PCLK ),
        .PRESETN     ( PRESETN ),
        .RX          ( CoreUARTapb_RX ),
        .PSEL        ( FIC_3_0x4000_04xx_PSELS4_0_1 ),
        .PENABLE     ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_0axx_PENABLE ),
        .PWRITE      ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_0axx_PWRITE ),
        .PADDR       ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_0axx_PADDR_8 ),
        .PWDATA      ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_0axx_PWDATA_6 ),
        // Outputs
        .TXRDY       ( CoreUARTapb_C5_TXRDY ),
        .RXRDY       ( CoreUARTapb_C5_RXRDY ),
        .PARITY_ERR  ( CoreUARTapb_C5_PARITY_ERR ),
        .OVERFLOW    ( CoreUARTapb_C5_OVERFLOW ),
        .TX          ( CoreUARTapb_C5_TX ),
        .FRAMING_ERR ( CoreUARTapb_C5_FRAMING_ERR ),
        .PREADY      ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_07xx_PREADY ),
        .PSLVERR     ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_07xx_PSLVERR ),
        .PRDATA      ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_07xx_PRDATA ) 
        );

//--------CoreUARTapb_C6
CoreUARTapb_C6 CoreUARTapb_C6_inst_0(
        // Inputs
        .PCLK        ( PCLK ),
        .PRESETN     ( PRESETN ),
        .RX          ( CoreUARTapb_RX ),
        .PSEL        ( FIC_3_0x4000_04xx_PSELS4_0_2 ),
        .PENABLE     ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_0axx_PENABLE ),
        .PWRITE      ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_0axx_PWRITE ),
        .PADDR       ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_0axx_PADDR_9 ),
        .PWDATA      ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_0axx_PWDATA_7 ),
        // Outputs
        .TXRDY       ( CoreUARTapb_C6_TXRDY ),
        .RXRDY       ( CoreUARTapb_C6_RXRDY ),
        .PARITY_ERR  ( CoreUARTapb_C6_PARITY_ERR ),
        .OVERFLOW    ( CoreUARTapb_C6_OVERFLOW ),
        .TX          ( CoreUARTapb_C6_TX ),
        .FRAMING_ERR ( CoreUARTapb_C6_FRAMING_ERR ),
        .PREADY      ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_08xx_PREADY ),
        .PSLVERR     ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_08xx_PSLVERR ),
        .PRDATA      ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_08xx_PRDATA ) 
        );

//--------CoreUARTapb_C7
CoreUARTapb_C7 CoreUARTapb_C7_inst_0(
        // Inputs
        .PCLK        ( PCLK ),
        .PRESETN     ( PRESETN ),
        .RX          ( CoreUARTapb_RX ),
        .PSEL        ( FIC_3_0x4000_04xx_PSELS4_0_3 ),
        .PENABLE     ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_0axx_PENABLE ),
        .PWRITE      ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_0axx_PWRITE ),
        .PADDR       ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_0axx_PADDR_10 ),
        .PWDATA      ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_0axx_PWDATA_8 ),
        // Outputs
        .TXRDY       ( CoreUARTapb_C7_TXRDY ),
        .RXRDY       ( CoreUARTapb_C7_RXRDY ),
        .PARITY_ERR  ( CoreUARTapb_C7_PARITY_ERR ),
        .OVERFLOW    ( CoreUARTapb_C7_OVERFLOW ),
        .TX          ( CoreUARTapb_C7_TX ),
        .FRAMING_ERR ( CoreUARTapb_C7_FRAMING_ERR ),
        .PREADY      ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_09xx_PREADY ),
        .PSLVERR     ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_09xx_PSLVERR ),
        .PRDATA      ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_09xx_PRDATA ) 
        );

//--------CoreUARTapb_C8
CoreUARTapb_C8 CoreUARTapb_C8_inst_0(
        // Inputs
        .PCLK        ( PCLK ),
        .PRESETN     ( PRESETN ),
        .RX          ( CoreUARTapb_RX ),
        .PSEL        ( FIC_3_0x4000_04xx_PSELS4_0_4 ),
        .PENABLE     ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_0axx_PENABLE ),
        .PWRITE      ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_0axx_PWRITE ),
        .PADDR       ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_0axx_PADDR_0 ),
        .PWDATA      ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_0axx_PWDATA_0 ),
        // Outputs
        .TXRDY       ( CoreUARTapb_C8_TXRDY ),
        .RXRDY       ( CoreUARTapb_C8_RXRDY ),
        .PARITY_ERR  ( CoreUARTapb_C8_PARITY_ERR ),
        .OVERFLOW    ( CoreUARTapb_C8_OVERFLOW ),
        .TX          ( CoreUARTapb_C8_TX ),
        .FRAMING_ERR ( CoreUARTapb_C8_FRAMING_ERR ),
        .PREADY      ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_0axx_PREADY ),
        .PSLVERR     ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_0axx_PSLVERR ),
        .PRDATA      ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_0axx_PRDATA ) 
        );

//--------CoreUARTapb_C9
CoreUARTapb_C9 CoreUARTapb_C9_inst_0(
        // Inputs
        .PCLK        ( PCLK ),
        .PRESETN     ( PRESETN ),
        .RX          ( CoreUARTapb_RX ),
        .PSEL        ( FIC_3_0x4000_04xx_PSELS4_0_4_0 ),
        .PENABLE     ( APBmslave0_PENABLES_0_5 ),
        .PWRITE      ( APBmslave0_PWRITES_0_5 ),
        .PADDR       ( APBmslave0_PADDRS_0_0 ),
        .PWDATA      ( APBmslave0_PWDATAS_0_0 ),
        // Outputs
        .TXRDY       ( CoreUARTapb_C9_TXRDY ),
        .RXRDY       ( CoreUARTapb_C9_RXRDY ),
        .PARITY_ERR  ( CoreUARTapb_C9_PARITY_ERR ),
        .OVERFLOW    ( CoreUARTapb_C9_OVERFLOW ),
        .TX          ( CoreUARTapb_C9_TX ),
        .FRAMING_ERR ( CoreUARTapb_C9_FRAMING_ERR ),
        .PREADY      ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_0Bxx_PREADY ),
        .PSLVERR     ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_0Bxx_PSLVERR ),
        .PRDATA      ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_0Bxx_PRDATA ) 
        );

//--------fabric_sd_emmc_demux_select
fabric_sd_emmc_demux_select fabric_sd_emmc_demux_select_0(
        // Inputs
        .pclk                            ( PCLK ),
        .presetn                         ( PRESETN ),
        .penable                         ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4FFF_FFxx_PENABLE ),
        .psel                            ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4FFF_FFxx_PSELx ),
        .pwrite                          ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4FFF_FFxx_PWRITE ),
        .paddr                           ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4FFF_FFxx_PADDR ),
        .pwdata                          ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4FFF_FFxx_PWDATA ),
        // Outputs
        .pready                          ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4FFF_FFxx_PREADY ),
        .pslverr                         ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4FFF_FFxx_PSLVERR ),
        .fabric_sd_emmc_demux_select_out ( fabric_sd_emmc_demux_select_out_net_0 ),
        .prdata                          ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4FFF_FFxx_PRDATA ) 
        );

//--------FIC_3_ADDRESS_GENERATION
FIC_3_ADDRESS_GENERATION FIC_3_ADDRESS_GENERATION_1(
        // Inputs
        .APB_MASTER_high_out_high_pready   ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x5xxx_xxxx_PREADY ),
        .APB_MASTER_high_out_high_pslverr  ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x5xxx_xxxx_PSLVERR ),
        .APB_MMASTER_in_penable            ( APB_MMASTER_in_penable ),
        .APB_MMASTER_in_psel               ( APB_MMASTER_in_psel ),
        .APB_MMASTER_in_pwrite             ( APB_MMASTER_in_pwrite ),
        .APBmslave15_PREADYS15             ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4FFF_FFxx_PREADY ),
        .APBmslave15_PSLVERRS15            ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4FFF_FFxx_PSLVERR ),
        .APBmslave16_PREADYS16             ( FIC_3_0x43xx_xxxx_0x48xx_xxxx_APBmslave16_PREADYS16 ),
        .APBmslave16_PSLVERRS16            ( FIC_3_0x43xx_xxxx_0x48xx_xxxx_APBmslave16_PSLVERRS16 ),
        .APBmslave0_PREADYS0               ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_00xx_PREADY ),
        .APBmslave0_PSLVERRS0              ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_00xx_PSLVERR ),
        .APBmslave1_PREADYS1               ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_01xx_PREADY ),
        .APBmslave1_PSLVERRS1              ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_01xx_PSLVERR ),
        .APBmslave2_PREADYS2               ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_02xx_PREADY ),
        .APBmslave2_PSLVERRS2              ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_02xx_PSLVERR ),
        .APBmslave3_PREADYS3               ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_03xx_PREADY ),
        .APBmslave3_PSLVERRS3              ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_03xx_PSLVERR ),
        .FIC_3_0x4000_04xx_PREADYS4        ( VCC_net ), // tied to 1'b1 from definition
        .FIC_3_0x4000_04xx_PSLVERRS4       ( GND_net ), // tied to 1'b0 from definition
        .FIC_3_0x4000_04xx_PREADYS4_0      ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_05xx_PREADY ),
        .FIC_3_0x4000_04xx_PSLVERRS4_0     ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_05xx_PSLVERR ),
        .FIC_3_0x4000_04xx_PREADYS4_0_0    ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_06xx_PREADY ),
        .FIC_3_0x4000_04xx_PSLVERRS4_0_0   ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_06xx_PSLVERR ),
        .FIC_3_0x4000_04xx_PREADYS4_0_1    ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_07xx_PREADY ),
        .FIC_3_0x4000_04xx_PSLVERRS4_0_1   ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_07xx_PSLVERR ),
        .FIC_3_0x4000_04xx_PREADYS4_0_2    ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_08xx_PREADY ),
        .FIC_3_0x4000_04xx_PSLVERRS4_0_2   ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_08xx_PSLVERR ),
        .FIC_3_0x4000_04xx_PREADYS4_0_3    ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_09xx_PREADY ),
        .FIC_3_0x4000_04xx_PSLVERRS4_0_3   ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_09xx_PSLVERR ),
        .FIC_3_0x4000_04xx_PREADYS4_0_4    ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_0axx_PREADY ),
        .FIC_3_0x4000_04xx_PSLVERRS4_0_4   ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_0axx_PSLVERR ),
        .FIC_3_0x4000_04xx_PREADYS4_0_4_0  ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_0Bxx_PREADY ),
        .FIC_3_0x4000_04xx_PSLVERRS4_0_4_0 ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_0Bxx_PSLVERR ),
        .APB_MASTER_high_out_high_prdata   ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x5xxx_xxxx_PRDATA ),
        .APB_MMASTER_in_paddr              ( APB_MMASTER_in_paddr ),
        .APB_MMASTER_in_pwdata             ( APB_MMASTER_in_pwdata ),
        .APBmslave15_PRDATAS15             ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4FFF_FFxx_PRDATA ),
        .APBmslave16_PRDATAS16             ( FIC_3_0x43xx_xxxx_0x48xx_xxxx_APBmslave16_PRDATAS16 ),
        .APBmslave0_PRDATAS0               ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_00xx_PRDATA ),
        .APBmslave1_PRDATAS1               ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_01xx_PRDATA ),
        .APBmslave2_PRDATAS2               ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_02xx_PRDATA_0 ),
        .APBmslave3_PRDATAS3               ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_03xx_PRDATA_0 ),
        .FIC_3_0x4000_04xx_PRDATAS4        ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_04xx_PRDATA_0 ),
        .FIC_3_0x4000_04xx_PRDATAS4_0      ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_05xx_PRDATA_0 ),
        .FIC_3_0x4000_04xx_PRDATAS4_0_0    ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_06xx_PRDATA_0 ),
        .FIC_3_0x4000_04xx_PRDATAS4_0_1    ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_07xx_PRDATA_0 ),
        .FIC_3_0x4000_04xx_PRDATAS4_0_2    ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_08xx_PRDATA_0 ),
        .FIC_3_0x4000_04xx_PRDATAS4_0_3    ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_09xx_PRDATA_0 ),
        .FIC_3_0x4000_04xx_PRDATAS4_0_4    ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_0axx_PRDATA_0 ),
        .FIC_3_0x4000_04xx_PRDATAS4_0_4_0  ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_0Bxx_PRDATA_0 ),
        // Outputs
        .APB_MASTER_high_out_high_penable  ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x5xxx_xxxx_PENABLE ),
        .APB_MASTER_high_out_high_psel     ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x5xxx_xxxx_PSELx ),
        .APB_MASTER_high_out_high_pwrite   ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x5xxx_xxxx_PWRITE ),
        .APB_MMASTER_in_pready             ( APB_MMASTER_PREADY ),
        .APB_MMASTER_in_pslverr            ( APB_MMASTER_PSLVERR ),
        .APBmslave15_PENABLES              ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4FFF_FFxx_PENABLE ),
        .APBmslave15_PSELS15               ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4FFF_FFxx_PSELx ),
        .APBmslave15_PWRITES               ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4FFF_FFxx_PWRITE ),
        .APBmslave16_PENABLES              ( FIC_3_0x43xx_xxxx_0x48xx_xxxx_PENABLE ),
        .APBmslave16_PSELS16               ( FIC_3_0x43xx_xxxx_0x48xx_xxxx_PSELx ),
        .APBmslave16_PWRITES               ( FIC_3_0x43xx_xxxx_0x48xx_xxxx_PWRITE ),
        .APBmslave0_PSELS0                 ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_00xx_PSELx ),
        .APBmslave0_PENABLES               ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_0axx_PENABLE ),
        .APBmslave0_PWRITES                ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_0axx_PWRITE ),
        .APBmslave1_PSELS1                 ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_01xx_PSELx ),
        .APBmslave2_PSELS2                 ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_02xx_PSELx ),
        .APBmslave3_PSELS3                 ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_03xx_PSELx ),
        .FIC_3_0x4000_04xx_PSELS4          ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_04xx_PSELx ),
        .FIC_3_0x4000_04xx_PSELS4_0        ( FIC_3_0x4000_04xx_PSELS4_0 ),
        .FIC_3_0x4000_04xx_PSELS4_0_0      ( FIC_3_0x4000_04xx_PSELS4_0_0 ),
        .FIC_3_0x4000_04xx_PSELS4_0_1      ( FIC_3_0x4000_04xx_PSELS4_0_1 ),
        .FIC_3_0x4000_04xx_PSELS4_0_2      ( FIC_3_0x4000_04xx_PSELS4_0_2 ),
        .FIC_3_0x4000_04xx_PSELS4_0_3      ( FIC_3_0x4000_04xx_PSELS4_0_3 ),
        .FIC_3_0x4000_04xx_PSELS4_0_4      ( FIC_3_0x4000_04xx_PSELS4_0_4 ),
        .FIC_3_0x4000_04xx_PSELS4_0_4_0    ( FIC_3_0x4000_04xx_PSELS4_0_4_0 ),
        .APBmslave0_PENABLES_0             ( APBmslave0_PENABLES_0_5 ),
        .APBmslave0_PWRITES_0              ( APBmslave0_PWRITES_0_5 ),
        .APB_MASTER_high_out_high_paddr    ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x5xxx_xxxx_PADDR ),
        .APB_MASTER_high_out_high_pwdata   ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x5xxx_xxxx_PWDATA ),
        .APB_MMASTER_in_prdata             ( APB_MMASTER_PRDATA ),
        .APBmslave15_PADDRS                ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4FFF_FFxx_PADDR ),
        .APBmslave15_PWDATAS               ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4FFF_FFxx_PWDATA ),
        .APBmslave16_PADDRS                ( FIC_3_0x43xx_xxxx_0x48xx_xxxx_PADDR ),
        .APBmslave16_PWDATAS               ( FIC_3_0x43xx_xxxx_0x48xx_xxxx_PWDATA ),
        .APBmslave0_PADDRS                 ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_0axx_PADDR ),
        .APBmslave0_PWDATAS                ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_0axx_PWDATA ),
        .APBmslave0_PADDRS_0               ( APBmslave0_PADDRS_0 ),
        .APBmslave0_PWDATAS_0              ( APBmslave0_PWDATAS_0 ) 
        );

//--------MIV_IHC_C0
MIV_IHC_C0 MIV_IHC_C0_0(
        // Inputs
        .CORE_CLK      ( PCLK ),
        .CORE_RESETN   ( PRESETN ),
        .APB_0_PCLK    ( PCLK ),
        .APB_0_PRESETn ( PRESETN ),
        .APB_0_PENABLE ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x5xxx_xxxx_PENABLE ),
        .APB_0_PWRITE  ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x5xxx_xxxx_PWRITE ),
        .APB_0_PSEL    ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x5xxx_xxxx_PSELx ),
        .APB_0_PADDR   ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x5xxx_xxxx_PADDR ),
        .APB_0_PWDATA  ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x5xxx_xxxx_PWDATA ),
        // Outputs
        .APP_IRQ_H4    ( IHC_MP_APP_U54_4_IRQ_net_0 ),
        .APP_IRQ_H3    ( IHC_MP_APP_U54_3_IRQ_net_0 ),
        .APP_IRQ_H2    ( IHC_MP_APP_U54_2_IRQ_net_0 ),
        .APP_IRQ_H1    ( IHC_MP_APP_U54_1_IRQ_net_0 ),
        .APP_IRQ_H0    ( IHC_MP_APP_E51_IRQ_net_0 ),
        .APB_0_PREADY  ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x5xxx_xxxx_PREADY ),
        .APB_0_PSLVERR ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x5xxx_xxxx_PSLVERR ),
        .APB_0_PRDATA  ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x5xxx_xxxx_PRDATA ) 
        );

//--------OR3
OR3 OR3_0(
        // Inputs
        .A ( CoreUARTapb_C7_TXRDY ),
        .B ( CoreUARTapb_C8_TXRDY ),
        .C ( CoreUARTapb_C9_TXRDY ),
        // Outputs
        .Y ( OR3_0_Y ) 
        );

//--------OR3
OR3 OR3_0_0(
        // Inputs
        .A ( CoreUARTapb_C7_RXRDY ),
        .B ( CoreUARTapb_C8_RXRDY ),
        .C ( CoreUARTapb_C9_RXRDY ),
        // Outputs
        .Y ( OR3_0_0_Y ) 
        );

//--------OR3
OR3 OR3_0_0_0(
        // Inputs
        .A ( CoreUARTapb_C7_PARITY_ERR ),
        .B ( CoreUARTapb_C8_PARITY_ERR ),
        .C ( CoreUARTapb_C9_PARITY_ERR ),
        // Outputs
        .Y ( OR3_0_0_0_Y ) 
        );

//--------OR3
OR3 OR3_0_0_0_0(
        // Inputs
        .A ( CoreUARTapb_C7_OVERFLOW ),
        .B ( CoreUARTapb_C8_OVERFLOW ),
        .C ( CoreUARTapb_C9_OVERFLOW ),
        // Outputs
        .Y ( OR3_0_0_0_0_Y ) 
        );

//--------OR3
OR3 OR3_0_0_0_1(
        // Inputs
        .A ( CoreUARTapb_C7_TX ),
        .B ( CoreUARTapb_C8_TX ),
        .C ( CoreUARTapb_C9_TX ),
        // Outputs
        .Y ( OR3_0_0_0_1_Y ) 
        );

//--------OR3
OR3 OR3_0_0_0_1_0(
        // Inputs
        .A ( CoreUARTapb_C7_FRAMING_ERR ),
        .B ( CoreUARTapb_C8_FRAMING_ERR ),
        .C ( CoreUARTapb_C9_FRAMING_ERR ),
        // Outputs
        .Y ( OR3_0_0_0_1_0_Y ) 
        );

//--------OR3
OR3 OR3_1(
        // Inputs
        .A ( CoreUARTapb_C4_TXRDY ),
        .B ( CoreUARTapb_C5_TXRDY ),
        .C ( CoreUARTapb_C6_TXRDY ),
        // Outputs
        .Y ( OR3_1_Y ) 
        );

//--------OR3
OR3 OR3_1_0(
        // Inputs
        .A ( CoreUARTapb_C4_RXRDY ),
        .B ( CoreUARTapb_C5_RXRDY ),
        .C ( CoreUARTapb_C6_RXRDY ),
        // Outputs
        .Y ( OR3_1_0_Y ) 
        );

//--------OR3
OR3 OR3_1_0_0(
        // Inputs
        .A ( CoreUARTapb_C4_PARITY_ERR ),
        .B ( CoreUARTapb_C5_PARITY_ERR ),
        .C ( CoreUARTapb_C6_PARITY_ERR ),
        // Outputs
        .Y ( OR3_1_0_0_Y ) 
        );

//--------OR3
OR3 OR3_1_0_0_0(
        // Inputs
        .A ( CoreUARTapb_C4_OVERFLOW ),
        .B ( CoreUARTapb_C5_OVERFLOW ),
        .C ( CoreUARTapb_C6_OVERFLOW ),
        // Outputs
        .Y ( OR3_1_0_0_0_Y ) 
        );

//--------OR3
OR3 OR3_1_0_0_1(
        // Inputs
        .A ( CoreUARTapb_C4_TX ),
        .B ( CoreUARTapb_C5_TX ),
        .C ( CoreUARTapb_C6_TX ),
        // Outputs
        .Y ( OR3_1_0_0_1_Y ) 
        );

//--------OR3
OR3 OR3_1_0_0_1_0(
        // Inputs
        .A ( CoreUARTapb_C4_FRAMING_ERR ),
        .B ( CoreUARTapb_C5_FRAMING_ERR ),
        .C ( CoreUARTapb_C6_FRAMING_ERR ),
        // Outputs
        .Y ( OR3_1_0_0_1_0_Y ) 
        );

//--------OR3
OR3 OR3_2(
        // Inputs
        .A ( CoreUARTapb_C1_TXRDY ),
        .B ( CoreUARTapb_C2_TXRDY ),
        .C ( CoreUARTapb_C3_TXRDY ),
        // Outputs
        .Y ( OR3_2_Y ) 
        );

//--------OR3
OR3 OR3_2_0(
        // Inputs
        .A ( CoreUARTapb_C1_RXRDY ),
        .B ( CoreUARTapb_C2_RXRDY ),
        .C ( CoreUARTapb_C3_RXRDY ),
        // Outputs
        .Y ( OR3_2_0_Y ) 
        );

//--------OR3
OR3 OR3_2_0_0(
        // Inputs
        .A ( CoreUARTapb_C1_PARITY_ERR ),
        .B ( CoreUARTapb_C2_PARITY_ERR ),
        .C ( CoreUARTapb_C3_PARITY_ERR ),
        // Outputs
        .Y ( OR3_2_0_0_Y ) 
        );

//--------OR3
OR3 OR3_2_0_0_0(
        // Inputs
        .A ( CoreUARTapb_C1_OVERFLOW ),
        .B ( CoreUARTapb_C2_OVERFLOW ),
        .C ( CoreUARTapb_C3_OVERFLOW ),
        // Outputs
        .Y ( OR3_2_0_0_0_Y ) 
        );

//--------OR3
OR3 OR3_2_0_0_1(
        // Inputs
        .A ( CoreUARTapb_C1_TX ),
        .B ( CoreUARTapb_C2_TX ),
        .C ( CoreUARTapb_C3_TX ),
        // Outputs
        .Y ( OR3_2_0_0_1_Y ) 
        );

//--------OR3
OR3 OR3_2_0_0_1_0(
        // Inputs
        .A ( CoreUARTapb_C1_FRAMING_ERR ),
        .B ( CoreUARTapb_C2_FRAMING_ERR ),
        .C ( CoreUARTapb_C3_FRAMING_ERR ),
        // Outputs
        .Y ( OR3_2_0_0_1_0_Y ) 
        );

//--------OR3
OR3 OR3_3(
        // Inputs
        .A ( OR3_2_Y ),
        .B ( OR3_1_Y ),
        .C ( OR3_0_Y ),
        // Outputs
        .Y ( TXRDY_net_0 ) 
        );

//--------OR3
OR3 OR3_3_0(
        // Inputs
        .A ( OR3_2_0_Y ),
        .B ( OR3_1_0_Y ),
        .C ( OR3_0_0_Y ),
        // Outputs
        .Y ( RXRDY_net_0 ) 
        );

//--------OR3
OR3 OR3_3_0_0(
        // Inputs
        .A ( OR3_2_0_0_Y ),
        .B ( OR3_1_0_0_Y ),
        .C ( OR3_0_0_0_Y ),
        // Outputs
        .Y ( PARITY_ERR_net_0 ) 
        );

//--------OR3
OR3 OR3_3_0_0_0(
        // Inputs
        .A ( OR3_2_0_0_0_Y ),
        .B ( OR3_1_0_0_0_Y ),
        .C ( OR3_0_0_0_0_Y ),
        // Outputs
        .Y ( OVERFLOW_net_0 ) 
        );

//--------OR3
OR3 OR3_3_0_0_1(
        // Inputs
        .A ( OR3_2_0_0_1_Y ),
        .B ( OR3_1_0_0_1_Y ),
        .C ( OR3_0_0_0_1_Y ),
        // Outputs
        .Y ( CoreUARTapb_TX_net_0 ) 
        );

//--------OR3
OR3 OR3_3_0_0_1_0(
        // Inputs
        .A ( OR3_2_0_0_1_0_Y ),
        .B ( OR3_1_0_0_1_0_Y ),
        .C ( OR3_0_0_0_1_0_Y ),
        // Outputs
        .Y ( FRAMING_ERR_net_0 ) 
        );

//--------corepwm_C0
corepwm_C0 PWM(
        // Inputs
        .PCLK    ( PCLK ),
        .PRESETN ( PRESETN ),
        .PENABLE ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_0axx_PENABLE ),
        .PSEL    ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_00xx_PSELx ),
        .PWRITE  ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_0axx_PWRITE ),
        .PADDR   ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_0axx_PADDR_1 ),
        .PWDATA  ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_0axx_PWDATA ),
        // Outputs
        .PREADY  ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_00xx_PREADY ),
        .PSLVERR ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_00xx_PSLVERR ),
        .PWM     ( PWM_net_0 ),
        .PRDATA  ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_00xx_PRDATA ) 
        );

//--------CORE_I2C_C0_0_WRAPPER
CORE_I2C_C0_0_WRAPPER RPi_ID_I2C(
        // Inputs
        .APBslave_PENABLE ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_0axx_PENABLE ),
        .APBslave_PSEL    ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_04xx_PSELx ),
        .APBslave_PWRITE  ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_0axx_PWRITE ),
        .PCLK             ( PCLK ),
        .PRESETN          ( PRESETN ),
        .APBslave_PADDR   ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_0axx_PADDR_5 ),
        .APBslave_PWDATA  ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_0axx_PWDATA_3 ),
        // Outputs
        .INT              ( RPI_ID_I2C_IRQ_net_0 ),
        .APBslave_PRDATA  ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_04xx_PRDATA ),
        // Inouts
        .COREI2C_C0_SCL   ( RPi_ID_SD ),
        .COREI2C_C0_SDA   ( RPi_ID_SC ) 
        );


endmodule
