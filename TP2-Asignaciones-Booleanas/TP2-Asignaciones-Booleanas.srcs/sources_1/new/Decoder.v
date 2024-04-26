`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.04.2024 15:33:39
// Design Name: 
// Module Name: Decoder
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


module Decoder(
    input [1:0] A,
    output [3:0] S
    );
    assign S[3:0] = (
        (A[1:0] == 2'b00)? 4'b0001:
        (A[1:0] == 2'b01)? 4'b0010:
        (A[1:0] == 2'b10)? 4'b0100:
        (A[1:0] == 2'b11)? 4'b1000:
        4'b0000
    );
endmodule
