`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/11/30 13:37:43
// Design Name: 
// Module Name: ring_counter
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
module ring_counter(clk, x, reset, A, B, C, D);
input clk, x, reset;
output A, B, C, D;
assign Da = A & ~B & ~C & ~D & ~x | ~A & ~B & ~C & D & x;
assign Db = ~A & B & ~C & ~D & ~x | A & ~B & ~C & ~D & x;
assign Dc = ~A & ~B & C & ~D & ~x | ~A & B & ~C & ~D & x;
assign Dd = ~A & ~B & ~C & D & ~x | ~A & ~B & C & ~D & x; 

D_FF d3(D, Dd, clk);
D_FF d2(C, Dc, clk);
D_FF d1(B, Db, clk);
D_FFF d0(A, Da, clk, reset);
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

module D_FFF(Q, D, CLK, RESET);
input D, CLK, RESET;
output Q;
reg Q, NQ;
initial begin
Q = 0;
NQ = 0;
end
always @(posedge CLK) begin
    if (RESET == 1'b1) begin
        Q <= 1'b1;
        NQ <= 1'b0;
    end
    
    else begin
        Q <= D;
        NQ <= ~D;
    end
end
endmodule
*/
module ring_counter(clk, reset, A, B, C, D);
input clk, reset;
output A, B, C, D;

D_FF0 d0(A, D, clk, reset);
D_FF1 d1(B, A, clk, reset);
D_FF1 d2(C, B, clk, reset);
D_FF1 d3(D, C, clk, reset);

endmodule

module D_FF0(Q, D, CLK, reset);
input D, CLK, reset;
output Q;
reg Q;

initial begin
Q = 0;
end

always @(posedge CLK) begin
    if (reset == 1) begin
        Q = 1;
    end
    
    else Q <= D;
end
endmodule

module D_FF1(Q, D, CLK, reset);
input D, CLK, reset;
output Q;
reg Q;

initial begin
Q = 0;
end

always @(posedge CLK) begin
    if (reset == 1) begin
        Q = 0;
    end
    
    else Q <= D;
end
endmodule