`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/10/07 22:41:36
// Design Name: 
// Module Name: boolean_function_1_a
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


module boolean_function_1_a(
    input a,
    input b,
    input c,
    output d
    );
    
assign d = (~a | ~b) & (~c);

endmodule
