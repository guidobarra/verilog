`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.05.2024 10:31:22
// Design Name: 
// Module Name: FlipFlopTN_TB
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


module FlipFlopTN_TB(

    );
reg CLOCK, RESET, CE;
reg [2:0] T;
wire [2:0] Q;
FlipFlopTN 
    #(.SIZE(3))
u1(
    .Clock(CLOCK),
    .Reset(RESET),
    .CE(CE),
    .T(T),
    .Q(Q)    
);

initial begin
CLOCK=0;
RESET=1;
CE=1;
T=3'b000;

forever #5 CLOCK = !CLOCK;
end

initial begin
#10
RESET=0;

#10
T=3'b001;


#10
T=3'b011;

#10
T=3'b111;

#10
T=3'b100;

#10
T=3'b010;

#10
T=3'b111;

#10
CE=0;

#10
T=3'b000;

#10
RESET=1;
end
endmodule
