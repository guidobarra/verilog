`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.05.2024 15:26:13
// Design Name: 
// Module Name: Anillo
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


module Anillo(
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

//get number 000, 001, 010, 011.... with frecuency of 1 hz
wire [2:0] number;
ContadorMod10 u2(
    .Clock(sign1hz),
    .Reset(Reset),
    .Enable(1'b1),
    .Q(number)
);

Decoder u3(
    .D({number[1], number[0]}),
    .S(Q)
);
endmodule
