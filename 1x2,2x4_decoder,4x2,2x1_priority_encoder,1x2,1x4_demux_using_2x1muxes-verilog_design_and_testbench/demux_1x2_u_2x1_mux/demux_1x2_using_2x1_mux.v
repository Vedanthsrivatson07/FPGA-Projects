`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.11.2022 14:05:28
// Design Name: 
// Module Name: demux_1x2_using_2x1_mux
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


module demux_1x2_using_2x1_mux(i,s,y);

input i,s;
output [1:0]y;

mux_2x1 #(.N(2))demux(.a({i,1'bz}),.b({1'bz,i}),.s(s),.y(y));

endmodule