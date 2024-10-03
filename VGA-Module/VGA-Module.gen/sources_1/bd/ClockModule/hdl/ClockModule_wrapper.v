//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
//Date        : Tue Oct  1 16:33:28 2024
//Host        : DESKTOP-VCTKVDC running 64-bit major release  (build 9200)
//Command     : generate_target ClockModule_wrapper.bd
//Design      : ClockModule_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module ClockModule_wrapper
   (Input100Mhz,
    Output25Mhz);
  input Input100Mhz;
  output Output25Mhz;

  wire Input100Mhz;
  wire Output25Mhz;

  ClockModule ClockModule_i
       (.Input100Mhz(Input100Mhz),
        .Output25Mhz(Output25Mhz));
endmodule
