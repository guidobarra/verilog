`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.05.2024 00:10:11
// Design Name: 
// Module Name: ContadorPorBoton_TB
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


module ContadorPorBoton_TB(

    );

reg CLK, RESET, BOTON, PULSE1khz;
wire [3:0] COUNTER;
ContadorPorBoton u1 (
    .Clock(CLK),
    .Reset(RESET),
    .Boton(BOTON),
    .Pulse1khz(PULSE1khz),
    .Count(COUNTER)
);

initial begin
    CLK = 0;
    PULSE1khz = 0;
    RESET = 1;
    BOTON = 0;
    forever #1 CLK = !CLK;
end

initial begin
    PULSE1khz = 0;
    forever #10 PULSE1khz = !PULSE1khz;
end

initial begin
    #10
    RESET = 0;
    
    forever #20 BOTON = !BOTON;
end
endmodule
