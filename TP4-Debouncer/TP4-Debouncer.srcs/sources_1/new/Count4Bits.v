`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.05.2024 00:22:57
// Design Name: 
// Module Name: Count4Bits
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


module Count4Bits(
    input Clock,
    input CE,
    input Reset,
    output [3:0] Count
    );

reg [3:0] counter;
assign Count = counter;
always @(posedge Clock or posedge Reset)
begin
    if (Reset | counter == 4'd15)
        counter <= 4'd0;
    else
        if (CE)
            counter <= counter + 4'd1;
end
endmodule
