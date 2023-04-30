`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.04.2023 15:01:09
// Design Name: 
// Module Name: _64bitadder
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


module _64bitadder(
    input [63:0]a,
    input [63:0]b,
    output [63:0]s,
    output c
    );
    wire [62:0]w;
    _32bitadder u0(.a(a[63:32]),.b(b[63:32]),.s(s[63:32]),.c(w[31]));
    _32bitadder u1(.a(a[31:0]),.b(b[31:0]),.s(s[31:0]),.c(c));
endmodule
