`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/10/28 15:39:16
// Design Name: 
// Module Name: segment_tb
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

module segment_tb();

reg clk,a,b,c,d;
wire A,B,C,D,E,F,G;

segment connect(
    .a(a), .b(b), .c(c), .d(d),
    .A(A), .B(B), .C(C), .D(D), .E(E), .F(F), .G(G)
);

initial begin
    clk = 0 ; a = 0 ; b = 0 ; c = 0; d = 0;
end

always clk = #10 ~clk;
always @(posedge clk)begin
 d<= ~d;
 c <= #40 ~c;
 b <= #80 ~b;
 a <= #160 ~a;
 end

endmodule