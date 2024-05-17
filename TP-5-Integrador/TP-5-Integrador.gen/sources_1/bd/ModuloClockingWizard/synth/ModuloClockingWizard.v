//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
//Date        : Thu May 16 21:01:13 2024
//Host        : DESKTOP-VCTKVDC running 64-bit major release  (build 9200)
//Command     : generate_target ModuloClockingWizard.bd
//Design      : ModuloClockingWizard
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "ModuloClockingWizard,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=ModuloClockingWizard,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=1,numReposBlks=1,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,da_board_cnt=2,synth_mode=Hierarchical}" *) (* HW_HANDOFF = "ModuloClockingWizard.hwdef" *) 
module ModuloClockingWizard
   (clk_100MHz,
    reset_rtl_0,
    salida);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK_100MHZ CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK_100MHZ, CLK_DOMAIN ModuloClockingWizard_clk_100MHz, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input clk_100MHz;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.RESET_RTL_0 RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.RESET_RTL_0, INSERT_VIP 0, POLARITY ACTIVE_HIGH" *) input reset_rtl_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.SALIDA CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.SALIDA, CLK_DOMAIN /clk_wiz_0_clk_out1, FREQ_HZ 8388600, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) output salida;

  wire clk_100MHz_1;
  wire clk_wiz_0_clk_out1;
  wire reset_rtl_0_1;

  assign clk_100MHz_1 = clk_100MHz;
  assign reset_rtl_0_1 = reset_rtl_0;
  assign salida = clk_wiz_0_clk_out1;
  ModuloClockingWizard_clk_wiz_0_0 clk_wiz_0
       (.clk_in1(clk_100MHz_1),
        .clk_out1(clk_wiz_0_clk_out1),
        .reset(reset_rtl_0_1));
endmodule
