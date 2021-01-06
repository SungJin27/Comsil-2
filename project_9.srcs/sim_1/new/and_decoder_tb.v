`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/11/01 09:11:19
// Design Name: 
// Module Name: and_decoder_tb
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


module and_decoder_tb;
reg A, B;
wire D0, D1, D2, D3;

and_decoder u_and_decoder(
    .a(A),
    .b(B),
    .d0(D0),
    .d1(D1),
    .d2(D2),
    .d3(D3)
    );
    
initial begin
    A = 1'b0; B = 1'b0;
end

always #100 B = !B;
always #200 A = !A;
endmodule
