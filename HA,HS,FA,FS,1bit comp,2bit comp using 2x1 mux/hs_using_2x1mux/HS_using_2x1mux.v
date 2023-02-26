`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/17/2022 06:47:56 AM
// Design Name: 
// Module Name: HS_using_2x1mux
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


module HS_using_2x1mux(a,b,d,b0);

input a,b;
output d,b0;
wire y_d;

mux_2x1 diff(.i({y_d,b}),.s(a),.y(d));
mux_2x1 borrow(.i({1'b0,b}),.s(a),.y(b0));
mux_2x1 notb(.i({1'b0,1'b1}),.s(b),.y(y_d));

endmodule
