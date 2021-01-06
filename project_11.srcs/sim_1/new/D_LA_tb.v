`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/11/17 14:38:50
// Design Name: 
// Module Name: D_LA_tb
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


module D_LA_tb();
reg d, en;
wire q, nq;
D_FF con(q, nq, d, en);
initial begin
    d = 0; en = 0;
end
always en = #5 ~en;
always d = #10 ~d;
endmodule
