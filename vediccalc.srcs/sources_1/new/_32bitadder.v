`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.04.2023 21:44:30
// Design Name: 
// Module Name: _32bitadder
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


module _32bitadder(
    input [31:0]a,
    input [31:0]b,
    output c,
    output [31:0]s
    );
    wire [30:0]w;
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
               FA u11(.x(a[11]),.y(b[11]),.z(w[10]),.sum(s[11]),.carry(w[11]));
               FA u12(.x(a[12]),.y(b[12]),.z(w[11]),.sum(s[12]),.carry(w[12]));
               FA u13(.x(a[13]),.y(b[13]),.z(w[12]),.sum(s[13]),.carry(w[13]));
               FA u14(.x(a[14]),.y(b[14]),.z(w[13]),.sum(s[14]),.carry(w[14]));
               FA u15(.x(a[15]),.y(b[15]),.z(w[14]),.sum(s[15]),.carry(w[15]));
               FA u16(.x(a[16]),.y(b[16]),.z(w[15]),.sum(s[16]),.carry(w[16]));
               FA u17(.x(a[17]),.y(b[17]),.z(w[16]),.sum(s[17]),.carry(w[17]));
               FA u18(.x(a[18]),.y(b[18]),.z(w[17]),.sum(s[18]),.carry(w[18]));
               FA u19(.x(a[19]),.y(b[19]),.z(w[18]),.sum(s[19]),.carry(w[19]));
               FA u20(.x(a[20]),.y(b[20]),.z(w[19]),.sum(s[20]),.carry(w[20]));
               FA u21(.x(a[21]),.y(b[21]),.z(w[20]),.sum(s[21]),.carry(w[21]));
               FA u22(.x(a[22]),.y(b[22]),.z(w[21]),.sum(s[22]),.carry(w[22]));
               FA u23(.x(a[23]),.y(b[23]),.z(w[22]),.sum(s[23]),.carry(w[23]));
               FA u24(.x(a[24]),.y(b[24]),.z(w[23]),.sum(s[24]),.carry(w[24]));
               FA u25(.x(a[25]),.y(b[25]),.z(w[24]),.sum(s[25]),.carry(w[25]));
               FA u26(.x(a[26]),.y(b[26]),.z(w[25]),.sum(s[26]),.carry(w[26]));
               FA u27(.x(a[27]),.y(b[27]),.z(w[26]),.sum(s[27]),.carry(w[27]));
               FA u28(.x(a[28]),.y(b[28]),.z(w[27]),.sum(s[28]),.carry(w[28]));
               FA u29(.x(a[29]),.y(b[29]),.z(w[28]),.sum(s[29]),.carry(w[29]));
               FA u30(.x(a[30]),.y(b[30]),.z(w[29]),.sum(s[30]),.carry(w[30]));
               FA u31(.x(a[31]),.y(b[31]),.z(w[30]),.sum(s[31]),.carry(c));  
endmodule
