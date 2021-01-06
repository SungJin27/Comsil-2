`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/09/22 17:48:17
// Design Name: 
// Module Name: four_input_or_gate_a_tb
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


module four_input_or_gate_a_tb;
reg aa, bb, cc ,dd;
wire ee;

four_input_or_gate_a u_four_input_or_gate_a(
.a(aa),
.b(bb),
.c(cc),
.d(dd),
.e(ee));

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