`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/09/22 22:25:04
// Design Name: 
// Module Name: four_input_or_gate_b_tb
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


module four_input_or_gate_b_tb;
reg aa, bb, cc, dd;
wire ee, ff, gg;

four_input_or_gate_b u_four_input_or_gate(
.a(aa),
.b(bb),
.c(cc),
.d(dd),
.e(ee),
.f(ff),
.g(gg));

initial begin
aa = 0; bb = 0; cc = 0; dd = 0;     //1

#50 dd = 1;    //2

#50 cc = 1; dd = 0;    //3

#50 dd = 1;    //4

#50  bb = 1; cc = 0; dd = 0;   //5

#50 dd = 1;    //6

#50 cc = 1; dd = 0;    //7

#50 dd = 1;    //8

#50 aa = 1; bb = 0; cc = 0; dd = 0;    //9

#50 dd = 1;    //10

#50 cc = 1; dd = 0;    //11

#50 dd = 1;    //12

#50 bb = 1; cc = 0; dd = 0;    //13

#50 dd = 1;    //14

#50 cc = 1; dd = 0;    //15

#50 dd = 1;    //16
end
endmodule
