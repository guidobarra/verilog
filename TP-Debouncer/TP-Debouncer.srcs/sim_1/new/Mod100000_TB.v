`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.05.2024 23:43:12
// Design Name: 
// Module Name: Mod100000_TB
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


module Mod100000_TB(

    );

reg CLK, RESET;
wire PULSE;

Mod100000 u1(
            .Clock(CLK), 
            .Reset(RESET), 
            .Pulse(PULSE));

initial begin
    CLK = 0;
    RESET = 0;
    
    forever #1 CLK = !CLK;
end

endmodule
