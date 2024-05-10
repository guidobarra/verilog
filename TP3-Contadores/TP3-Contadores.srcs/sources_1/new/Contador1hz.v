`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.05.2024 18:07:55
// Design Name: 
// Module Name: Contador1hz
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


module Contador1hz(
    input Enable,
    input Reset,
    input Clock,
    output Q
    );
    
wire [3:0] count;
ContadorMod10 u1(
    .Clock(Clock),
    .Reset(Reset),
    .Enable(Enable),
    .Q(count)
);
//warning clock lento, el count[3] se usa como clock del fft
FlipFlopT u2 (
    .Clock(count[3]),
    .T(1'b1),
    .Reset(Reset),
    .Q(Q)
);
endmodule
