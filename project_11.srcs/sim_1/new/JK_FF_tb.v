`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/11/17 00:41:09
// Design Name: 
// Module Name: JK_FF_tb
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


module JK_FF_tb();
reg j,k,clk;
wire q,qb;
JK_FF connect(j,k,q,qb,clk);
initial begin
clk=0; j=1; k=0;
j = #10 0;
k = #10 1;
k = #10 0;
j = #10 1; k = 1;
end
always clk = #5 ~clk;
endmodule
