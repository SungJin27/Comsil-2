`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/11/17 00:40:35
// Design Name: 
// Module Name: JK_FF
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

module JK_FF(J,K,Q,NQ,CLK);
input J,K,CLK;
output Q,NQ;
reg Q,NQ;
initial begin
Q=0;
NQ=0;
end

always @(posedge CLK) begin
    if (J==0 & K==0) begin
        Q <= Q;
        NQ <= NQ;
    end
    else if (J==1 & K==0) begin
        Q <= 1;
        NQ <= 0;
    end
    else if (J==0 & K==1) begin
        Q <= 0;
        NQ <= 1;
    end
    else begin
        Q <= !Q;
        NQ <= !NQ;
    end
end
endmodule