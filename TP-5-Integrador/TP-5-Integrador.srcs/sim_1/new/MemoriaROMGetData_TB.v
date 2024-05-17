`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.05.2024 00:58:15
// Design Name: 
// Module Name: MemoriaROMGetData_TB
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


module MemoriaROMGetData_TB(

    );

reg CLOCK, RESET;
wire [7:0] DATA;

MemoriaROMGetData u1 (
.Clock(CLOCK),
.Reset(RESET),
.Data(DATA)
);

initial begin
CLOCK=0;
RESET=0;
forever #5 CLOCK = !CLOCK;
end
endmodule
