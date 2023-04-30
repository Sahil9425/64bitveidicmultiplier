`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.04.2023 15:11:27
// Design Name: 
// Module Name: vedic64
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


module vedic64(
    input [63:0]a,
    input [63:0]b,
    output wire [127:0]out
    );
    wire [63:0]w0;
    wire [63:0]w1;
    wire [63:0]w2;
    wire [63:0]w3;
    wire [31:0]temp1;
    wire [95:0]temp2;
    wire [95:0]temp3;
    wire [95:0]temp4;
    wire [63:0]w4;
    wire [95:0]w5;
    wire [95:0]w6;
    vedic32 u0(.a(a[31:0]),.b(b[31:0]),.c(w0[63:0]));
    vedic32 u1(.a(a[63:32]),.b(b[31:0]),.c(w1[63:0]));
    vedic32 u2(.a(a[31:0]),.b(b[63:32]),.c(w2[63:0]));
    vedic32 u3(.a(a[63:32]),.b(b[63:32]),.c(w3[63:0]));
    assign temp1={32'b0,w0[63:32]};
    _64bitadder u4(.a(temp1),.b(w1[63:0]),.s(w4));
    assign temp2={32'b0,w2[63:0]};
    assign temp3={w3[63:0],32'b0};
    _96bitadder u5(.a(temp2),.b(temp3),.s(w5));
    assign temp4={32'b0,w4[63:0]};
    _96bitadder u6(.a(temp4),.b(w5[95:0]),.s(w6));
    assign out[31:0]=w0[31:0];
    assign out[127:32]=w6[95:0];
                
endmodule
