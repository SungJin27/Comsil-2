`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/11/22 10:21:48
// Design Name: 
// Module Name: decade_counter_tb
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


module decade_counter_tb();
reg clk, x;
wire A, B, C, D, z;
decade_counter connect(clk, A, B, C, D, x, z);
initial begin
clk = 0;
x = 0;
end

always clk = #10 ~clk;
always x = #20 ~x;
endmodule
