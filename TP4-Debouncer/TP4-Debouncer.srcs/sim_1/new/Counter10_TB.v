`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.05.2024 13:39:04
// Design Name: 
// Module Name: Counter10_TB
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


module Counter10_TB(

    );
reg CLK, RESET;
wire PULSE;
Counter10 u1(
    .Clock(CLK),
    .Reset(RESET),
    .Pulse(PULSE));

initial begin
    CLK = 0;
    RESET = 0;
    forever #5 CLK = !CLK;
end

initial begin
    #20
    RESET = 1;
    #20
    RESET = 0;
    end
endmodule
