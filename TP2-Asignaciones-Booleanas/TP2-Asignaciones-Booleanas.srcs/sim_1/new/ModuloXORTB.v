`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.04.2024 17:01:10
// Design Name: 
// Module Name: ModuloXORTB
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


module ModuloXORTB(

    );

reg A;
reg B;
wire F;

ModuloXOR u1 (.A(A), .B(B), .F(F));

initial begin

//00
A = 1'b0; 
B = 1'b0; 

#5;
//01
A = 1'b1; 
B = 1'b0; 

#5;
//10
A = 1'b0; 
B = 1'b1; 

#5;
//11
A = 1'b1; 
B = 1'b1; 

#5;
//00
A = 1'b0; 
B = 1'b0; 
end
endmodule
