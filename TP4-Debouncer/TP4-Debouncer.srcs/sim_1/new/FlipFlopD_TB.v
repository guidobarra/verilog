`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.05.2024 12:41:29
// Design Name: 
// Module Name: FlipFlopD_TB
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


module FlipFlopD_TB(

    );
reg CLK, RESET, CE, D;
wire Q;
FlipFlopD u1 (
    .Clock(CLK),
    .Reset(RESET),
    .CE(CE),
    .D(D),
    .Q(Q)
);

initial begin
    CLK = 0;
    RESET = 1;
    CE = 0;
    forever #5 CLK = !CLK;
end

initial begin
    D = 1;
    
    #10
    D = 0;
    
    #10
    RESET = 0;
    
    #10
    D = 1;
    
    #10
    D = 0;
    
    #10
    RESET = 0;
    CE = 1;
    
    #10
    D = 1;

    #10
    D = 0;
    
    #10
    RESET = 1;
    CE = 1;
    
    #10
    D = 1;

    #10
    D = 0;
end
endmodule
