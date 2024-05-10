`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.05.2024 17:02:16
// Design Name: 
// Module Name: ContadorMod100
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


module ContadorMod100(
    input Reset,
    input Enable,
    input Clock,
    output [6:0] Q
    );

reg [6:0] counter;
assign Q = counter;
always @(posedge Clock)
begin
    if (Reset == 1'b1 | counter == 7'd99)
        counter <= 7'd0;
    else 
        begin
            if (Enable)
                counter <= counter + 7'd1;
        end
end
endmodule
