`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.04.2023 15:30:12
// Design Name: 
// Module Name: vedic64testbench
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


module vedic64testbench();
reg [63:0]a;
reg [63:0]b;
wire [127:0]out;

vedic64 dut(.a(a),.b(b),.out(out));
initial begin
a=0;b=0;
#100;
a=64'h12;b=64'h4512;
#100;
a=64'h35;b=64'h465;
#100;
a=64'h96;b=64'h755;
#100;
end
endmodule
