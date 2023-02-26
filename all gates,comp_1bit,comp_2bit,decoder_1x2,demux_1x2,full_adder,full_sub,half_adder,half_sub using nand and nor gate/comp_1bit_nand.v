`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.01.2023 16:25:08
// Design Name: 
// Module Name: comp_1bit_nand
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


module comp_1bit_nand(input a,b, output l,e,g );
wire w1,w2,w3,w4;
nand n1(w1,a,b);
nand n2(w2,a,w1);
nand n3(w3,b,w1);
nand n4(w4,w2,w3);
nand n5(g,w2,w2);
nand n6(e,w4,w4);
nand n7(l,w3,w3);
endmodule
