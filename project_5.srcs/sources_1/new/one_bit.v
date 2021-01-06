`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/10/10 21:19:10
// Design Name: 
// Module Name: one_bit
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


module one_bit(
    input a,
    input b,
    output c,
    output d,
    output e,
    output f
    );

assign c = (~a & ~b) | (a & b);
assign d = (~a & b) | (a & ~b);
assign e = a & ~b;
assign f = ~a & b;
    
endmodule
