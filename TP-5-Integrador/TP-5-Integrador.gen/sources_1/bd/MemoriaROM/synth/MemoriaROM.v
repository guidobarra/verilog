//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
//Date        : Fri May 17 00:38:24 2024
//Host        : DESKTOP-VCTKVDC running 64-bit major release  (build 9200)
//Command     : generate_target MemoriaROM.bd
//Design      : MemoriaROM
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "MemoriaROM,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=MemoriaROM,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=1,numReposBlks=1,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=Hierarchical}" *) (* HW_HANDOFF = "MemoriaROM.hwdef" *) 
module MemoriaROM
   (Addr,
    CE,
    Clock,
    Salida);
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.ADDR DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.ADDR, LAYERED_METADATA undef" *) input [6:0]Addr;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.CE DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.CE, LAYERED_METADATA undef" *) input CE;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLOCK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLOCK, CLK_DOMAIN MemoriaROM_Clock, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input Clock;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.SALIDA DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.SALIDA, LAYERED_METADATA undef" *) output [7:0]Salida;

  wire [6:0]Addr_1;
  wire CE_1;
  wire Clock_1;
  wire [7:0]blk_mem_gen_0_douta;

  assign Addr_1 = Addr[6:0];
  assign CE_1 = CE;
  assign Clock_1 = Clock;
  assign Salida[7:0] = blk_mem_gen_0_douta;
  MemoriaROM_blk_mem_gen_0_0 blk_mem_gen_0
       (.addra(Addr_1),
        .clka(Clock_1),
        .douta(blk_mem_gen_0_douta),
        .ena(CE_1));
endmodule
