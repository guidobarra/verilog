`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.05.2024 10:49:35
// Design Name: 
// Module Name: LatchRS_TB
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


module LatchRS_TB(

    );

reg R,S;
wire Q, NOTQ;
LatchRS u1 (
    .R(R),
    .S(S),
    .Q(Q),
    .NotQ(NOTQ)
);

initial begin
R=0;
S=0;

#10
R=0;
S=0;

#10
R=1;
S=0;

#10
R=0;
S=1;

#10
R=1;
S=1;

#10
R=0;
S=0;

#10
R=0;
S=1;

end
endmodule
