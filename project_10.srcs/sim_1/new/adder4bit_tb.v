`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/11/10 15:43:05
// Design Name: 
// Module Name: adder4bit_tb
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

module adder4bit_tb();
reg clk, Ci; reg [3:0] A, B;
wire [3:0] S; wire Co;
four_bit_adder connect(A, B, Ci, S, Co);
initial begin
    clk=0; A[3]=0; A[2]=1; A[1]=0; A[0]=1;
    B[3]=0; B[2]=0; B[1]=0; B[0]=0; Ci=1; end
always clk = #10 ~clk;
always @(posedge clk) begin
    Ci <= ~Ci; B[0] <= #39.999 ~B[0];
    B[1] <= #79.999 ~B[1]; B[2] <= #159.999 ~B[2];
    B[3] <= #319.999 ~B[3]; end
endmodule