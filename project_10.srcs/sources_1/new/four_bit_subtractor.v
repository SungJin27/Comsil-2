`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/11/10 15:45:35
// Design Name: 
// Module Name: four_bit_subtractor
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

module four_bit_subtractor(A, B, bi, d, bo);
input [3:0] A, B; input bi;
output [3:0] d; output bo;
wire [3:0] A, B, d; wire bi, bo;
wire [2:0] bout;
sub1bit sub1(A[0], B[0], bi, d[0], bout[0]);
sub1bit sub2(A[1], B[1], bout[0], d[1], bout[1]);
sub1bit sub3(A[2], B[2], bout[1], d[2], bout[2]);
sub1bit sub4(A[3], B[3], bout[2], d[3], bo);
endmodule