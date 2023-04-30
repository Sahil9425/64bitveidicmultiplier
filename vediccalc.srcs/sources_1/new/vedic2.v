`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.04.2023 15:48:18
// Design Name: 
// Module Name: vedic2_2
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


module vedic2_2(
    input [1:0]a,
    input [1:0]b,
    output wire [3:0]c
    );
    wire [3:0] temp;
    assign c[0]=a[0]&b[0];
    assign temp[0]=a[1]&b[0];
    assign temp[1]=a[0]&b[1];
    assign temp[2]=a[1]&b[1];
    hadder u1(.a(temp[0]),.b(temp[1]),.s(c[1]),.c(temp[3]));
    hadder u2(.a(temp[2]),.b(temp[3]),.s(c[2]),.c(c[3]));
    
endmodule
