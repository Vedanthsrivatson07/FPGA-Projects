`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.12.2022 23:30:20
// Design Name: 
// Module Name: dec_2x4_2x1mux
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


module dec_2x4_2x1mux(
input [1:0]i,
output [3:0]y);
wire w1,w2;
mux_2x1 m1({i[1],1'b0},i[0],y[3]);
mux_2x1 m2({1'b0,i[1]},i[0],y[2]);
mux_2x1 m3({1'b0,1'b1},i[1],w1);
mux_2x1 m4({w1,1'b0},i[0],y[1]);

mux_2x1 m5({1'b0,1'b1},i[1],w2);
mux_2x1 m6({1'b0,w2},i[0],y[0]);

endmodule
