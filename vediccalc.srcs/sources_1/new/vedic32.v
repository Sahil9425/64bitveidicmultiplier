`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.04.2023 21:20:48
// Design Name: 
// Module Name: vedic32
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


module vedic32(
    input [31:0]a,
    input [31:0]b,
    output wire [63:0]c
    );
    wire [31:0]w0;
            wire [31:0]w1;
            wire [31:0]w2;
            wire [31:0]w3;
            wire [15:0]temp1;
            wire [47:0]temp2;
            wire [47:0]temp3;
            wire [47:0]temp4;
            wire [31:0]w4;
            wire [47:0]w5;
            wire [47:0]w6;
             vedic16 u0(.a(a[15:0]),.b(b[15:0]),.c(w0[31:0]));
             vedic16 u1(.a(a[31:16]),.b(b[15:0]),.c(w1[31:0]));
             vedic16 u2(.a(a[15:0]),.b(b[31:16]),.c(w2[31:0]));
             vedic16 u3(.a(a[31:16]),.b(b[31:16]),.c(w3[31:0]));
             assign temp1={16'b0,w0[31:16]};
             _32bitadder u4(.a(temp1),.b(w1[31:0]),.s(w4));
             assign temp2={16'b0,w2[31:0]};
             assign temp3={w3[31:0],16'b0};
             _48bitadder u5(.a(temp2),.b(temp3),.s(w5));
             assign temp4={16'b0,w4[31:0]};
             _48bitadder u6(.a(temp4),.b(w5[47:0]),.s(w6));
             assign c[15:0]=w0[15:0];
             assign c[63:16]=w6[47:0];
             
endmodule
