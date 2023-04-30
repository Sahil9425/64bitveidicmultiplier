`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.04.2023 18:24:28
// Design Name: 
// Module Name: _6bitadder
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


module _6bitadder(
    input [5:0]a,
    input [5:0]b,
    output [5:0]s,
    output cout
    );
    wire [1:0]c0;
    _4bitadder u0(.a(a[3:0]),.b(b[3:0]),.s(s[3:0]),.c(c0[0]));
    FA u5(.x(a[4]),.y(b[4]),.z(0),.sum(s[4]),.carry(c0[1]));
    FA u6(.x(a[5]),.y(b[5]),.z(0),.sum(s[5]),.carry(cout));
endmodule
