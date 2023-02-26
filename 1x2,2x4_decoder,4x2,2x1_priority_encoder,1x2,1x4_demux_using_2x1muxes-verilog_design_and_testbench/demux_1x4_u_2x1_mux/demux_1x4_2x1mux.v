`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.12.2022 22:34:22
// Design Name: 
// Module Name: demux_1x4_2x1mux
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


module demux_1x4_2x1mux(
input i,[1:0]s,
output [3:0]y);
wire w,w1,w2,w3;

mux_2x1 m1({1'b0,i},s[1],w);
mux_2x1 m2({1'b0,w},s[0],y[0]);
mux_2x1 m3({i,1'b0},s[0],w1);
//mux_2x1 m4({w1,1'b0},s[1],y[1]);
mux_2x1 m4({1'b0,w1},s[1],y[1]);
mux_2x1 m5({i,1'b0},s[1],w2);
mux_2x1 m6({1'b0,w2},s[0],y[2]);
mux_2x1 m7({i,1'b0},s[1],w3);
mux_2x1 m8({w3,1'b0},s[0],y[3]);

endmodule
