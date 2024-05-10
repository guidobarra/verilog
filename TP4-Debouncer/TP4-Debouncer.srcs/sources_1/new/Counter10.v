`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.05.2024 13:36:09
// Design Name: 
// Module Name: Counter10
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

//COUNTER 10 pulse to 1 pulse
//COUNTER 10hz to 1hz pulse 
module Counter10(
    input Clock,
    input Reset,
    output Pulse
    );
reg [3:0] counter;
assign Pulse = ~|{counter};
always @(posedge Clock or posedge Reset)
begin
    if (Reset | counter == 4'd9)
        counter <= 4'd0;
    else
        counter <= counter + 4'd1;
end
endmodule
