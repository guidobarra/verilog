`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.06.2024 16:00:16
// Design Name: 
// Module Name: ModuleVGASprite
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


module ModuleVGASprite(
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
reg Red,Green,Blue;
assign vga_r = {5{Red}};
assign vga_g = {6{Green}};
assign vga_b = {5{Blue}};

assign HCE = (hcont==10'd799);
assign Hsync = (hcont>=10'd656 && hcont<10'd752)?1'b0:1'b1;
assign Vsync = (vcont>=10'd490 && vcont<10'd492)?1'b0:1'b1;

//Sprite
reg [9:0] coordX,coordY;
//assign coordX=10'd64;
//assign coordY=10'd64;
reg [7:0] lineaSprite;
reg cursor;
reg [9:0] offsetX,offsetY;

wire [7:0] Sprite0,Sprite1,Sprite2,Sprite3;
wire [7:0] Sprite4,Sprite5,Sprite6,Sprite7;

assign Sprite0 = 8'b00111100; //   ****
assign Sprite1 = 8'b01111110; //  ******
assign Sprite2 = 8'b11111111; // ********
assign Sprite3 = 8'b11111111; // ********
assign Sprite4 = 8'b11111111; // ********
assign Sprite5 = 8'b11111111; // ********
assign Sprite6 = 8'b01111110; //  ******
assign Sprite7 = 8'b00111100; //   ****

always @*
begin
    offsetX = hcont-coordX;
    offsetY = vcont-coordY;
end

always @*
begin
    case (offsetY[2:0])
        3'd0: lineaSprite=Sprite0;
        3'd1: lineaSprite=Sprite1;
        3'd2: lineaSprite=Sprite2;
        3'd3: lineaSprite=Sprite3;
        3'd4: lineaSprite=Sprite4;
        3'd5: lineaSprite=Sprite5;
        3'd6: lineaSprite=Sprite6;
        default: lineaSprite=Sprite7;
    endcase
    case (offsetX[2:0])
        3'd0: cursor = lineaSprite[0];
        3'd1: cursor = lineaSprite[1];
        3'd2: cursor = lineaSprite[2];
        3'd3: cursor = lineaSprite[3];
        3'd4: cursor = lineaSprite[4];
        3'd5: cursor = lineaSprite[5];
        3'd6: cursor = lineaSprite[6];
        default: cursor=lineaSprite[7];
    endcase
end


//vga
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

//time or step
wire tiempo;
assign tiempo = (hcont==10'd1 && vcont==10'd1);
always @(posedge clock25 or posedge Reset)
begin
    if (Reset | coordX==10'd639) 
        coordX=10'd0;
    else if (tiempo) 
        coordX=coordX+10'd1;
end

always @(posedge clock25 or posedge Reset)
begin
    if (Reset | coordY==10'd479) 
        coordY=10'd0;
    else if (tiempo) 
        coordY=coordY+10'd1;
end

//ball
always @(posedge clock25 or posedge Reset)
begin
    if (Reset)
    begin
        Red <= 1'b0;
        Green <= 1'b0;
        Blue <= 1'b0;  
    end
    else if ( (hcont<10'd640 && vcont<10'd480) && cursor && (offsetX<10'd8 && offsetX>=10'd0 && offsetY<10'd8 && offsetY>=10'd0 ))
    begin
        Red <= 1'b0;
        Green <= 1'b1;
        Blue <= 1'b0; 
    end
    else
    begin
        Red <= 1'b0;
        Green <= 1'b0;
        Blue <= 1'b0; 
    end
end

endmodule
