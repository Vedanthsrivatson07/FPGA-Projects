`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.11.2022 14:41:25
// Design Name: 
// Module Name: all_gates_2x1_mux
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


module all_gates_2x1_mux(input a,b,output y_and,y_or,y_not,y_nand,y_nor,y_xor,y_xnor);

mux2x1 m1(.s(a),.i({b,1'b0}),.y(y_and));
mux2x1 m2(.s(a),.i({1'b1,b}),.y(y_or));
mux2x1 m3(.s(a),.i({0,1'b1}),.y(y_not));
mux2x1 m4(.s(a),.i({(~b),1'b1}),.y(y_nand));
mux2x1 m5(.s(a),.i({1'b0,(~b)}),.y(y_nor));
mux2x1 m6(.s(a),.i({(~b),b}),.y(y_xor));
mux2x1 m7(.s(a),.i({b,(~b)}),.y(y_xnor));


endmodule
