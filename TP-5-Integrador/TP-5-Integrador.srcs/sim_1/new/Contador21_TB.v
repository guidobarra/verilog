`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.05.2024 19:03:50
// Design Name: 
// Module Name: Contador21_TB
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

//count 21 pulse de input to 1 pulse output
//LIMIT = N - 1 = 21 -1 = 20
module Contador21_TB(

    );

reg CLOCK, CE, RESET;
wire PULSE;
ContadorN #(
.SIZE(5),
.LIMIT(5'd20),
.OFFSET(5'd0),
.DELTA_INC(5'd1)
) 
u1(
    .Clock(CLOCK),
    .CE(CE),
    .Reset(RESET),
    .Pulse(PULSE)
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
