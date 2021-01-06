`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/12/01 23:34:38
// Design Name: 
// Module Name: up_down_counter_tb
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


module up_down_counter_tb();
reg clk, x, up_down;
wire A, B, C, D;
up_down_counter connect(clk, A, B, C, D, x, up_down);

initial begin
clk = 0;
x = 0;
up_down = 0;
end

always clk = #10 ~clk;
always x = #20 ~x;
always up_down = #400 ~up_down;

endmodule
