`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.05.2024 18:27:32
// Design Name: 
// Module Name: DebouncedLED_TB
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


module DebouncedLED_TB(

    );
reg CLK, RESET, BOTON, PULSE1khz;
wire LED;
DebouncedLED u1 (
    .Clock(CLK),
    .Reset(RESET),
    .Boton(BOTON),
    .Pulse1khz(PULSE1khz),
    .LED(LED)
);

initial begin
    CLK = 0;
    PULSE1khz = 0;
    RESET = 1;
    BOTON = 0;
    forever #1 CLK = !CLK;
    forever #10 PULSE1khz = !PULSE1khz;
end

initial begin
    PULSE1khz = 0;
    forever #10 PULSE1khz = !PULSE1khz;
end

initial begin
    #20
    RESET = 0;
    
    #50
    BOTON = 1;
    
    #50
    BOTON = 0;
    
    #50
    BOTON = 1;
    
    #50
    BOTON = 0;
    
    #50
    BOTON = 1;
    
    #50
    BOTON = 0;
    
    #50
    BOTON = 1;
    
    #50
    RESET = 1;
    
    #50
    BOTON = 1;
    
    #50
    BOTON = 0;
    
    #50
    BOTON = 1;
    
    #50
    BOTON = 0;
end
endmodule
