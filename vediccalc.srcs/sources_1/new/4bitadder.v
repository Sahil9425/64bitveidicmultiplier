`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.04.2023 17:10:07
// Design Name: 
// Module Name: 4bitadder
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


module _4bitadder(
    input [3:0]a,
    input [3:0]b,
    output [3:0]s,
    output c
    );
    wire w1,w2,w3,w4;
    FA u1(.x(a[0]),.y(b[0]),.z(0),.sum(s[0]),.carry(w1));
    FA u2(.x(a[1]),.y(b[1]),.z(w1),.sum(s[1]),.carry(w2));
    FA u3(.x(a[2]),.y(b[2]),.z(w2),.sum(s[2]),.carry(w3));
    FA u4(.x(a[3]),.y(b[3]),.z(w3),.sum(s[3]),.carry(w4));
    assign c=w4;
    

endmodule
