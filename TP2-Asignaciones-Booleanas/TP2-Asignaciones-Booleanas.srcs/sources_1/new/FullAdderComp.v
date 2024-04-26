`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.04.2024 17:15:12
// Design Name: 
// Module Name: FullAdderComp
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


module FullAdderComp(
    input A,
    input B,
    input Cin,
    output Cout,
    output S
    );
    
    wire outXor;
    wire outAnd1;
    wire outAnd2;
    wire outAnd3;
    wire outOr;
    ModuloXOR u1 (.A(A), .B(B), .F(outXor));//xor de entrada
    
    ModuloAND u2 (.A(A), .B(B), .F(outAnd1));//1er and  de entrada
    ModuloAND u3 (.A(A), .B(Cin), .F(outAnd2));//2do and de entrada
    ModuloAND u4 (.A(B), .B(Cin), .F(outAnd3));//3ro and de entrada
    
    ModuloXOR u5 (.A(outXor), .B(Cin), .F(S)); //xor de salida S
    
    ModuloOR u6 (.A(outAnd1), .B(outAnd2), .F(outOr)); 
    ModuloOR u7 (.A(outOr), .B(outAnd3), .F(Cout));//or de salida Cout
endmodule
