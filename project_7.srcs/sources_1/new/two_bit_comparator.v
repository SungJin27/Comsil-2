`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/10/16 12:20:55
// Design Name: 
// Module Name: two_bit_comparator
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


module two_bit_comparator(
    input a1,
    input a0,
    input b1,
    input b0,
    output f1,
    output f2,
    output f3
    );
    
assign f1 = a0 & ~b1 & ~b0 | a1 & ~b1 | a1 & a0 & ~b0;

assign f2 = ~(a0 ^ b0) & ~(a1 ^ b1);

assign f3 =  ~a1 & ~a0 & b0 | ~a1 & b1 | ~a0 & b1 & b0;
endmodule
