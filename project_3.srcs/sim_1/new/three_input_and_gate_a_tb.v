`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/09/20 09:27:43
// Design Name: 
// Module Name: three_input_and_gate_a_tb
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

module three_input_and_gate_a_tb;
reg aa;
reg bb;
reg cc;
wire dd;

three_input_and_gate_a u_three_input_and_gate_a(
.a(aa),
.b(bb),
.c(cc),
.d(dd));

initial begin
aa = 0; bb = 0; cc = 0;

#100 cc = 1;

#100 cc = 0; bb = 1;

#100 cc = 1;

#100 aa = 1; bb = 0; cc = 0;

#100 cc = 1;

#100 bb = 1; cc = 0;

#100 cc = 1;
end

endmodule