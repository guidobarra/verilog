`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.04.2024 14:33:59
// Design Name: 
// Module Name: FullAdder2Bits
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


module FullAdder2Bits(
    input [1:0] A,
    input [1:0] B,
    output [1:0] S,
    output Cout
    );

wire carryBitOne;
FullAdderComp u1(.A(A[0]), .B(B[0]), .Cin(1'b0), .S(S[0]), .Cout(carryBitOne));
FullAdderComp u2(.A(A[1]), .B(B[1]), .Cin(carryBitOne), .S(S[1]), .Cout(Cout));

endmodule
