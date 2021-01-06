`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/11/17 00:39:12
// Design Name: 
// Module Name: D_FF_tb
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

module D_FF_tb();
reg d, clk;
wire q, qb;
D_FF con(q, qb, d, clk);
initial begin
    d=0; clk=0;
end
always clk = #5 ~clk;
always d = #10 ~d;
endmodule
