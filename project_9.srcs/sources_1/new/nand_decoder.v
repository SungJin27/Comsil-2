`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/11/01 09:37:01
// Design Name: 
// Module Name: nand_decoder
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


module nand_decoder(
    input a, b,
    output d0, d1, d2, d3
    );
    
assign d0 = a | b;
assign d1 = a | ~b;
assign d2 = ~a | b;
assign d3 = ~a | ~b;
endmodule
