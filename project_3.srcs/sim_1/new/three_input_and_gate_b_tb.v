`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/09/22 18:45:45
// Design Name: 
// Module Name: three_input_and_gate_b_tb
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


module three_input_and_gate_b_tb;
reg aa, bb, cc;
wire dd, ee;

three_input_and_gate_b u_three_input_and_gate_b(
.a(aa),
.b(bb),
.c(cc),
.d(dd),
.e(ee));

initial begin
aa = 0; bb = 0; cc = 0;     //1

#100 cc = 1;    //2

#100 cc = 0; bb = 1;    //3

#100 cc = 1;    //4

#100 aa = 1; bb = 0; cc = 0;    //5

#100 cc = 1;    //6

#100 bb = 1; cc = 0;    //7

#100 cc = 1;    //8
end

endmodule
