`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.05.2024 16:46:34
// Design Name: 
// Module Name: LUTCOMB3_TB
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


module LUTCOMB3_TB(

    );
reg A,B,C;
wire S;
LUTCOMB3 #(.INIT(8'h80)) u1 (
    .Out(S),
    .A(A),
    .B(B),
    .C(C)
);

initial begin
    A = 0;
    B = 0;
    C = 0;
    
    #5
    A = 1;
    B = 0;
    C = 0;
    
    #5
    A = 0;
    B = 1;
    C = 0;
    
    #5
    A = 1;
    B = 1;
    C = 0;
    
    #5
    A = 0;
    B = 0;
    C = 1;
    
    #5
    A = 1;
    B = 0;
    C = 1;
    
    #5
    A = 0;
    B = 1;
    C = 1;
    
    #5
    A = 1;
    B = 1;
    C = 1;
    
    #5
    A = 0;
    B = 0;
    C = 0;
    
end
endmodule
