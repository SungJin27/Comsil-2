`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/10/10 23:07:32
// Design Name: 
// Module Name: half_subtractor_tb
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


module half_subtractor_tb;
reg aa, bb;
wire bborrow, ddifference;

half_subtractor u_half_subtractor(
    .a(aa),
    .b(bb),
    .borrow(bborrow),
    .difference(ddifference)
    );
    
initial begin
aa = 1'b0; bb = 1'b0;
end

always #200 aa = ~aa;
always #100 bb = ~bb; 

endmodule
