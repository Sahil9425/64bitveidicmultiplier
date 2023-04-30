`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.04.2023 16:49:41
// Design Name: 
// Module Name: vedic4
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


module vedic4(
    input [3:0]a,
    input [3:0]b,
    output wire[7:0]c
    );
    wire [3:0]w0;
    wire [3:0]w1;
    wire [3:0]w2;
    wire [3:0]w3;
    wire [3:0]temp1;
    wire [5:0]temp2;
    wire [5:0]temp3;
    wire [5:0]temp4;
    wire [3:0]w4;
    wire [5:0]w5;
    wire [5:0]w6;
    
    vedic2_2 u1(.a(a[1:0]),.b(b[1:0]),.c(w0[3:0]));
    vedic2_2 u2(.a(a[3:2]),.b(b[1:0]),.c(w1[3:0]));
    vedic2_2 u3(.a(a[1:0]),.b(b[3:2]),.c(w2[3:0]));
    vedic2_2 u4(.a(a[3:2]),.b(b[3:2]),.c(w3[3:0]));
            assign temp1={2'b0,w0[3:2]};
                _4bitadder d1(.a(w1),.b(temp1),.s(w4));
    assign temp2={2'b0,w2[3:0]};
    assign temp3={w3[3:0],2'b0};
    _6bitadder d2(.a(temp2),.b(temp3),.s(w5));
       assign temp4={2'b0,w4[3:0]};
        _6bitadder d3(.a(temp4),.b(w5),.s(w6));
    assign c[1:0]=w0[1:0];
    assign c[7:2]=w6[5:0];
    
    
    
    
endmodule
