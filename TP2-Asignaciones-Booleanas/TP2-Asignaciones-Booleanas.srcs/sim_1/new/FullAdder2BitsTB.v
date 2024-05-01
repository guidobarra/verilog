`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.04.2024 15:01:15
// Design Name: 
// Module Name: FullAdder2BitsTB
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


module FullAdder2BitsTB(

    );
    
reg [1:0] A;
reg [1:0] B;
wire Cout;
wire [1:0] S;

FullAdder2Bits u1 (.A(A), .B(B), .Cout(Cout), .S(S));

initial begin
//00000
B = 2'b00;
A = 2'b00;

#5
//00001
B = 2'b01;
A = 2'b00;

#5
//00010
B = 2'b10;
A = 2'b00;

#5
//00011
B = 2'b11;
A = 2'b00;

#5
//00100
B = 2'b00;
A = 2'b01;

#5
//00101
B = 2'b01;
A = 2'b01;

#5
//00110
B = 2'b10;
A = 2'b01;

#5
//00111
B = 2'b11;
A = 2'b01;

#5
//01000
B = 2'b00;
A = 2'b10;

#5
//01001
B = 2'b01;
A = 2'b10;

#5
//01010
B = 2'b10;
A = 2'b10;

#5
//01011
B = 2'b11;
A = 2'b10;

#5
//01100
B = 2'b00;
A = 2'b11;

#5
//01101
B = 2'b01;
A = 2'b11;

#5
//01110
B = 2'b10;
A = 2'b11;

#5
//01111
B = 2'b11;
A = 2'b11;

#5
//00000
B = 2'b00;
A = 2'b00;

end
endmodule
