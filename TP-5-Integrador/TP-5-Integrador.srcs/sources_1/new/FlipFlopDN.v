`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.05.2024 10:06:48
// Design Name: 
// Module Name: FlipFlopDN
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


module FlipFlopDN
#(parameter SIZE=2)
(
    input Clock,
    input Reset,
    input CE,
    input [SIZE-1:0] D,
    output [SIZE-1:0] Q
    );
genvar i;
generate
for(i=0;i<SIZE;i=i+1) begin
    FlipFlopD u1(
        .Clock(Clock),
        .Reset(Reset),
        .CE(CE),
        .D(D[i]),
        .Q(Q[i])
    );
end
endgenerate

endmodule
