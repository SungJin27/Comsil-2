`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/11/01 12:27:45
// Design Name: 
// Module Name: mux_tb
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


module mux_tb;
reg S0, S1, S2;
wire D0, D1, D2, D3, D4, D5, D6, D7;

mux u_mux(
    .s0(S0),
    .s1(S1),
    .s2(S2),
    .d0(D0),
    .d1(D1),
    .d2(D2),
    .d3(D3),
    .d4(D4),
    .d5(D5),
    .d6(D6),
    .d7(D7)
    );
    
initial begin
    S0 = 1'b0; S1 = 1'b0; S2 = 1'b0;
end

always #100 S2 = !S2;
always #200 S1 = !S1;
always #400 S0 = !S0;

endmodule
