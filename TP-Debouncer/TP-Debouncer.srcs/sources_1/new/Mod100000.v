`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.05.2024 23:23:08
// Design Name: 
// Module Name: Mod100000
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

//input 100000 pulse TO 1 pulse
module Mod100000(
    input Clock,
    input Reset,
    output Pulse
    );

reg [7: 0] counter;
assign Pulse = ~|{counter};
always @(posedge Clock or posedge Reset)
begin
    if (Reset | counter == 7'd99)
        counter <= 1'b0;
    else
        counter <= counter + 7'd1;
end
endmodule
