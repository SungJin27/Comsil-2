`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/11/10 15:45:09
// Design Name: 
// Module Name: sub1bit
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

module sub1bit(A, B, bi, d, bo);
input A, B, bi;
output d, bo;
assign d = A^(B^bi);
assign bo = B&bi | !A&(B^bi);
endmodule