`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.12.2022 22:42:31
// Design Name: 
// Module Name: prienc2x1_2x1mux
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


module prienc2x1_2x1mux(
input [1:0]i,
output y);

mux_2x1 m1({1'b1,1'b0},i[1],y);

endmodule
