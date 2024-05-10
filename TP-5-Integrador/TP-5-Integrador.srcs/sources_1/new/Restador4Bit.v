`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.05.2024 17:04:29
// Design Name: 
// Module Name: Restador4Bit
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


module Restador4Bit(
    input [3:0] A,
    input [3:0] B,
    input Bin,
    output Bou,
    output [3:0] R
    );

wire [4:0] Bina;
assign Bina[0] = Bin;
assign Bou = Bina[4];
genvar i;
generate
    for (i=0; i<4; i=i+1) begin
        Restador u1 (
            .A(A[i]), 
            .B(B[i]),
            .Bin(Bina[i]),
            .Bou(Bina[i+1]),
            .R(R[i]));
    end
endgenerate
endmodule
