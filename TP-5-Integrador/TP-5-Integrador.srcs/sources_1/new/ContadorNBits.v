`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.05.2024 17:49:59
// Design Name: 
// Module Name: ContadorNBits
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


module ContadorNBits
#(
parameter SIZE=8,
parameter LIMIT=8'd10,
parameter OFFSET=8'd0,
parameter DELTA_INC=8'd1
)
(
    input Clock,
    input Reset,
    input CE,
    output [SIZE-1:0] Q
    );
    
reg [SIZE-1:0] counter=OFFSET;
assign Q = counter;

always@(posedge Clock or posedge Reset)
begin
    if (Reset | counter==LIMIT)
        counter <= OFFSET;
    else
        if (CE)
            counter <= counter + DELTA_INC;
end
endmodule
