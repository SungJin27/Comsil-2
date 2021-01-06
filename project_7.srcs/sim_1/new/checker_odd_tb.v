`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/10/16 12:55:02
// Design Name: 
// Module Name: checker_odd_tb
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


module checker_odd_tb;
reg aa, bb, cc, dd, pp;
wire ppec;

checker_odd u_checker_odd(
    .a(aa),
    .b(bb),
    .c(cc),
    .d(dd),
    .p(pp),
    .pec(ppec)
    );

initial begin
aa = 1'b0; bb = 1'b0; cc = 1'b0; dd = 1'b0; pp = 1'b0;
end

always #1600 aa = ~aa;
always #800 bb = ~bb;
always #400 cc = ~cc;
always #200 dd = ~dd;
always #100 pp = ~pp;

endmodule
