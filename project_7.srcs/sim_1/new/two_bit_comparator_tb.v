`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/10/16 12:21:15
// Design Name: 
// Module Name: two_bit_comparator_tb
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


module two_bit_comparator_tb;
reg aa1, aa0, bb1, bb0;
wire ff1, ff2, ff3;

two_bit_comparator u_two_bit_comparator(
    .a1(aa1),
    .a0(aa0),
    .b1(bb1),
    .b0(bb0),
    .f1(ff1),
    .f2(ff2),
    .f3(ff3)
    );
    
initial begin
aa1 = 1'b0; aa0 = 1'b0; bb1 = 1'b0; bb0 = 1'b0;
end

always #800 aa1 = ~aa1;
always #400 aa0 = ~aa0;
always #200 bb1 = ~bb1;
always #100 bb0 = ~bb0;

endmodule
