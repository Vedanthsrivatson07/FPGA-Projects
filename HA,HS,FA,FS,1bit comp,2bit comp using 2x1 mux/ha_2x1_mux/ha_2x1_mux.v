`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.11.2022 20:23:21
// Design Name: 
// Module Name: ha_2x1_mux
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


module HA_using_2x1mux(a,b,cy,s);

input a,b;
output cy,s;
wire y_b;

mux_2x1 sum(.i({y_b,b}),.s(a),.y(s));
mux_2x1 carry(.i({b,1'b0}),.s(a),.y(cy));
mux_2x1 notb(.i({1'b0,1'b1}),.s(b),.y(y_b));

endmodule
