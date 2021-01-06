`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/10/10 23:15:30
// Design Name: 
// Module Name: full_subtractor_tb
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


module full_subtractor_tb;
reg aa, bb, bborrow_in;
wire bborrow_out, ddifference;

full_subtractor u_full_subtractor(
    .a(aa),
    .b(bb),
    .borrow_in(bborrow_in),
    .borrow_out(bborrow_out),
    .difference(ddifference)
    );

initial begin
aa = 1'b0; bb = 1'b0; bborrow_in = 1'b0;
end

always #400 aa = ~aa;
always #200 bb = ~bb;
always #100 bborrow_in = ~bborrow_in;
endmodule
