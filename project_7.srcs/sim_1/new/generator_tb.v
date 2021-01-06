`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/10/15 20:12:37
// Design Name: 
// Module Name: generator_tb
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


module generator_tb;
reg aa, bb, cc, dd;
wire pp;

generator u_generator(
    .a(aa),
    .b(bb),
    .c(cc),
    .d(dd),
    .p(pp)
    );
    
initial begin
aa = 1'b0; bb = 1'b0; cc = 1'b0; dd = 1'b0;
end

always #800 aa = ~aa;
always #400 bb = ~bb;
always #200 cc = ~cc;
always #100 dd = ~dd;

endmodule
