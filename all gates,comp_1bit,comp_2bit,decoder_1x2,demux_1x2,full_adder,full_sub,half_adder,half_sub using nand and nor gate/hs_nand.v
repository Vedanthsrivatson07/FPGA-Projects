`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.01.2023 22:27:14
// Design Name: 
// Module Name: hs_nand
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


 module hs_nand(
input a,b, output diff,bo );

wire w1,w2,w3;

nand n1(w1,a,b);
nand n2(w2,a,w1);
nand n3(w3,b,w1);
nand n4(diff,w2,w3);
nand n5(bo,w3,w3);

endmodule
