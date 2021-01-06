`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/11/01 12:27:27
// Design Name: 
// Module Name: mux
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


module mux(
    input s0, s1, s2,
    output d0, d1, d2, d3, d4, d5, d6, d7
    );
assign d0 = !s0&!s1&!s2;
assign d1 = !s0&!s1&s2;
assign d2 = !s0&s1&!s2;
assign d3 = !s0&s1&s2;
assign d4 = s0&!s1&!s2;
assign d5 = s0&!s1&s2;
assign d6 = s0&s1&!s2;
assign d7 = s0&s1&s2;
//assign d = d0&!s0&!s1&!s2 | d1&!s0&!s1&s2 | d2&!s0&s1&!s2 |  d3&!s0&s1&s2 |  d4&s0&!s1&!s2 |  d5&s0&!s1&s2 |  d6&s0&s1&!s2 |  d7&s0&s1&s2 ;  
endmodule
