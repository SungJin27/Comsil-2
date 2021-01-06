`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/10/10 23:25:15
// Design Name: 
// Module Name: code_converter
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


module code_converter(
    input a,
    input b,
    input c,
    input d,
    output w_SOP,
    output w_POS,
    output x_SOP,
    output x_POS,
    output y_SOP,
    output y_POS,
    output z_SOP,
    output z_POS
    );

//assign w_SOP = ~a & b & d | ~a & b & c & ~d | a & ~b & ~c;
assign w_SOP = ~(~(~(~(~(a&a) & b & d) & ~(~(a&a) & b & d)) & ~(~(~(a&a) & b & d) & ~(~(a&a) & b & d))) & ~(~(~(~(a&a) & b & c & ~(d&d)) & ~(~(a&a) & b & c & ~(d&d))) & ~(~(~(a&a) & b & c & ~(d&d)) & ~(~(a&a) & b & c & ~(d&d)))) & ~(~(~(a & ~(b&b) & ~(c&c)) & ~(a & ~(b&b) & ~(c&c))) & ~(~(a & ~(b&b) & ~(c&c)) & ~(a & ~(b&b) & ~(c&c)))));
//assign w_POS = (a | b) & (a | ~b | c | d);
assign w_POS = ~(~(~(~(a&a) & ~(b&b)) & ~(~(a&a) & b & ~(c&c) & ~(d&d))) & ~(~(~(a&a) & ~(b&b)) & ~(~(a&a) & b & ~(c&c) & ~(d&d))));

//assign x_SOP = ~a & b & ~c & ~d | ~a & b & c | a & ~b & ~c; 
assign x_SOP = ~(~(~(~(~(a&a) & b & ~(c&c) & ~(d&d) & ~(a&a) & b & ~(c&c) & ~(d&d)) & ~(~(a&a) & b & ~(c&c) & ~(d&d) & ~(a&a) & b & ~(c&c) & ~(d&d))) & ~(~(~(a&a) & b & ~(c&c) & ~(d&d) & ~(a&a) & b & ~(c&c) & ~(d&d)) & ~(~(a&a) & b & ~(c&c) & ~(d&d) & ~(a&a) & b & ~(c&c) & ~(d&d)))) & ~(~(~(~(a&a) & b & c | a & ~(b&b) & ~(c&c) & ~(a&a) & b & c | a & ~(b&b) & ~(c&c)) & ~(~(a&a) & b & c | a & ~(b&b) & ~(c&c) & ~(a&a) & b & c | a & ~(b&b) & ~(c&c))) & ~(~(~(a&a) & b & c | a & ~(b&b) & ~(c&c) & ~(a&a) & b & c | a & ~(b&b) & ~(c&c)) & ~(~(a&a) & b & c | a & ~(b&b) & ~(c&c) & ~(a&a) & b & c | a & ~(b&b) & ~(c&c)))));
//assign x_POS = (a | b) & (a | ~b | c | ~d);
assign x_POS = ~(~(~(~(a&a) & ~(b&b)) & ~(~(a&a) & b & ~(c&c) & d)) & ~(~(~(a&a) & ~(b&b)) & ~(~(a&a) & b & ~(c&c) & d)));

//assign y_SOP = ~a & ~b & c | ~a & b & ~c & d | a & ~b & ~c;
assign y_SOP = ~(~(~(~(~(a&a) & ~(b&b) & c) & ~(~(a&a) & ~(b&b) & c)) & ~(~(~(a&a) & ~(b&b) & c) & ~(~(a&a) & ~(b&b) & c))) & ~(~(~(~(a&a) & b & ~(c&c) & d) & ~(~(a&a) & b & ~(c&c) & d)) & ~(~(~(a&a) & b & ~(c&c) & d) & ~(~(a&a) & b & ~(c&c) & d))) & ~(~(~(a & ~(b&b) & ~(c&c)) & ~(a & ~(b&b) & ~(c&c))) & ~(~(a & ~(b&b) & ~(c&c)) & ~(a & ~(b&b) & ~(c&c)))));
//assign y_POS = (a | b | c) & (a | ~b | c | d) & (a | ~b | ~c);
assign y_POS = ~(~(~(~(a&a) & ~(b&b) & ~(c&c)) & ~(~(a&a) & b & ~(c&c) & ~(d&d)) & ~(~(a&a) & b & c)) & ~(~(~(a&a) & ~(b&b) & ~(c&c)) & ~(~(a&a) & b & ~(c&c) & ~(d&d)) & ~(~(a&a) & b & c)));

//assign z_SOP = ~a & d | a & ~b & ~c & d;
assign z_SOP = ~(~(~(~(~(a&a) & d) &~(~(a&a) & d)) & ~(~(~(a&a) & d) &~(~(a&a) & d))) & ~(~(~(a & ~(b&b) & ~(c&c) & d) & ~(a & ~(b&b) & ~(c&c) & d)) & ~(~(a & ~(b&b) & ~(c&c) & d) & ~(a & ~(b&b) & ~(c&c) & d))));
//assign z_POS = (a | d) & (~a | b | c | d);
assign z_POS = ~(~(~(~(a&a) & ~(d&d)) & ~(a & ~(b&b) & ~(c&c) & ~(d&d))) & ~(~(~(a&a) & ~(d&d)) & ~(a & ~(b&b) & ~(c&c) & ~(d&d))));

endmodule
