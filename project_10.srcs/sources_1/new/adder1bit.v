`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/11/10 15:40:57
// Design Name: 
// Module Name: adder1bit
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

module adder1bit(A, B, Ci, S, Co);
input A, B, Ci;
output S, Co;
assign S = A^B^Ci;
assign Co = A&B | Ci&(A^B);
endmodule
