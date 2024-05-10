`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.05.2024 15:40:28
// Design Name: 
// Module Name: ContadorMod10
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


module ContadorMod10(
    input Clock,
    input Reset,
    input Enable,
    output [4:0] Q
    );

reg [3:0] counter;
assign Q = counter;
always @(posedge Clock)
begin
    if (Reset == 1'b1 | counter == 4'd9)
        counter <= 4'd0;
    else 
        begin
            if (Enable)
                counter <= counter + 4'd1;
        end
end
endmodule
