`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.06.2024 15:19:06
// Design Name: 
// Module Name: ModuloVGABlue
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


module ModuloVGABlue(
    input Reset,
    output Vsync,
    output Hsync,
    output [4:0] vga_r,
    output [5:0] vga_g,
    output [4:0] vga_b
    );
wire clock25;
ClockCPU U0 (.clock25(clock25));

reg [9:0] hcont,vcont;
wire HCE;
wire Red,Green,Blue;
assign Red=1'b0; assign Green=1'b0;
assign Blue=(hcont<10'd640);
assign vga_r = {5{Red}};
assign vga_g = {6{Green}};
assign vga_b = {5{Blue}};

assign HCE = (hcont==10'd799);
assign Hsync = (hcont>=10'd656 && hcont<10'd752)?1'b0:1'b1;
assign Vsync = (vcont>=10'd490 && vcont<10'd492)?1'b0:1'b1;

always @(posedge clock25 or posedge Reset)
begin
    if (Reset  | hcont==10'd799)
        hcont <= 10'd0;
    else
        hcont <= hcont+1;
end

always @(posedge clock25 or posedge Reset)
begin
    if (Reset  | vcont==10'd523)
        vcont <= 10'd0;
    else
        if (HCE)
            vcont <= vcont + 1;
end

endmodule
