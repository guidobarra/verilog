`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.05.2024 12:45:43
// Design Name: 
// Module Name: FlipFlopT_TB
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


module FlipFlopT_TB(

    );

reg T, CLK, RESET, CE;
wire Q;

FlipFlopT u1(
            .Clock(CLK), 
            .Reset(RESET),
            .CE(CE),
            .T(T), 
            .Q(Q));

initial begin
    CLK = 0;
    RESET = 1;
    CE = 0;
    forever #5 CLK = !CLK;
end

initial begin
    T = 1;
    
    #10
    T = 0;
    
    #10
    RESET = 0;
    
    #10
    T = 1;
    
    #10
    T = 0;
    
    #10
    CE = 1;
    
    #10
    T = 1;
    
    #10
    T = 0;
    
    #10
    T = 1;
    
    #10
    T = 0;
    
    #10
    RESET = 1;
    CE = 1;
    
    #10
    T = 1;
    
    #10
    T = 0;
end
endmodule
