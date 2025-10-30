//////////////////////////////////////////////////////////////////////
// Created by SmartDesign Thu Oct 30 12:34:53 2025
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
    CoreUARTapb_RX_1,
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
    CoreUARTapb_TX_1,
    FIC_3_0x43xx_xxxx_0x48xx_xxxx_APBmslave16_PADDRS,
    FIC_3_0x43xx_xxxx_0x48xx_xxxx_APBmslave16_PENABLES,
    FIC_3_0x43xx_xxxx_0x48xx_xxxx_APBmslave16_PSELS16,
    FIC_3_0x43xx_xxxx_0x48xx_xxxx_APBmslave16_PWDATAS,
    FIC_3_0x43xx_xxxx_0x48xx_xxxx_APBmslave16_PWRITES,
    FRAMING_ERR,
    FRAMING_ERR_1,
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
    OVERFLOW_1,
    PARITY_ERR,
    PARITY_ERR_1,
    PWM_0,
    RPI_ID_I2C_IRQ,
    RXRDY,
    RXRDY_1,
    TXRDY,
    TXRDY_1,
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
input         CoreUARTapb_RX_1;
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
output        CoreUARTapb_TX_1;
output [31:0] FIC_3_0x43xx_xxxx_0x48xx_xxxx_APBmslave16_PADDRS;
output        FIC_3_0x43xx_xxxx_0x48xx_xxxx_APBmslave16_PENABLES;
output        FIC_3_0x43xx_xxxx_0x48xx_xxxx_APBmslave16_PSELS16;
output [31:0] FIC_3_0x43xx_xxxx_0x48xx_xxxx_APBmslave16_PWDATAS;
output        FIC_3_0x43xx_xxxx_0x48xx_xxxx_APBmslave16_PWRITES;
output        FRAMING_ERR;
output        FRAMING_ERR_1;
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
output        OVERFLOW_1;
output        PARITY_ERR;
output        PARITY_ERR_1;
output        PWM_0;
output        RPI_ID_I2C_IRQ;
output        RXRDY;
output        RXRDY_1;
output        TXRDY;
output        TXRDY_1;
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
wire          CoreUARTapb_RX;
wire          CoreUARTapb_RX_1;
wire          CoreUARTapb_TX_net_0;
wire          CoreUARTapb_TX_1_net_0;
wire          fabric_sd_emmc_demux_select_out_net_0;
wire   [31:0] FIC_3_0x43xx_xxxx_0x48xx_xxxx_PADDR;
wire          FIC_3_0x43xx_xxxx_0x48xx_xxxx_PENABLE;
wire   [31:0] FIC_3_0x43xx_xxxx_0x48xx_xxxx_APBmslave16_PRDATAS16;
wire          FIC_3_0x43xx_xxxx_0x48xx_xxxx_APBmslave16_PREADYS16;
wire          FIC_3_0x43xx_xxxx_0x48xx_xxxx_PSELx;
wire          FIC_3_0x43xx_xxxx_0x48xx_xxxx_APBmslave16_PSLVERRS16;
wire   [31:0] FIC_3_0x43xx_xxxx_0x48xx_xxxx_PWDATA;
wire          FIC_3_0x43xx_xxxx_0x48xx_xxxx_PWRITE;
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
wire          FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_00xx_PENABLE;
wire   [31:0] FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_00xx_PRDATA;
wire          FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_00xx_PREADY;
wire          FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_00xx_PSELx;
wire          FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_00xx_PSLVERR;
wire          FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_00xx_PWRITE;
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
wire          FRAMING_ERR_net_0;
wire          FRAMING_ERR_1_net_0;
wire   [0:0]  GPIO_OUT_0_net_0;
wire   [1:1]  GPIO_OUT_1_net_0;
wire   [2:2]  GPIO_OUT_2_net_0;
wire   [3:3]  GPIO_OUT_3_net_0;
wire          IHC_MP_APP_E51_IRQ_net_0;
wire          IHC_MP_APP_U54_1_IRQ_net_0;
wire          IHC_MP_APP_U54_2_IRQ_net_0;
wire          IHC_MP_APP_U54_3_IRQ_net_0;
wire          IHC_MP_APP_U54_4_IRQ_net_0;
wire          OVERFLOW_net_0;
wire          OVERFLOW_1_net_0;
wire          PARITY_ERR_net_0;
wire          PARITY_ERR_1_net_0;
wire          PCLK;
wire          PRESETN;
wire   [0:0]  PWM_0_net_0;
wire          RPI_ID_I2C_IRQ_net_0;
wire          RPi_ID_SC;
wire          RPi_ID_SD;
wire          RXRDY_net_0;
wire          RXRDY_1_net_0;
wire          TXRDY_net_0;
wire          TXRDY_1_net_0;
wire          APB_MMASTER_PREADY_net_0;
wire          APB_MMASTER_PSLVERR_net_0;
wire          CoreUARTapb_TX_net_1;
wire          FIC_3_0x43xx_xxxx_0x48xx_xxxx_PENABLE_net_0;
wire          FIC_3_0x43xx_xxxx_0x48xx_xxxx_PSELx_net_0;
wire          FIC_3_0x43xx_xxxx_0x48xx_xxxx_PWRITE_net_0;
wire          FRAMING_ERR_net_1;
wire          OVERFLOW_net_1;
wire          PARITY_ERR_net_1;
wire          RXRDY_net_1;
wire          TXRDY_net_1;
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
wire   [31:0] APB_MMASTER_PRDATA_net_0;
wire   [31:0] FIC_3_0x43xx_xxxx_0x48xx_xxxx_PADDR_net_0;
wire   [31:0] FIC_3_0x43xx_xxxx_0x48xx_xxxx_PWDATA_net_0;
wire          TXRDY_1_net_1;
wire          RXRDY_1_net_1;
wire          PARITY_ERR_1_net_1;
wire          OVERFLOW_1_net_1;
wire          CoreUARTapb_TX_1_net_1;
wire          FRAMING_ERR_1_net_1;
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
wire   [31:0] FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_00xx_PADDR;
wire   [7:0]  FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_00xx_PADDR_0;
wire   [7:0]  FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_00xx_PADDR_0_7to0;
wire   [7:0]  FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_00xx_PADDR_1;
wire   [7:0]  FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_00xx_PADDR_1_7to0;
wire   [4:0]  FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_00xx_PADDR_2;
wire   [4:0]  FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_00xx_PADDR_2_4to0;
wire   [4:0]  FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_00xx_PADDR_3;
wire   [4:0]  FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_00xx_PADDR_3_4to0;
wire   [8:0]  FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_00xx_PADDR_4;
wire   [8:0]  FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_00xx_PADDR_4_8to0;
wire   [31:0] FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_00xx_PWDATA;
wire   [7:0]  FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_00xx_PWDATA_0;
wire   [7:0]  FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_00xx_PWDATA_0_7to0;
wire   [7:0]  FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_00xx_PWDATA_1;
wire   [7:0]  FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_00xx_PWDATA_1_7to0;
wire   [7:0]  FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_00xx_PWDATA_2;
wire   [7:0]  FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_00xx_PWDATA_2_7to0;
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
//--------------------------------------------------------------------
// Constant assignments
//--------------------------------------------------------------------
assign GPIO_IN_const_net_0 = 4'h0;
assign VCC_net             = 1'b1;
assign GND_net             = 1'b0;
//--------------------------------------------------------------------
// Top level output port assignments
//--------------------------------------------------------------------
assign APB_MMASTER_PREADY_net_0                                = APB_MMASTER_PREADY;
assign APB_MMASTER_in_pready                                   = APB_MMASTER_PREADY_net_0;
assign APB_MMASTER_PSLVERR_net_0                               = APB_MMASTER_PSLVERR;
assign APB_MMASTER_in_pslverr                                  = APB_MMASTER_PSLVERR_net_0;
assign CoreUARTapb_TX_net_1                                    = CoreUARTapb_TX_net_0;
assign CoreUARTapb_TX                                          = CoreUARTapb_TX_net_1;
assign FIC_3_0x43xx_xxxx_0x48xx_xxxx_PENABLE_net_0             = FIC_3_0x43xx_xxxx_0x48xx_xxxx_PENABLE;
assign FIC_3_0x43xx_xxxx_0x48xx_xxxx_APBmslave16_PENABLES      = FIC_3_0x43xx_xxxx_0x48xx_xxxx_PENABLE_net_0;
assign FIC_3_0x43xx_xxxx_0x48xx_xxxx_PSELx_net_0               = FIC_3_0x43xx_xxxx_0x48xx_xxxx_PSELx;
assign FIC_3_0x43xx_xxxx_0x48xx_xxxx_APBmslave16_PSELS16       = FIC_3_0x43xx_xxxx_0x48xx_xxxx_PSELx_net_0;
assign FIC_3_0x43xx_xxxx_0x48xx_xxxx_PWRITE_net_0              = FIC_3_0x43xx_xxxx_0x48xx_xxxx_PWRITE;
assign FIC_3_0x43xx_xxxx_0x48xx_xxxx_APBmslave16_PWRITES       = FIC_3_0x43xx_xxxx_0x48xx_xxxx_PWRITE_net_0;
assign FRAMING_ERR_net_1                                       = FRAMING_ERR_net_0;
assign FRAMING_ERR                                             = FRAMING_ERR_net_1;
assign OVERFLOW_net_1                                          = OVERFLOW_net_0;
assign OVERFLOW                                                = OVERFLOW_net_1;
assign PARITY_ERR_net_1                                        = PARITY_ERR_net_0;
assign PARITY_ERR                                              = PARITY_ERR_net_1;
assign RXRDY_net_1                                             = RXRDY_net_0;
assign RXRDY                                                   = RXRDY_net_1;
assign TXRDY_net_1                                             = TXRDY_net_0;
assign TXRDY                                                   = TXRDY_net_1;
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
assign APB_MMASTER_PRDATA_net_0                                = APB_MMASTER_PRDATA;
assign APB_MMASTER_in_prdata[31:0]                             = APB_MMASTER_PRDATA_net_0;
assign FIC_3_0x43xx_xxxx_0x48xx_xxxx_PADDR_net_0               = FIC_3_0x43xx_xxxx_0x48xx_xxxx_PADDR;
assign FIC_3_0x43xx_xxxx_0x48xx_xxxx_APBmslave16_PADDRS[31:0]  = FIC_3_0x43xx_xxxx_0x48xx_xxxx_PADDR_net_0;
assign FIC_3_0x43xx_xxxx_0x48xx_xxxx_PWDATA_net_0              = FIC_3_0x43xx_xxxx_0x48xx_xxxx_PWDATA;
assign FIC_3_0x43xx_xxxx_0x48xx_xxxx_APBmslave16_PWDATAS[31:0] = FIC_3_0x43xx_xxxx_0x48xx_xxxx_PWDATA_net_0;
assign TXRDY_1_net_1                                           = TXRDY_1_net_0;
assign TXRDY_1                                                 = TXRDY_1_net_1;
assign RXRDY_1_net_1                                           = RXRDY_1_net_0;
assign RXRDY_1                                                 = RXRDY_1_net_1;
assign PARITY_ERR_1_net_1                                      = PARITY_ERR_1_net_0;
assign PARITY_ERR_1                                            = PARITY_ERR_1_net_1;
assign OVERFLOW_1_net_1                                        = OVERFLOW_1_net_0;
assign OVERFLOW_1                                              = OVERFLOW_1_net_1;
assign CoreUARTapb_TX_1_net_1                                  = CoreUARTapb_TX_1_net_0;
assign CoreUARTapb_TX_1                                        = CoreUARTapb_TX_1_net_1;
assign FRAMING_ERR_1_net_1                                     = FRAMING_ERR_1_net_0;
assign FRAMING_ERR_1                                           = FRAMING_ERR_1_net_1;
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
assign FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_00xx_PADDR_0 = { FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_00xx_PADDR_0_7to0 };
assign FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_00xx_PADDR_0_7to0 = FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_00xx_PADDR[7:0];
assign FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_00xx_PADDR_1 = { FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_00xx_PADDR_1_7to0 };
assign FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_00xx_PADDR_1_7to0 = FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_00xx_PADDR[7:0];
assign FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_00xx_PADDR_2 = { FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_00xx_PADDR_2_4to0 };
assign FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_00xx_PADDR_2_4to0 = FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_00xx_PADDR[4:0];
assign FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_00xx_PADDR_3 = { FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_00xx_PADDR_3_4to0 };
assign FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_00xx_PADDR_3_4to0 = FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_00xx_PADDR[4:0];
assign FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_00xx_PADDR_4 = { FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_00xx_PADDR_4_8to0 };
assign FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_00xx_PADDR_4_8to0 = FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_00xx_PADDR[8:0];

assign FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_00xx_PWDATA_0 = { FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_00xx_PWDATA_0_7to0 };
assign FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_00xx_PWDATA_0_7to0 = FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_00xx_PWDATA[7:0];
assign FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_00xx_PWDATA_1 = { FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_00xx_PWDATA_1_7to0 };
assign FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_00xx_PWDATA_1_7to0 = FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_00xx_PWDATA[7:0];
assign FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_00xx_PWDATA_2 = { FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_00xx_PWDATA_2_7to0 };
assign FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_00xx_PWDATA_2_7to0 = FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_00xx_PWDATA[7:0];

assign FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_02xx_PRDATA_0 = { FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_02xx_PRDATA_0_31to8, FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_02xx_PRDATA_0_7to0 };
assign FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_02xx_PRDATA_0_31to8 = 24'h0;
assign FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_02xx_PRDATA_0_7to0 = FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_02xx_PRDATA[7:0];

assign FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_03xx_PRDATA_0 = { FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_03xx_PRDATA_0_31to8, FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_03xx_PRDATA_0_7to0 };
assign FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_03xx_PRDATA_0_31to8 = 24'h0;
assign FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_03xx_PRDATA_0_7to0 = FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_03xx_PRDATA[7:0];

assign FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_04xx_PRDATA_0 = { FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_04xx_PRDATA_0_31to8, FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_04xx_PRDATA_0_7to0 };
assign FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_04xx_PRDATA_0_31to8 = 24'h0;
assign FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_04xx_PRDATA_0_7to0 = FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_04xx_PRDATA[7:0];

//--------------------------------------------------------------------
// Component instances
//--------------------------------------------------------------------
//--------GPIO
GPIO COREGPIO_C0(
        // Inputs
        .PRESETN  ( PRESETN ),
        .PCLK     ( PCLK ),
        .PSEL     ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_01xx_PSELx ),
        .PENABLE  ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_00xx_PENABLE ),
        .PWRITE   ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_00xx_PWRITE ),
        .GPIO_IN  ( GPIO_IN_const_net_0 ),
        .PADDR    ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_00xx_PADDR_1 ),
        .PWDATA   ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_00xx_PWDATA ),
        // Outputs
        .PREADY   ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_01xx_PREADY ),
        .PSLVERR  ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_01xx_PSLVERR ),
        .INT      (  ),
        .GPIO_OUT ( GPIO_OUT_net_0 ),
        .PRDATA   ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_01xx_PRDATA ) 
        );

//--------CoreUARTapb_C0
CoreUARTapb_C0 CoreUARTapb_C0_0(
        // Inputs
        .PCLK        ( PCLK ),
        .PRESETN     ( PRESETN ),
        .RX          ( CoreUARTapb_RX ),
        .PSEL        ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_03xx_PSELx ),
        .PENABLE     ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_00xx_PENABLE ),
        .PWRITE      ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_00xx_PWRITE ),
        .PADDR       ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_00xx_PADDR_3 ),
        .PWDATA      ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_00xx_PWDATA_1 ),
        // Outputs
        .TXRDY       ( TXRDY_net_0 ),
        .RXRDY       ( RXRDY_net_0 ),
        .PARITY_ERR  ( PARITY_ERR_net_0 ),
        .OVERFLOW    ( OVERFLOW_net_0 ),
        .TX          ( CoreUARTapb_TX_net_0 ),
        .FRAMING_ERR ( FRAMING_ERR_net_0 ),
        .PREADY      ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_03xx_PREADY ),
        .PSLVERR     ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_03xx_PSLVERR ),
        .PRDATA      ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_03xx_PRDATA ) 
        );

//--------CoreUARTapb_C1
CoreUARTapb_C1 CoreUARTapb_C1_inst_0(
        // Inputs
        .PCLK        ( PCLK ),
        .PRESETN     ( PRESETN ),
        .RX          ( CoreUARTapb_RX_1 ),
        .PADDR       ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_00xx_PADDR_2 ),
        .PSEL        ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_02xx_PSELx ),
        .PENABLE     ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_00xx_PENABLE ),
        .PWRITE      ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_00xx_PWRITE ),
        .PWDATA      ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_00xx_PWDATA_0 ),
        // Outputs
        .TXRDY       ( TXRDY_1_net_0 ),
        .RXRDY       ( RXRDY_1_net_0 ),
        .PARITY_ERR  ( PARITY_ERR_1_net_0 ),
        .OVERFLOW    ( OVERFLOW_1_net_0 ),
        .TX          ( CoreUARTapb_TX_1_net_0 ),
        .FRAMING_ERR ( FRAMING_ERR_1_net_0 ),
        .PRDATA      ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_02xx_PRDATA ),
        .PREADY      ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_02xx_PREADY ),
        .PSLVERR     ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_02xx_PSLVERR ) 
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
        .APB_MASTER_high_out_high_pready  ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x5xxx_xxxx_PREADY ),
        .APB_MASTER_high_out_high_pslverr ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x5xxx_xxxx_PSLVERR ),
        .APB_MMASTER_in_penable           ( APB_MMASTER_in_penable ),
        .APB_MMASTER_in_psel              ( APB_MMASTER_in_psel ),
        .APB_MMASTER_in_pwrite            ( APB_MMASTER_in_pwrite ),
        .APBmslave0_PREADYS0              ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_00xx_PREADY ),
        .APBmslave0_PSLVERRS0             ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_00xx_PSLVERR ),
        .APBmslave15_PREADYS15            ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4FFF_FFxx_PREADY ),
        .APBmslave15_PSLVERRS15           ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4FFF_FFxx_PSLVERR ),
        .APBmslave16_PREADYS16            ( FIC_3_0x43xx_xxxx_0x48xx_xxxx_APBmslave16_PREADYS16 ),
        .APBmslave16_PSLVERRS16           ( FIC_3_0x43xx_xxxx_0x48xx_xxxx_APBmslave16_PSLVERRS16 ),
        .APBmslave1_PREADYS1              ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_01xx_PREADY ),
        .APBmslave1_PSLVERRS1             ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_01xx_PSLVERR ),
        .APBmslave2_PREADYS2              ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_02xx_PREADY ),
        .APBmslave2_PSLVERRS2             ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_02xx_PSLVERR ),
        .APBmslave3_PREADYS3              ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_03xx_PREADY ),
        .APBmslave3_PSLVERRS3             ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_03xx_PSLVERR ),
        .FIC_3_0x4000_04xx_PREADYS4       ( VCC_net ), // tied to 1'b1 from definition
        .FIC_3_0x4000_04xx_PSLVERRS4      ( GND_net ), // tied to 1'b0 from definition
        .APB_MASTER_high_out_high_prdata  ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x5xxx_xxxx_PRDATA ),
        .APB_MMASTER_in_paddr             ( APB_MMASTER_in_paddr ),
        .APB_MMASTER_in_pwdata            ( APB_MMASTER_in_pwdata ),
        .APBmslave0_PRDATAS0              ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_00xx_PRDATA ),
        .APBmslave15_PRDATAS15            ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4FFF_FFxx_PRDATA ),
        .APBmslave16_PRDATAS16            ( FIC_3_0x43xx_xxxx_0x48xx_xxxx_APBmslave16_PRDATAS16 ),
        .APBmslave1_PRDATAS1              ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_01xx_PRDATA ),
        .APBmslave2_PRDATAS2              ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_02xx_PRDATA_0 ),
        .APBmslave3_PRDATAS3              ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_03xx_PRDATA_0 ),
        .FIC_3_0x4000_04xx_PRDATAS4       ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_04xx_PRDATA_0 ),
        // Outputs
        .APB_MASTER_high_out_high_penable ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x5xxx_xxxx_PENABLE ),
        .APB_MASTER_high_out_high_psel    ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x5xxx_xxxx_PSELx ),
        .APB_MASTER_high_out_high_pwrite  ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x5xxx_xxxx_PWRITE ),
        .APB_MMASTER_in_pready            ( APB_MMASTER_PREADY ),
        .APB_MMASTER_in_pslverr           ( APB_MMASTER_PSLVERR ),
        .APBmslave0_PENABLES              ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_00xx_PENABLE ),
        .APBmslave0_PSELS0                ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_00xx_PSELx ),
        .APBmslave0_PWRITES               ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_00xx_PWRITE ),
        .APBmslave15_PENABLES             ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4FFF_FFxx_PENABLE ),
        .APBmslave15_PSELS15              ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4FFF_FFxx_PSELx ),
        .APBmslave15_PWRITES              ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4FFF_FFxx_PWRITE ),
        .APBmslave16_PENABLES             ( FIC_3_0x43xx_xxxx_0x48xx_xxxx_PENABLE ),
        .APBmslave16_PSELS16              ( FIC_3_0x43xx_xxxx_0x48xx_xxxx_PSELx ),
        .APBmslave16_PWRITES              ( FIC_3_0x43xx_xxxx_0x48xx_xxxx_PWRITE ),
        .APBmslave1_PSELS1                ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_01xx_PSELx ),
        .APBmslave2_PSELS2                ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_02xx_PSELx ),
        .APBmslave3_PSELS3                ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_03xx_PSELx ),
        .FIC_3_0x4000_04xx_PSELS4         ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_04xx_PSELx ),
        .APB_MASTER_high_out_high_paddr   ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x5xxx_xxxx_PADDR ),
        .APB_MASTER_high_out_high_pwdata  ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x5xxx_xxxx_PWDATA ),
        .APB_MMASTER_in_prdata            ( APB_MMASTER_PRDATA ),
        .APBmslave0_PADDRS                ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_00xx_PADDR ),
        .APBmslave0_PWDATAS               ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_00xx_PWDATA ),
        .APBmslave15_PADDRS               ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4FFF_FFxx_PADDR ),
        .APBmslave15_PWDATAS              ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4FFF_FFxx_PWDATA ),
        .APBmslave16_PADDRS               ( FIC_3_0x43xx_xxxx_0x48xx_xxxx_PADDR ),
        .APBmslave16_PWDATAS              ( FIC_3_0x43xx_xxxx_0x48xx_xxxx_PWDATA ) 
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

//--------corepwm_C0
corepwm_C0 PWM(
        // Inputs
        .PCLK    ( PCLK ),
        .PRESETN ( PRESETN ),
        .PENABLE ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_00xx_PENABLE ),
        .PSEL    ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_00xx_PSELx ),
        .PWRITE  ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_00xx_PWRITE ),
        .PADDR   ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_00xx_PADDR_0 ),
        .PWDATA  ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_00xx_PWDATA ),
        // Outputs
        .PREADY  ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_00xx_PREADY ),
        .PSLVERR ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_00xx_PSLVERR ),
        .PWM     ( PWM_net_0 ),
        .PRDATA  ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_00xx_PRDATA ) 
        );

//--------CORE_I2C_C0_0_WRAPPER
CORE_I2C_C0_0_WRAPPER RPi_ID_I2C(
        // Inputs
        .APBslave_PENABLE ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_00xx_PENABLE ),
        .APBslave_PSEL    ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_04xx_PSELx ),
        .APBslave_PWRITE  ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_00xx_PWRITE ),
        .PCLK             ( PCLK ),
        .PRESETN          ( PRESETN ),
        .APBslave_PADDR   ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_00xx_PADDR_4 ),
        .APBslave_PWDATA  ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_00xx_PWDATA_2 ),
        // Outputs
        .INT              ( RPI_ID_I2C_IRQ_net_0 ),
        .APBslave_PRDATA  ( FIC_3_ADDRESS_GENERATION_1_FIC_3_0x4000_04xx_PRDATA ),
        // Inouts
        .COREI2C_C0_SCL   ( RPi_ID_SD ),
        .COREI2C_C0_SDA   ( RPi_ID_SC ) 
        );


endmodule
