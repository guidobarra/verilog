`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.05.2024 10:41:16
// Design Name: 
// Module Name: LatchRS
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


module LatchRS(
    input R,
    input S,
    output Q,
    output NotQ
    );
    
//wire wQ;
//wire wNotQ;

//NOR
//assign wQ = ~|{R,wNotQ};
//assign wNotQ = ~|{S,wQ};

//assign Q = wQ;
//assign NotQ = wNotQ;


assign Q = ~|{R, NotQ};
assign NotQ = ~|{S, Q};
endmodule
