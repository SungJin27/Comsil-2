`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/10/07 22:29:20
// Design Name: 
// Module Name: de_morgan_1_b_tb
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


module de_morgan_1_b_tb;
reg aa, bb;
wire cc;

de_morgan_1_b u_de_morgan_1_b(
    .a(aa),
    .b(bb),
    .c(cc)    
    );
    
initial begin
aa = 1'b0; bb = 1'b0;
end

always #200 aa = ~aa;
always #100 bb = ~bb;

endmodule
