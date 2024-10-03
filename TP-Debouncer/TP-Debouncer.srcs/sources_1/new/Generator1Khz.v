`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.05.2024 23:19:52
// Design Name: 
// Module Name: Generator1Khz
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


module Generator1Khz(
    input Clock,
    input Reset,
    output Out1Khz
    );
wire pulse;
Generator1Khz u1(
    .Clock(Clock),
    .Reset(Reset),
    .Pulse(pulse));

FlipFlopT u2(
    .Clock(Clock),
    .Reset(Reset),
    .CE(pulse),
    .T(1'b1),
    .Q(Out1Khz));
endmodule
