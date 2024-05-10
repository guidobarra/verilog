`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.05.2024 20:59:02
// Design Name: 
// Module Name: Debouncer
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


module Debouncer(
    input Clock,
    input Pulse1khz,
    input Boton,
    input Reset,
    output PulseCE
    );
    
wire U1 = Boton;
wire U2;
wire U3;
wire U4;
wire U5;


FlipFlopD ffd1(
            .Clock(Clock), 
            .Reset(Reset),
            .CE(Pulse1khz),
            .D(U1), 
            .Q(U2));

FlipFlopD ffd2(
            .Clock(Clock), 
            .Reset(Reset),
            .CE(Pulse1khz),
            .D(U2), 
            .Q(U3));
            
FlipFlopD ffd3(
            .Clock(Clock), 
            .Reset(Reset),
            .CE(Pulse1khz),
            .D(U3), 
            .Q(U4));

FlipFlopD ffd4(
            .Clock(Clock), 
            .Reset(Reset),
            .CE(1'b1),
            .D(U4), 
            .Q(U5));
            
assign PulseCE = U2 & U3 & U4 & ~(U5);

endmodule
