`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/11/21 09:22:05
// Design Name: 
// Module Name: two_bit_counter_tb
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


module two_bit_counter_tb();
reg clk, x;
wire A, B, z;
two_bit_counter connect(clk, A, B, x, z);
initial begin
clk = 0;
x = 0;
end

always clk = #10 ~clk;
always x = #20 ~x;
endmodule
