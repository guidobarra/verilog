// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Tue Oct  1 16:34:23 2024
// Host        : DESKTOP-VCTKVDC running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               d:/Estudio/Lenguajes-descriptivos-de-hardware/repo/verilog/VGA-Module/VGA-Module.gen/sources_1/bd/ClockModule/ip/ClockModule_clk_wiz_0_0/ClockModule_clk_wiz_0_0_stub.v
// Design      : ClockModule_clk_wiz_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7s25csga324-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module ClockModule_clk_wiz_0_0(clk_out1, clk_in1)
/* synthesis syn_black_box black_box_pad_pin="clk_in1" */
/* synthesis syn_force_seq_prim="clk_out1" */;
  output clk_out1 /* synthesis syn_isclock = 1 */;
  input clk_in1;
endmodule