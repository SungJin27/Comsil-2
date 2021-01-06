`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/11/10 15:46:19
// Design Name: 
// Module Name: sub4bit_tb
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

module sub4bit_tb();
reg clk, bi ;reg [3:0] A, B;
wire [3:0] d; wire bo;
four_bit_subtractor connect(A, B, bi, d, bo);
initial begin
clk=0; B[0]=1; B[1]=0; B[2]=1; B[3]=0;
bi=1; A[3]=0; A[2]=0; A[1]=0; A[0]=0;
end
always clk = #10 ~clk;
always @(posedge clk) begin
bi <= ~bi;
A[0] <= #39.999 ~A[0];
A[1] <= #79.999 ~A[1];
A[2] <= #159.999 ~A[2];
A[3] <= #319.999 ~A[3];
end
endmodule
