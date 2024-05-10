`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.05.2024 14:22:23
// Design Name: 
// Module Name: Counter100000
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

//COUNTER 100000 pulse to 1 pulse
//COUNTER 100Mhz to 1khz pulse 
module Counter100000(
    input Clock,
    input Reset,
    output Pulse
    );

reg [16:0] counter;
assign Pulse = ~|{counter};
always @(posedge Clock or posedge Reset)
begin
    if (Reset | counter == 17'd99999)
        counter <= 17'd0;
    else
        counter <= counter + 17'd1;
end
endmodule
