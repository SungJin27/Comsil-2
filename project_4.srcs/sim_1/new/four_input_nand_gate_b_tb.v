`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/09/29 22:24:21
// Design Name: 
// Module Name: four_input_nand_gate_b_tb
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


module four_input_nand_gate_b_tb;
reg aa, bb, cc, dd;
wire ee, ff, gg;

four_input_nand_gate_b u_four_input_nand_gate_b(
    .a(aa),
    .b(bb),
    .c(cc),
    .d(dd),
    .e(ee),
    .f(ff),
    .g(gg)
    );
    
initial begin
aa = 1'b0; bb = 1'b0; cc = 1'b0; dd = 1'b0;
end

always #400 aa = ~aa;
always #200 bb = ~bb;
always #100 cc = ~cc;
always #50 dd = ~dd;

endmodule
