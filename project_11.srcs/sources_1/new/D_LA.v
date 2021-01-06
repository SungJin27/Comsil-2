`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/11/17 14:38:37
// Design Name: 
// Module Name: D_LA
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


module D_LA(Q, NQ, D, EN);
input D, EN;
output Q, NQ;
reg Q, NQ;
initial begin
    Q = 0;
    NQ = 0;
end

always @(EN) begin
    Q <= D;
    NQ <= ~D;
end

endmodule
