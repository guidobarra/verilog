`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.05.2024 16:58:54
// Design Name: 
// Module Name: Restador
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


module Restador(
    input A,
    input B,
    input Bin,
    output Bou,
    output R
    );
    
LUTCOMB3 #(.INIT(8'h8e)) u1 (
    .Out(Bou),
    .A(Bin),
    .B(B),
    .C(A)
);

LUTCOMB3 #(.INIT(8'h96)) u2 (
    .Out(R),
    .A(Bin),
    .B(B),
    .C(A)
);
endmodule
