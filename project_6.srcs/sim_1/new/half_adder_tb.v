`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/10/10 22:35:42
// Design Name: 
// Module Name: half_adder_tb
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


module half_adder_tb;
reg aa, bb;
wire ccarry, ssum;

half_adder u_half_adder(
    .a(aa),
    .b(bb),
    .carry(ccarry),
    .sum(ssum)
    );
    
initial begin
aa = 1'b0; bb = 1'b0;
end

always #200 aa = ~aa;
always #100 bb = ~bb;

endmodule
