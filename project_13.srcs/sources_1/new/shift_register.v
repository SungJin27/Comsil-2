`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/11/30 11:33:50
// Design Name: 
// Module Name: shift_register
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


module shift_register(clk, x, A, B, C, D);
input clk, x;
output A, B, C, D;

D_FF d3(D, C, clk);
D_FF d2(C, B, clk);
D_FF d1(B, A, clk);
D_FF d0(A, x, clk);

endmodule


module D_FF(Q, D, CLK);
input D, CLK;
output Q;
reg Q, NQ;

initial begin
Q = 0;
NQ = 0;
end

always @(posedge CLK) begin
    Q <= D;
    NQ <= ~D;
end
endmodule
