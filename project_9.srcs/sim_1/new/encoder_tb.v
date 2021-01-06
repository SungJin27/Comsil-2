`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/11/01 11:59:25
// Design Name: 
// Module Name: encoder_tb
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


module encoder_tb;
reg A, B, C, D;
wire E0, E1;

encoder u_encoder(
    .a(A),
    .b(B),
    .c(C),
    .d(D),
    .e0(E0),
    .e1(E1)
    );
    
initial begin
    A = 1'b0; B = 1'b0; C = 1'b0; D = 1'b1;
end

always begin    
#100 begin D = !D; C = !C; end
#100 begin C = !C; B = !B; end
#100 begin B = !B; A = !A; end
end
endmodule
