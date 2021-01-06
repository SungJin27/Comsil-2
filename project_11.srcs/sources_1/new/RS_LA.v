`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/11/17 14:54:43
// Design Name: 
// Module Name: RS_LA
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

/*
module RS_LA(EN, R, S, Q, NQ);
input EN, R, S;
output Q, NQ;

reg Q, NQ;
initial begin
    Q = 0; NQ = 0;
end

always @(EN) begin
    if (R) begin
    NQ = ~(~(R&EN) & Q);
    Q = ~(~(S&EN) & NQ);
    //Q = NQ;
    end
    
    if (S) begin
    Q = ~(~(S&EN) & NQ);
    NQ = ~(~(R&EN) & Q);
    //NQ = Q;
    end
end
endmodule
*/
module RS_LA (en, r, s, q, nq);
input en, r, s;
output q, nq;
reg q, nq;
initial begin
	q = 0;
	nq = 0;
end

always @(en) begin
	if (r == 1) begin
		q = 0;
		nq = 1;
	end

	if (s == 1) begin
		q = 1;
		nq = 0;	
	end
end
endmodule