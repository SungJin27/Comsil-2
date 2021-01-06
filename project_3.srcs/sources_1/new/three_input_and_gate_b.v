`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/09/22 18:34:34
// Design Name: 
// Module Name: three_input_and_gate_b
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


module three_input_and_gate_b(a, b, c, d, e);
    input a, b, c;
    output d, e;
    
    assign d = a & b;
    assign e = d & c;
endmodule
