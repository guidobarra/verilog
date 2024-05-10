`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.05.2024 15:08:51
// Design Name: 
// Module Name: Contador1hzMod16
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


module Contador1hzMod16(
    input Clock,
    input Reset,
    output [3:0] Q
    );
    
//get sign of 1hz 
wire sign1hz;
Contador1hz u1(
    .Clock(Clock),
    .Reset(Reset),
    .Enable(1'b1),
    .Q(sign1hz)
);

//get counter mod 16, with clock of 1hz
ContadorMod16 u2(
    .Clock(sign1hz),
    .Reset(Reset),
    .Enable(1'b1),
    .Q(Q)
);
endmodule
