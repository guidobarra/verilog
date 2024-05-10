`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.05.2024 14:29:38
// Design Name: 
// Module Name: Latch4Bits
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


module Latch4Bits(
    input [3:0] D,
    input Clock,
    input Reset,
    output [3:0] S
    );
reg [3:0] latch;
assign S = latch;
always @(posedge Clock or posedge Reset)
begin
   if (Reset)
        latch <= 4'b0000;
   else 
        latch <= D;
end
endmodule
