`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.04.2024 17:18:21
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
reg D, CLK, RESET;
wire Q;

FlipFlopD u1(
            .Clock(CLK), 
            .Reset(RESET), 
            .D(D), 
            .Q(Q));

initial begin
    CLK = 0;
    RESET = 1;
    
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
    
    #20
    RESET = 1;
    
    #10
    D = 1;

    #10
    D = 0;
end
endmodule
