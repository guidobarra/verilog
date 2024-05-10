`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.05.2024 01:46:05
// Design Name: 
// Module Name: ContadorPorBoton
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


module ContadorPorBoton(
    input Clock,
    input Reset,
    input Boton,
    input Pulse1khz,
    output [4:0] Count
    );
wire pulseCE;

Debouncer u1 (
    .Clock(Clock),
    .Reset(Reset),
    .Boton(Boton),
    .Pulse1khz(Pulse1khz),
    .PulseCE(pulseCE)
);

Count4Bits u2(
    .Clock(Clock),
    .Reset(Reset),
    .CE(pulseCE),
    .Count(Count));
endmodule
