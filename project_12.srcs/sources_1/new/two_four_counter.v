`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/11/23 11:18:57
// Design Name: 
// Module Name: two_four_counter
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


module two_four_counter(clk, A, B, C, D, x, z);
input clk, x;
output A, B, C, D, z;
assign Da = A & ~x | B & ~C & x | A & ~B & x | B & ~D & x;
assign Db = B & ~x | A & ~C & x | A & ~D & x | ~B & C & D & x;
assign Dc = C & ~x | ~C & D & x | C & ~D & x | ~A & B & x;
assign Dd = D & ~x | ~D & x;
D_FF d1(A, Da, clk);
D_FF d2(B, Db, clk);
D_FF d3(C, Dc, clk);
D_FF d4(D, Dd, clk);
assign z = A & B & C & D & x;
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