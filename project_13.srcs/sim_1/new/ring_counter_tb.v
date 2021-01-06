`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/11/30 14:17:14
// Design Name: 
// Module Name: ring_counter_tb
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


module ring_counter_tb();
reg clk, reset;
wire A, B, C, D;

ring_counter connect(clk, reset, A, B, C, D);

initial begin
clk = 1'b0;
reset = 1'b1;
reset = #20 1'b0;
end

always clk = #10 ~clk;

endmodule
