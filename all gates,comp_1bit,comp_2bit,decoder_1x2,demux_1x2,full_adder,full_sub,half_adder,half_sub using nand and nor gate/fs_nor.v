`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.01.2023 22:27:24
// Design Name: 
// Module Name: fs_nor
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


module fs_nor(input a,b,c, output dif,bo );
wire w1,w2,w3,w4,w5,w6,w7;
nor n1(w1,a,b);
nor n2(w2,a,w1);
nor n3(w3,w1,b);
nor n4(w4,w2,w3);
nor n5(w5,w4,c);
nor n6(w6,w4,w5);
nor n7(w7,w5,c);
nor n8(dif, w6,w7);
nor n9(bo,w3,w7);
endmodule
