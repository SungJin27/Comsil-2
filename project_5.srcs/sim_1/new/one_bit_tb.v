`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/10/10 21:20:14
// Design Name: 
// Module Name: one_bit_tb
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


module one_bit_tb;
reg aa, bb;
wire cc, dd, ee, ff;

one_bit u_one_bit(
    .a(aa),
    .b(bb),
    .c(cc),
    .d(dd),
    .e(ee),
    .f(ff)
    );

initial begin
aa = 1'b0; bb = 1'b0;
end

always #200 aa = ~aa;
always #100 bb = ~bb;

endmodule
