`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/10/07 22:46:59
// Design Name: 
// Module Name: boolean_function_1_b_tb
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


module boolean_function_1_b_tb;
reg aa, bb, cc;
wire dd;

boolean_function_1_b u_boolean_function_1(
    .a(aa),
    .b(bb),
    .c(cc),
    .d(dd)
    );
    
initial begin
aa = 1'b0; bb = 1'b0; cc = 1'b0;
end

always #400 aa = ~aa;
always #200 bb = ~bb;
always #100 cc = ~cc;

endmodule
