`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.12.2022 22:49:19
// Design Name: 
// Module Name: pencoder_4x2_mux
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


module pencoder_4x2_mux(
input [3:0]i, output [1:0]y);
wire w1;

mux_2x1 m1({1'b1,i[2]},i[3],y[1]);
mux_2x1 m2({1'b0,i[1]},i[2],w1);
mux_2x1 m3({1'b1,w1},i[3],y[0]);
 
endmodule
