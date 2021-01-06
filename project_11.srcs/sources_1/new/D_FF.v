`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/11/17 00:38:50
// Design Name: 
// Module Name: D_FF
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

module D_FF(Q,NQ,D,CLK);
input D,CLK;
output Q,NQ;
reg Q,NQ;
initial begin
Q=0;
NQ=0;
end
always @(posedge CLK) begin
    Q <= D;
    NQ <= ~D;
end
endmodule
