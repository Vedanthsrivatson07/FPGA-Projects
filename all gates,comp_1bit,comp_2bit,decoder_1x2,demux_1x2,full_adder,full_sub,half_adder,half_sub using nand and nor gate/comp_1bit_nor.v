`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.01.2023 16:34:15
// Design Name: 
// Module Name: comp_1bit_nor
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


module comp_1bit_nor(input a,b, output l,e,g );
wire w1,w2;
nor n1(w1,b,b);
nor n2(l,a,w1);
nor n3(w2,a,a);
nor n4(g,b,w2);
nor n5(e,l,g);
endmodule
