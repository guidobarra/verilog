`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.05.2024 17:06:21
// Design Name: 
// Module Name: ContadorMod100M
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


module ContadorMod100M(
    input Enable,
    input Reset,
    input Clock,
    output [26:0] Q
    );
 
reg [26:0] counter;
assign Q = counter;
always @(posedge Clock)
begin
    if (Reset == 1'b1 | counter == 27'd99999999)
        counter <= 27'd0;
    else 
        begin
            if (Enable)
                counter <= counter + 27'd1;
        end
end
endmodule
