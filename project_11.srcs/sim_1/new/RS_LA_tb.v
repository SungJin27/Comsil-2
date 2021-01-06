`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/11/17 14:54:58
// Design Name: 
// Module Name: RS_LA_tb
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


module RS_LA_tb();
reg en, r, s;
wire q, nq;
RS_LA connect(en, r, s, q, nq);
initial begin
en = 0;

r = 0; s = 1;
s <= #20 0;
r <= #40 1;
r <= #60 0;
r <= #80 1;
s <= #100 1;
end
always en = #10 ~en;
endmodule
