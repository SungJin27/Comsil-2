`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/09/22 17:46:42
// Design Name: 
// Module Name: four_input_or_gate_a
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


module four_input_or_gate_a(a, b, c, d, e);
    input a, b, c, d;
    output e;
    assign e = a | b | c | d;
endmodule
