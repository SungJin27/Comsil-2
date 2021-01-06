`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/10/16 13:22:34
// Design Name: 
// Module Name: generator_odd
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


module generator_odd(
    input a,
    input b,
    input c,
    input d,
    output p
    );

assign p = ~(a ^ b ^ c ^ d);
endmodule
