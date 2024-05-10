`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.05.2024 16:38:35
// Design Name: 
// Module Name: Generador1khz_TB
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

// TOPE MAXIMO 1000 ns
// 0.001 => 1ns equivale 1000 pulso
// 500 pulso con flanco ascendente y 500 pulso con flanco descendente
// => 0.001 => 1ns equivale 500 pulso (con flanco ascendente) => 200ns equivale 100000 pulso (con flanco ascendente)
module Generador1khz_TB(

    );
reg CLK, RESET;
wire OUT;
Generador1khz u1(
    .Clock(CLK),
    .Reset(RESET),
    .Out1khz(OUT));

initial begin
    CLK = 0;
    RESET = 1;
    forever #0.001 CLK = !CLK;
end

initial begin
    #0.001
    RESET = 1;
    
    #0.001
    RESET = 0;
end
endmodule
