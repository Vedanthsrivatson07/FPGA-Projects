`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.01.2023 21:56:55
// Design Name: 
// Module Name: all_gates_using_nor
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


module all_gates_using_nor(a,b,y_and,y_or,y_not,y_nand,y_xor,y_xnor);
input a,b;
output y_and,y_or,y_not,y_nand,y_xor,y_xnor;
wire w1,w2,w3,w4,w5,w6,w7,w8,w9,w10,w11,w12,w13,w14,w15,w16;

nor g1(w1,a,a);
nor g2(w2,b,b);
nor g3(y_and,w1,w2);
nor g4(w3,a,b);
nor g5(y_or,w3,w3);
nor g6(w7,b,b);
nor g7(w8,a,a);
nor g8(w9,a,w7);
nor g9(w10,b,w8);
nor g10(w16,w9,w10);
nor g11(w11,a,a);
nor g12(w12,b,b);
nor g13(w13,w11,w12);
nor g14(w14,a,b);
nor g15(w15,w13,w14);
nor g16(y_xnor,w15,w15);
nor g17(w4,a,a);
nor g18(w5,b,b);
nor g19(w6,w4,w5);
nor g20(y_nand,w6,w6);
nor g21(y_not,a,a);
nor g22(y_xor,w16,w16);
endmodule
