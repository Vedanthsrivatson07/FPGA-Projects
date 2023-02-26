`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.01.2023 20:06:38
// Design Name: 
// Module Name: demux_1x2
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


module demux_1x2(input i,s, output [1:0]y);
wire w1,w2,w3;
nand n1(w1,s,s);
nand n2(w2,w1,i);
nand n3(w3,s,i);
nand n4(y[0],w2,w2);
nand n5(y[1],w3,w3);
endmodule
