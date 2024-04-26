`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.04.2024 15:54:47
// Design Name: 
// Module Name: DecoderTB
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


module DecoderTB(

    );


reg [1:0] A;
wire [3:0] S;

Decoder u1 (.A(A), .S(S));

initial begin

//00
A = 2'b00;  

#5;
//01
A = 2'b01; 

#5;
//10
A = 2'b10; 

#5;
//11
A = 2'b11; 

#5;
//00
A = 2'b00; 
end
endmodule
