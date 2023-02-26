`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/17/2022 07:32:35 AM
// Design Name: 
// Module Name: comp_1bit_u_2x1mux
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

module comp_1bit_u_2x1mux(a,b,l,e,g);

input a,b;
output l,e,g;

wire y_e;

mux_2x1 less(.i({1'b0,b}),.s(a),.y(l));
mux_2x1 greater(.i({1'b0,a}),.s(b),.y(g));

mux_2x1 equal(.i({a,y_e}),.s(b),.y(e));
mux_2x1 equal_not(.i({1'b0,1'b1}),.s(a),.y(y_e));

endmodule
