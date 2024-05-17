`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.05.2024 00:33:05
// Design Name: 
// Module Name: MemoriaROMGetData
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


module MemoriaROMGetData(
    input Clock,
    input Reset,
    output [7:0] Data
    );

wire pulse1hz;
wire [6:0] adrrAutoIncrement;

//100MHZ to 1HZ
//LIMIT 27'd9 FOR TEST 
ContadorN 
#(
.SIZE(27),
//.LIMIT(27'd99999999),
.LIMIT(27'd9),
.OFFSET(27'd0),
.DELTA_INC(27'd1)
)
u1
(
.Clock(Clock),
.Reset(Reset),
.CE(1'b1),
.Pulse(pulse1hz)
);

//incrementador de addr cada 1 segundo
ContadorNBits 
#(
.SIZE(7),
.LIMIT(7'd127),
.OFFSET(7'd0),
.DELTA_INC(7'd1)
)
u2
(
.Clock(Clock),
.Reset(Reset),
.CE(pulse1hz),
.Q(adrrAutoIncrement)
);

MemoriaROM u3(
.Clock(Clock),
.Addr(adrrAutoIncrement),
.CE(1'b1),
.Salida(Data)
);

endmodule
