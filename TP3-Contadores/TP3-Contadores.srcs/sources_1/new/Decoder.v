`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.05.2024 15:18:46
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
    input [1:0] D,
    output [3:0] S
    );

reg [3:0] aux;
assign S = aux;
always @*
begin
    case(D)
        2'b00: aux <= 4'b0001;
        2'b01: aux <= 4'b0010;
        2'b10: aux <= 4'b0100;
        default: aux <= 4'b1000;
    endcase
end
endmodule
