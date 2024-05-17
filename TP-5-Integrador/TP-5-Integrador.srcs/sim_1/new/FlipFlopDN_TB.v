`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.05.2024 10:13:38
// Design Name: 
// Module Name: FlipFlopDN_TB
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


module FlipFlopDN_TB(

    );

reg CLOCK, RESET, CE;
reg [2:0] D;
wire [2:0] Q;

FlipFlopDN 
    #(.SIZE(3))
u1(
    .Clock(CLOCK),
    .Reset(RESET),
    .CE(CE),
    .D(D),
    .Q(Q)    
);

initial begin
CLOCK=0;
RESET=1;
CE=1;
D=3'b000;

forever #5 CLOCK = !CLOCK;
end

initial begin
#10
RESET=0;

#10
D=3'b001;


#10
D=3'b011;

#10
D=3'b111;

#10
D=3'b100;

#10
D=3'b010;

#10
D=3'b111;

#10
CE=0;

#10
D=3'b000;

#10
RESET=1;
end
endmodule
