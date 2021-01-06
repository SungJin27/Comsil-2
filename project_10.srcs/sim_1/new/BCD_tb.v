`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/11/10 15:48:59
// Design Name: 
// Module Name: BCD_tb
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

module BCD_tb();

BCD connect (A, B, S, C);
reg clk; reg [3:0] A, B;
wire [3:0] S; wire C;
initial begin
clk=0; A=4'd5;
B=4'd0;
end;
always clk = #10 ~clk;
always @(posedge clk) begin
B <= B+4'd1;
end
endmodule