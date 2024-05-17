`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.05.2024 21:24:06
// Design Name: 
// Module Name: FlipFlopT
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


module FlipFlopT(
    input Clock,
    input Reset,
    input CE,
    input T,
    output Q
    );
reg latch;
assign Q = latch;

always@(posedge Clock or posedge Reset)
begin
    if (Reset)
        latch <= 1'b0;
    else
        if(CE & T)
            latch <= ~latch;

end
endmodule
