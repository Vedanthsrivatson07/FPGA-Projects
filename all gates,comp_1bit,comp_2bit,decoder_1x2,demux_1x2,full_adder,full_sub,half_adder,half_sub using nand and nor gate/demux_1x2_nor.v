`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.01.2023 20:22:55
// Design Name: 
// Module Name: demux_1x2_nor
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


module demux_1x2_nor(input i,s, output [1:0]y);
wire w1,w2;
nor n1(w1,i,i);
nor n2(w2,s,s);
nor n3(y[0],s,w1);
nor n4(y[1],w2,w1);
endmodule
