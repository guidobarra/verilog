`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.05.2024 14:25:06
// Design Name: 
// Module Name: Counter100000_TB
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


module Counter100000_TB(

    );
    
reg CLK, RESET;
wire PULSE;
Counter100000 u1(
    .Clock(CLK),
    .Reset(RESET),
    .Pulse(PULSE));

//T=0.01ns => f = 
initial begin
    CLK = 0;
    RESET = 0;
    forever #0.01 CLK = !CLK;
end

initial begin
    #0.01
    RESET = 1;
    #0.01
    RESET = 0;
    end
endmodule
