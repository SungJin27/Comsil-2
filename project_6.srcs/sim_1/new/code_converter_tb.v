`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/10/10 23:25:35
// Design Name: 
// Module Name: code_converter_tb
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


module code_converter_tb;
reg aa, bb, cc, dd;
wire ww_SOP, ww_POS, xx_SOP, xx_POS, yy_SOP, yy_POS, zz_SOP, zz_POS;

code_converter u_code_converter(
    .a(aa),
    .b(bb),
    .c(cc),
    .d(dd),
    .w_SOP(ww_SOP),
    .w_POS(ww_POS),
    .x_SOP(xx_SOP),
    .x_POS(xx_POS),
    .y_SOP(yy_SOP),
    .y_POS(yy_POS),
    .z_SOP(zz_SOP),
    .z_POS(zz_POS)
    );
    

initial begin
aa = 1'b0; bb = 1'b0; cc = 1'b0; dd = 1'b0;     //0000
end

always begin
#100 dd = ~dd;                                  //0001
#100 cc = ~cc; dd = ~dd;                        //0010
#100 dd = ~dd;                                  //0011
#100 bb = ~bb; cc = ~cc; dd = ~dd;              //0100
#100 dd = ~dd;                                  //0101
#100 cc = ~cc; dd = ~dd;                        //0110
#100 dd = ~dd;                                  //0111
#100 aa = ~aa; bb = ~bb; cc= ~cc; dd = ~dd;     //1000
#100 dd = ~dd;                                  //1001
end

endmodule
