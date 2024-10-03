`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.05.2024 23:01:46
// Design Name: 
// Module Name: FlipFlopD
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


module FlipFlopD(
    input Clock,
    input Reset,
    input CE,
    input D,
    output Q
    );

reg latch;
assign Q = latch;
always @(posedge Clock or posedge Reset)
begin
    if (Reset)
        latch <= 1'b0;
    else
        if (CE)
            latch <= D;
end
endmodule
