`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.04.2024 17:24:29
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
reg T, CLK, RESET;
wire Q;

FlipFlopD u1(
            .Clock(CLK), 
            .Reset(RESET), 
            .T(T), 
            .Q(Q));

initial begin
    CLK = 0;
    RESET = 1;
    
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
    RESET = 1;
    
    #10
    T = 1;
    
    #10
    T = 0;
end
endmodule
