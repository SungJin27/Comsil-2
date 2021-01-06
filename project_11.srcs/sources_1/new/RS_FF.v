`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/11/17 00:36:15
// Design Name: 
// Module Name: RS_FF
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

module RS_FF(CLK, R, S, Q, NQ);
input CLK, R, S;
output Q, NQ;
reg Q, NQ;
initial begin
Q=0;
NQ=0;
end
always @(posedge CLK) begin
    if (R==0 & S==1) begin
    Q <= 1;
    NQ <= 0;
    end
    else if (R==1 & S==0) begin
    Q <= 0;
    NQ <= 1;
    end
    else if (R==0 & S==0) begin
    Q <= Q;
    NQ <= NQ;
    end
    else begin
    Q <= 1;
    NQ <= 1;
    end
end    
endmodule