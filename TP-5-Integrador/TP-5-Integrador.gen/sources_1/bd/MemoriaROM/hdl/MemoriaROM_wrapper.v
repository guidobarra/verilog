//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
//Date        : Fri May 17 00:38:24 2024
//Host        : DESKTOP-VCTKVDC running 64-bit major release  (build 9200)
//Command     : generate_target MemoriaROM_wrapper.bd
//Design      : MemoriaROM_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module MemoriaROM_wrapper
   (Addr,
    CE,
    Clock,
    Salida);
  input [6:0]Addr;
  input CE;
  input Clock;
  output [7:0]Salida;

  wire [6:0]Addr;
  wire CE;
  wire Clock;
  wire [7:0]Salida;

  MemoriaROM MemoriaROM_i
       (.Addr(Addr),
        .CE(CE),
        .Clock(Clock),
        .Salida(Salida));
endmodule
