`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.01.2023 21:34:00
// Design Name: 
// Module Name: all_gates_using_nand
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


module all_gates_using_nand(a,b,y_and,y_or,y_not,y_nor,y_xor,y_xnor);
input a,b;
output y_and,y_or,y_not,y_nor,y_xor,y_xnor;
wire w1,w2,w3,w4,w5,w6,w7,w8,w9,w10,w11,w12,w13,w14;

nand g1(w1,a,b);
nand g2(y_and,w1,w1);
nand g3(w2,a,a);
nand g4(w3,b,b);
nand g5(y_or,w2,w3);
nand g6(y_not,a,a);
nand g7(w4,a,a);
nand g8(w5,b,b);
nand g9(w6,w4,b);
nand g10(w7,w5,a);
nand g11(y_xor,w6,w7);
nand g12(w8,a,b);
nand g13(w9,a,a);
nand g14(w10,b,b);
nand g15(w11,w9,w10);
nand g16(y_xnor,w8,w11);
nand g17(w12,a,a);
nand g18(w13,b,b);
nand g19(w14,w12,w13);
nand g20(y_nor,w14,w14);


endmodule
