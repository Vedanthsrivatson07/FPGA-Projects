`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.01.2023 22:55:54
// Design Name: 
// Module Name: fa_nor
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


module fa_nor(input a,b,c, output sum,cy );
wire w1,w2,w3,w4,w5,w6,w7;
nor n1(w1,a,b);
nor n2(w2,a,w1);
nor n3(w3,w1,b);
nor n4(w4,w2,w3);
nor n5(w5,w4,c);
nor n6(w6,w5,w4);
nor n7(w7,w5,c);
nor n8(sum,w6,w7);
nor n9(cy,w5,w1);
endmodule
