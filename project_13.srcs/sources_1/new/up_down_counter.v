`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/12/01 23:34:22
// Design Name: 
// Module Name: up_down_counter
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


module up_down_counter(clk, A, B, C, D, x, up_down);
input clk, x, up_down;
output A, B, C, D;
assign Da0 = A & ~x | A & ~C & ~D & x | B & C & D & x;
assign Db0 = B & ~x | ~B & C & D & x | B & ~C & x | B & ~D & x;
assign Dc0 = C & ~x | ~A & ~C & D & x | C & ~D & x;
assign Dd0 = D & ~x | ~C & ~D & x | C & ~D & x; 

assign Da1 = A & ~x | ~A & ~B & ~C & ~D & x | A & D & x;
assign Db1 = B & ~x | B & D & x | A & ~D & x | B & C & x;
assign Dc1 = C & ~x | B & ~C & ~D & x | A & ~D & x | C & D & x;
assign Dd1 = D & ~x | ~D & x;

assign Da = up_down & Da1 | ~up_down & Da0;
assign Db = up_down & Db1 | ~up_down & Db0;
assign Dc = up_down & Dc1 | ~up_down & Dc0;
assign Dd = up_down & Dd1 | ~up_down & Dd0;

D_FF d1(A, Da, clk);
D_FF d2(B, Db, clk);
D_FF d3(C, Dc, clk);
D_FF d4(D, Dd, clk);

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
