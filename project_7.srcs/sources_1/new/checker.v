`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/10/15 20:36:34
// Design Name: 
// Module Name: checker
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


module checker(
    input a,
    input b,
    input c,
    input d,
    input p,
    output pec
    );
    
assign pec = a ^ b ^ c ^ d ^ p;
endmodule
