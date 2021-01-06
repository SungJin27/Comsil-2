`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/09/29 23:49:17
// Design Name: 
// Module Name: four_input_aoi_gate
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


module four_input_aoi_gate(
    input a,
    input b,
    input c,
    input d,
    output e,
    output f,
    output g
    );
    
    assign e = a & b;
    assign f = c & d;
    assign g = ~(e | f);
endmodule
