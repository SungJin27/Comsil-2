`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/11/30 13:07:22
// Design Name: 
// Module Name: shift_register_tb
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

module shift_register_tb();
reg clk, x;
wire A, B, C, D;
shift_register connect(clk, x, A, B, C, D);

initial begin
clk = 0;

x = 0;
x = #20 1'b1;
x = #20 1'b0;
x = #20 1'b1;
x = #20 1'b1;
x = #20 1'b0;
end

always clk = #10 ~clk;
endmodule
