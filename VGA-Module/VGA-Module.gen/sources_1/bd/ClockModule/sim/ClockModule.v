//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
//Date        : Tue Oct  1 16:33:28 2024
//Host        : DESKTOP-VCTKVDC running 64-bit major release  (build 9200)
//Command     : generate_target ClockModule.bd
//Design      : ClockModule
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "ClockModule,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=ClockModule,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=1,numReposBlks=1,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=Hierarchical}" *) (* HW_HANDOFF = "ClockModule.hwdef" *) 
module ClockModule
   (Input100Mhz,
    Output25Mhz);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.INPUT100MHZ CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.INPUT100MHZ, CLK_DOMAIN ClockModule_Input100Mhz, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input Input100Mhz;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.OUTPUT25MHZ CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.OUTPUT25MHZ, CLK_DOMAIN /clk_wiz_0_clk_out1, FREQ_HZ 25000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) output Output25Mhz;

  wire Input100Mhz_1;
  wire clk_wiz_0_clk_out1;

  assign Input100Mhz_1 = Input100Mhz;
  assign Output25Mhz = clk_wiz_0_clk_out1;
  ClockModule_clk_wiz_0_0 clk_wiz_0
       (.clk_in1(Input100Mhz_1),
        .clk_out1(clk_wiz_0_clk_out1));
endmodule
