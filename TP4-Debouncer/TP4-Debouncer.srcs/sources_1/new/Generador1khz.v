`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.05.2024 14:55:09
// Design Name: 
// Module Name: Generador1khz
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


module Generador1khz(
    input Clock,
    input Reset,
    output Out1khz
    );

wire CE;
Counter100000 u1(
    .Clock(Clock),
    .Reset(Reset),
    .Pulse(CE));
    
FlipFlopT u2(
            .Clock(Clock), 
            .Reset(Reset),
            .CE(CE),
            .T(1'b1), 
            .Q(Out1khz));
endmodule
