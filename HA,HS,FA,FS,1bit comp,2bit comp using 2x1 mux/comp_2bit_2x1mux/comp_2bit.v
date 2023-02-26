`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.11.2022 08:07:17
// Design Name: 
// Module Name: comp_2bit
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


module comp_2bit( input [1:0]a, [1:0]b,  output l,e,g  );

wire w1,w2,w3,w4,w5,w6,w7,w8,w9,w10,w11,w12,w13,w14,w15,w16,w17,w18;

mux_2x1 m1({1'b1,b[0]},b[1],w1);
mux_2x1 m2({1'b1,1'b0},b[1],w2);
mux_2x1 m3({b[0],1'b0},b[1],w3);
mux_2x1 m4({w2,w1},a[0],w4);
mux_2x1 m5({1'b0,w3},a[0],w5);
mux_2x1 m6({w5,w4},a[1],l);

mux_2x1 m7({1'b0,1'b1},b[0],w6);
mux_2x1 m8({1'b0,w6},b[1],w7);
mux_2x1 m9({1'b0,b[0]},b[1],w8);
mux_2x1 m10({w6,1'b0},b[1],w9);
mux_2x1 m11({b[0],1'b0},b[1],w10);
mux_2x1 m12({w8,w7},a[0],w11);
mux_2x1 m13({w10,w9},a[0],w12);
mux_2x1 m14({w12,w11},a[1],e);

mux_2x1 m15({1'b0,1'b1},b[0],w13);
mux_2x1 m16({1'b0,w13},b[1],w14);
mux_2x1 m17({1'b0,1'b1},b[1],w15);
mux_2x1 m18({w13,1'b1},b[1],w16);
mux_2x1 m19({w14,1'b0},a[0],w17);
mux_2x1 m20({w16,w15},a[0],w18);
mux_2x1 m21({w18,w17},a[1],g);

endmodule
