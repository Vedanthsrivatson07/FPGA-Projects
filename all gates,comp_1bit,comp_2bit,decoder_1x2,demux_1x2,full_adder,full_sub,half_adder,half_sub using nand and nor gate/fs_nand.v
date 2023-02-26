`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.01.2023 22:19:35
// Design Name: 
// Module Name: fs_nand
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


module fs_nand(input a,b,c,output dif,bo );
wire w1,w2,w3,w4,w5,w6,w7;
nand n1(w1,a,b);
nand n2(w2,a,w1);
nand n3(w3,b,w2);
nand n4(w4,w2,w3);
nand n5(w5,w4,c);
nand n6(w6,w4,w5);
nand n7(w7,w5,c);
nand n8(dif,w6,w7);
nand n9(bo,w3,w7);
endmodule
