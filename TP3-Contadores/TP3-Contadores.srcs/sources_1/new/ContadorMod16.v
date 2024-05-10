`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.05.2024 15:29:06
// Design Name: 
// Module Name: ContadorMod16
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


module ContadorMod16(
    input Clock,
    input Reset,
    output [3:0] Q,
    input Enable
    );

reg [3:0] count;
assign Q = count;
always @(posedge Clock)
begin
    if (Reset)
        count <= 4'd0;
    else 
        begin
            if (Enable)
                count <= count + 4'd1;
        end
end
endmodule
