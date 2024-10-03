`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.10.2024 16:07:56
// Design Name: 
// Module Name: VGAModule
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


module VGAModule(
    input Reset,
    input Clock,
    output Vsync,
    output Hsync,
    output [3:0] vga_r,
    output [3:0] vga_b,
    output [3:0] vga_g
    );

wire clock25;
ClockModule_wrapper ClockModule_wrapper
       (.Input100Mhz(Clock),
        .Output25Mhz(clock25));
reg [9:0] hcont,vcont;
wire HCE;
wire Red,Green,Blue;
assign Red=1'b0; assign Green=1'b0;
assign Blue=(hcont<10'd640);
assign vga_r = {4{Red}};
assign vga_g = {4{Green}};
assign vga_b = {4{Blue}};

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
