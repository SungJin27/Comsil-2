`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/10/10 22:54:51
// Design Name: 
// Module Name: full_adder_tb
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


module full_adder_tb;
reg aa, bb, cc_in;
wire cc_out, ssum;

full_adder u_full_adder(
    .a(aa),
    .b(bb),
    .c_in(cc_in),
    .c_out(cc_out),
    .sum(ssum)
    );
    
initial begin
aa = 1'b0; bb = 1'b0; cc_in = 1'b0;
end

always #400 aa = ~aa;
always #200 bb = ~bb;
always #100 cc_in = ~cc_in;

endmodule
