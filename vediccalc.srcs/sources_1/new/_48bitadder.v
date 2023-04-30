`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.04.2023 21:53:51
// Design Name: 
// Module Name: _48bitadder
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


module _48bitadder(
    input [47:0]a,
    input [47:0]b,
    output [47:0]s,
    output c
    );
    wire [46:0]w;
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
                   FA u31(.x(a[31]),.y(b[31]),.z(w[30]),.sum(s[31]),.carry(w[31]));
                   FA u32(.x(a[32]),.y(b[32]),.z(w[31]),.sum(s[32]),.carry(w[32]));
                   FA u33(.x(a[33]),.y(b[33]),.z(w[32]),.sum(s[33]),.carry(w[33]));
                   FA u34(.x(a[34]),.y(b[34]),.z(w[33]),.sum(s[34]),.carry(w[34]));
                   FA u35(.x(a[35]),.y(b[35]),.z(w[34]),.sum(s[35]),.carry(w[35]));
                   FA u36(.x(a[36]),.y(b[36]),.z(w[35]),.sum(s[36]),.carry(w[36]));
                   FA u37(.x(a[37]),.y(b[37]),.z(w[36]),.sum(s[37]),.carry(w[37]));
                   FA u38(.x(a[38]),.y(b[38]),.z(w[37]),.sum(s[38]),.carry(w[38]));
                   FA u39(.x(a[39]),.y(b[39]),.z(w[38]),.sum(s[39]),.carry(w[39]));
                   FA u40(.x(a[40]),.y(b[40]),.z(w[39]),.sum(s[40]),.carry(w[40]));
                   FA u41(.x(a[41]),.y(b[41]),.z(w[40]),.sum(s[41]),.carry(w[41]));
                   FA u42(.x(a[42]),.y(b[42]),.z(w[41]),.sum(s[42]),.carry(w[42]));
                   FA u43(.x(a[43]),.y(b[43]),.z(w[42]),.sum(s[43]),.carry(w[43]));
                   FA u44(.x(a[44]),.y(b[44]),.z(w[43]),.sum(s[44]),.carry(w[44]));
                   FA u45(.x(a[45]),.y(b[45]),.z(w[44]),.sum(s[45]),.carry(w[45]));
                   FA u46(.x(a[46]),.y(b[46]),.z(w[45]),.sum(s[46]),.carry(w[46]));
                   FA u47(.x(a[47]),.y(b[47]),.z(w[46]),.sum(s[47]),.carry(c));
endmodule
