`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.01.2023 22:46:49
// Design Name: 
// Module Name: fa_nand
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


module fa_nand(input a,b,c, output sum,cy );
wire w1,w2,w3,w4,w5,w6,w7;
nand n1(w1,a,b);
nand n2(w2,a,w1);
nand n3(w3,w1,b);
nand n4(w4,w3,w2);
nand n5(w5,w4,c);
nand n6(w6,w4,w5);
nand n7(w7,w5,c);
nand n8(sum,w6,w7);
nand n9(cy,w5,c);
endmodule
