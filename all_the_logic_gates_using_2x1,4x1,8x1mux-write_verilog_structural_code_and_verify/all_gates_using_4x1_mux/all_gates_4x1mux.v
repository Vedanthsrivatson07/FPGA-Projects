`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.11.2022 15:13:14
// Design Name: 
// Module Name: all_gates_4x1mux
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


module all_gates_4x1mux(a,b,y_and,y_or,y_not,y_nand,y_nor,y_xor,y_xnor);

input a,b;
output y_and,y_or,y_not,y_nand,y_nor,y_xor,y_xnor;

mux_4x1 dut1(.i(4'b1000),.s({a,b}),.y(y_and));
mux_4x1 dut2(.i(4'b1110),.s({a,b}),.y(y_or));
mux_4x1 dut3(.i(4'bxx01),.s({0,a}),.y(y_not));
mux_4x1 dut4(.i(4'b0111),.s({a,b}),.y(y_nand));
mux_4x1 dut5(.i(4'b0001),.s({a,b}),.y(y_nor));
mux_4x1 dut6(.i(4'b0110),.s({a,b}),.y(y_xor));
mux_4x1 dut7(.i(4'b1001),.s({a,b}),.y(y_xnor));


endmodule
