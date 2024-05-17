//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
//Date        : Thu May 16 21:01:13 2024
//Host        : DESKTOP-VCTKVDC running 64-bit major release  (build 9200)
//Command     : generate_target ModuloClockingWizard_wrapper.bd
//Design      : ModuloClockingWizard_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module ModuloClockingWizard_wrapper
   (clk_100MHz,
    reset_rtl_0,
    salida);
  input clk_100MHz;
  input reset_rtl_0;
  output salida;

  wire clk_100MHz;
  wire reset_rtl_0;
  wire salida;

  ModuloClockingWizard ModuloClockingWizard_i
       (.clk_100MHz(clk_100MHz),
        .reset_rtl_0(reset_rtl_0),
        .salida(salida));
endmodule
