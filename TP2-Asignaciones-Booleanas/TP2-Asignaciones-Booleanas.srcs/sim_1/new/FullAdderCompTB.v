`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.04.2024 17:27:02
// Design Name: 
// Module Name: FullAdderCompTB
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


module FullAdderCompTB(

    );

reg A;
reg B;
reg Cin;
wire Cout;
wire S;

FullAdderComp u1 (.A(A), .B(B), .Cin(Cin), .Cout(Cout), .S(S));

initial begin
//000
B = 1'b0;
A = 1'b0;
Cin = 1'b0;

#5
//001
B = 1'b1;
A = 1'b0;
Cin = 1'b0;

#5
//010
B = 1'b0;
A = 1'b1;
Cin = 1'b0;

#5
//011
B = 1'b1;
A = 1'b1;
Cin = 1'b0;

#5
//100
B = 1'b0;
A = 1'b0;
Cin = 1'b1;

#5
//101
B = 1'b1;
A = 1'b0;
Cin = 1'b1;

#5
//110
B = 1'b0;
A = 1'b1;
Cin = 1'b1;

#5
//111
B = 1'b1;
A = 1'b1;
Cin = 1'b1;

#5;
//000
B = 1'b0;
A = 1'b0;
Cin = 1'b0;
end
endmodule
