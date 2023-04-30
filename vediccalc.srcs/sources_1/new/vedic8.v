`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.04.2023 14:27:30
// Design Name: 
// Module Name: vedic8
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


module vedic8(
    input [7:0]a,
    input [7:0]b,
    output wire[15:0]out
    );
    wire [15:0]w0;
    wire [15:0]w1;
    wire [15:0]w2;
    wire [15:0]w3;
    wire [7:0]temp1;
    wire [11:0]temp2;
    wire [11:0]temp3;
    wire [11:0]temp4;
    wire [7:0]w4;
    wire [11:0]w5;
    wire [11:0]w6;
    vedic4 u0(.a(a[3:0]),.b(b[3:0]),.c(w0[15:0])); 
    vedic4 u1(.a(a[7:4]),.b(b[3:0]),.c(w1[15:0])); 
    vedic4 u2(.a(a[3:0]),.b(b[7:4]),.c(w2[15:0])); 
    vedic4 u3(.a(a[7:4]),.b(b[7:4]),.c(w3[15:0]));
    assign temp1={4'b0,w0[7:4]};
    _8bitadder u4(.a(temp1),.b(w1[7:0]),.s(w4));
    assign temp2={4'b0,w2[7:0]};
    assign temp3={w3[7:0],4'b0};
    _12bitadder u5(.a(temp2),.b(temp3),.s(w5));
    assign temp4={4'b0,w4[7:0]};
    _12bitadder u6(.a(temp4),.b(5),.s(w6));
    assign out[3:0]=w0[3:0];
    assign out[15:4]=w6[11:0];
       
endmodule
