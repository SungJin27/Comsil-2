`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/11/10 15:48:30
// Design Name: 
// Module Name: BCD
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


module BCD(A, B, S, C);
input [3:0] A, B;
output [3:0] S; output C;
wire [3:0] B2, A2; wire Cout;
four_bit_adder add1(A, B, 0, B2, Cout);
assign C = B2[3]&B2[1] | B2[3]&B2[2] | Cout;
assign A2 = 4'b0110 * C;
four_bit_adder add2(A2, B2, 0, S);
endmodule
