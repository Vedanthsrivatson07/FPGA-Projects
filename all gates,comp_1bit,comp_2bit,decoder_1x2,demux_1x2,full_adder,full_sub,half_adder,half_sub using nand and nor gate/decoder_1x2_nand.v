`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.01.2023 16:42:44
// Design Name: 
// Module Name: decoder_1x2_nand
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


module decoder_1x2_nand(input i, output [1:0]y );
wire w1;
nand n1(y[0],i,i);
nand n2(y[1],y[0],y[0]);
endmodule
