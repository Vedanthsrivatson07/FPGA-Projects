`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.11.2022 14:05:17
// Design Name: 
// Module Name: all_gates_8x1mux
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


module all_gates_8x1mux(a,b,y_and,y_or,y_not,y_nand,y_nor,y_xor,y_xnor,c);

input a,b;
input [2:0]c;
output y_and,y_or,y_not,y_nand,y_nor,y_xor,y_xnor;


mux_8x1 m1_and_inst(.i(8'bx1x0x0x0),.s({a,b,1'b0}),.y(y_and));
mux_8x1 m2_or_inst(.i(8'bx1x1x1x0),.s({a,b,1'b0}),.y(y_or));
mux_8x1 m3_not_inst(.i(8'bxxx0xxx1),.s({a,1'b0,1'b0}),.y(y_not));
mux_8x1 m4_nand_inst(.i(8'bx0x1x1x1),.s({a,b,1'b0}),.y(y_nand));
mux_8x1 m5_nor_inst(.i(8'bx0x0x0x1),.s({a,b,1'b0}),.y(y_nor));
mux_8x1 m6_xor_inst(.i(8'bx0x1x1x0),.s({a,b,1'b0}),.y(y_xor));
mux_8x1 m7_xnor_inst(.i(8'bx1x0x0x1),.s({a,b,1'b0}),.y(y_xnor));


endmodule