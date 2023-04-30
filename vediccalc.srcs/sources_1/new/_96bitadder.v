`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.04.2023 15:06:07
// Design Name: 
// Module Name: _96bitadder
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


module _96bitadder(
    input [95:0]a,
    input [95:0]b,
    output [95:0]s,
    output c
    );
    wire [94:0]w;
    _48bitadder u0(.a(a[95:48]),.b(b[95:48]),.c(w[47]),.s(s[95:48]));
    _48bitadder u1(.a(a[47:0]),.b(b[47:0]),.c(c),.s(s[47:0]));
endmodule
