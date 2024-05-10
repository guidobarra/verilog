`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.05.2024 16:38:39
// Design Name: 
// Module Name: LUTCOMB3
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

//DEFAULT 00
module LUTCOMB3
#(parameter [8:0] INIT=8'h00)(
    input A,
    input B,
    input C,
    output Out
    );

LUT3 #(.INIT(INIT)) lut (
    .O(Out),
    .I0(A),
    .I1(B),
    .I2(C)
);
endmodule
