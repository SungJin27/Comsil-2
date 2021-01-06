`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/11/17 00:36:55
// Design Name: 
// Module Name: RS_FF_tb
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

module RS_FF_tb();
reg CLK, R, S;
wire Q, NQ;
RS_FF connect(CLK, R, S, Q, NQ);
initial begin
CLK = 0;
R = 0; S = 1;
S <= #20 0;
R <= #40 1;
R <= #60 0;
R <= #80 1;
S <= #100 1;
end
always CLK = #10 ~CLK;
endmodule