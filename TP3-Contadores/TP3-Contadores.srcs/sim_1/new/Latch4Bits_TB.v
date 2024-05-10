`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.05.2024 14:32:56
// Design Name: 
// Module Name: Latch4Bits_TB
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


module Latch4Bits_TB(

    );


reg [3:0] D;
reg CLK, RESET;
wire [3:0] S;
Latch4Bits u1(.Clock(CLK), .Reset(RESET), .D(D), .S(S));


initial begin
    CLK = 0;
    RESET = 0;
    
    forever #5 CLK = !CLK;
end

initial begin
    D = 4'b0001;
    
    #10
    D = 4'b0011;
    
    #10
    D = 4'b0111;
    
    #10
    D = 4'b1111;
    
    #10
    RESET = 1;
    
    #10
    D = 4'b0001;
    
    #10
    D = 4'b0011;
    
    #10
    D = 4'b0111;
    
    #10
    D = 4'b1111;
    
    #2
    RESET = 0;
    
    #10
    D = 4'b100;
    
    #10
    RESET = 1;
    
    #10
    D = 4'b1001;
    
    #10
    D = 4'b1000;
    
    #10
    RESET = 1;
end
endmodule
