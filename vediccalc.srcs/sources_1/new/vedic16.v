`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.04.2023 15:04:49
// Design Name: 
// Module Name: vedic16
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


module vedic16(
    input [15:0]a,
    input [15:0]b,
    output wire[31:0]c
    );
    wire [15:0]w0;
        wire [15:0]w1;
        wire [15:0]w2;
        wire [15:0]w3;
        wire [7:0]temp1;
        wire [23:0]temp2;
        wire [23:0]temp3;
        wire [23:0]temp4;
        wire [15:0]w4;
        wire [23:0]w5;
        wire [23:0]w6;
        vedic8 u0(.a(a[7:0]),.b(b[7:0]),.out(w0[15:0]));
        vedic8 u1(.a(a[15:8]),.b(b[7:0]),.out(w1[15:0]));
        vedic8 u2(.a(a[7:0]),.b(b[15:8]),.out(w2[15:0]));
        vedic8 u3(.a(a[15:8]),.b(b[15:8]),.out(w3[15:0]));
        assign temp1={8'b0,w0[15:8]};
        _16bitadder u4(.a(w1[15:0]),.b(temp1),.s(w4));
        assign temp2={8'b0,w2[15:0]};
        assign temp3={w3[15:0],8'b0};
        _24bitadder u5(.a(temp2),.b(temp3),.s(w5));
        assign temp4={8'b0,w4[15:0]};
        _24bitadder u6(.a(temp4),.b(w5),.s(w6));
        assign c[7:0]=w0[7:0];
        assign c[31:8]=w6[23:0];            
endmodule
