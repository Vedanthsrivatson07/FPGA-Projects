`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.12.2022 23:22:01
// Design Name: 
// Module Name: dec_1x2_u_2x1_mux
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


module dec_1x2_u_2x1_mux(
input i,
output[1:0]y);

mux_2x1 m1({1'b0,1'b1},i,y[0]);
mux_2x1 m2({1'b1,1'b0},i,y[1]);

endmodule
