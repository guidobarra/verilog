`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.05.2024 10:53:49
// Design Name: 
// Module Name: LatchInst
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


module LatchInst(
    input Clock,
    input [3:0] D,
    input Reset,
    output [3:0] S
    );

FlipFlopD u1(
    .Clock(Clock),
    .Reset(Reset),
    .D(D[0]),
    .Q(S[0]));
    
FlipFlopD u2(
    .Clock(Clock),
    .Reset(Reset),
    .D(D[1]),
    .Q(S[1]));

FlipFlopD u3(
    .Clock(Clock),
    .Reset(Reset),
    .D(D[2]),
    .Q(S[2]));

FlipFlopD u4(
    .Clock(Clock),
    .Reset(Reset),
    .D(D[3]),
    .Q(S[3]));
endmodule
