`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.04.2024 17:35:14
// Design Name: 
// Module Name: FullAdderDef
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


module FullAdderDef(
    input A,
    input B,
    input Cin,
    output Cout,
    output S
    );
    assign S = (!Cin & !A & B) |
               (!Cin & A & !B) |
               (Cin & !A & !B) |
               (Cin & A & B) ;
               
    assign Cout = (!Cin & A & B) |
                  (Cin & !A & B) |
                  (Cin & A & !B) |
                  (Cin & A & B) ;
endmodule
