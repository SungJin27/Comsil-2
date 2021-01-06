`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/09/30 14:21:59
// Design Name: 
// Module Name: three_input_aoi_gate_tb
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


module three_input_aoi_gate_tb;
reg aa, bb, cc;
wire dd, ee;

three_input_aoi_gate u_three_input_aoi_gate(
    .a(aa),
    .b(bb),
    .c(cc),
    .d(dd),
    .e(ee)
    );
    
initial begin
aa = 1'b0; bb = 1'b0; cc = 1'b0;
end

always #400 aa = ~aa;
always #200 bb = ~bb;
always #100 cc = ~cc;
endmodule
