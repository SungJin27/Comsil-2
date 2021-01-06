`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/10/10 23:16:00
// Design Name: 
// Module Name: full_subtractor
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


module full_subtractor(
    input a,
    input b,
    input borrow_in,
    output borrow_out,
    output difference
    );
    
assign borrow_out = (~(a ^ b) & borrow_in) | (~a & b);
assign difference = a ^ b ^ borrow_in;

endmodule
