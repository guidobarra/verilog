`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.05.2024 19:16:06
// Design Name: 
// Module Name: Contador4Bits_TB
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


module Contador4Bits_TB(

    );

reg CLOCK, CE, RESET;
wire [3:0] Q;
ContadorNBits #(
.SIZE(4),
.LIMIT(4'd14),
.OFFSET(4'd0),
.DELTA_INC(4'd1)
) 
u1(
    .Clock(CLOCK),
    .CE(CE),
    .Reset(RESET),
    .Q(Q)
);

initial begin
CLOCK=0;
CE=1;
RESET=1;
forever #5 CLOCK = !CLOCK;
end

initial begin
#2
RESET=0;
end

endmodule
