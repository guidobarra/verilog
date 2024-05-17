`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.05.2024 21:07:45
// Design Name: 
// Module Name: Contador23Bits
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

//COUNT_MAX = 2^(23)-1 = 8388607
module Contador23Bits(
    input Clock,
    input Reset,
    input CE,
    output Pulse
    );

wire f8_3886Mhz;
ModuloClockingWizard u1(
    .clk_100MHz(Clock),
    .reset_rtl_0(Reset),
    .salida(f8_3886Mhz)
);

wire pulseContador23;
ContadorN 
#(
.SIZE(23),
.LIMIT(23'd8388607),
.OFFSET(23'd0),
.DELTA_INC(23'd1)
)
u2(
.Clock(Clock),
.Reset(Reset),
.CE(f8_3886Mhz),
.Pulse(pulseContador23)
);

FlipFlopT u3(
.Clock(Clock),
.Reset(Reset),
.CE(pulseContador23),
.T(1'b1),
.Q(Pulse)
);
endmodule
