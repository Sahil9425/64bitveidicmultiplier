`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.04.2023 14:48:29
// Design Name: 
// Module Name: _12bitadder
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


module _12bitadder(
    input [11:0]a,
    input [11:0]b,
    output [11:0]s,
    output c
    );
    wire [10:0]w;
    FA u0(.x(a[0]),.y(b[0]),.z(0),.sum(s[0]),.carry(w[0]));
    FA u1(.x(a[1]),.y(b[1]),.z(w[0]),.sum(s[1]),.carry(w[1]));
    FA u2(.x(a[2]),.y(b[2]),.z(w[1]),.sum(s[2]),.carry(w[2]));
    FA u3(.x(a[3]),.y(b[3]),.z(w[2]),.sum(s[3]),.carry(w[3]));
    FA u4(.x(a[4]),.y(b[4]),.z(w[3]),.sum(s[4]),.carry(w[4]));
    FA u5(.x(a[5]),.y(b[5]),.z(w[4]),.sum(s[5]),.carry(w[5]));
    FA u6(.x(a[6]),.y(b[6]),.z(w[5]),.sum(s[6]),.carry(w[6]));
    FA u7(.x(a[7]),.y(b[7]),.z(w[6]),.sum(s[7]),.carry(w[7]));
    FA u8(.x(a[8]),.y(b[8]),.z(w[7]),.sum(s[8]),.carry(w[8]));
    FA u9(.x(a[9]),.y(b[9]),.z(w[8]),.sum(s[9]),.carry(w[9]));
    FA u10(.x(a[10]),.y(b[10]),.z(w[9]),.sum(s[10]),.carry(w[10]));
    FA u11(.x(a[11]),.y(b[11]),.z(w[10]),.sum(s[11]),.carry(c));
    endmodule
