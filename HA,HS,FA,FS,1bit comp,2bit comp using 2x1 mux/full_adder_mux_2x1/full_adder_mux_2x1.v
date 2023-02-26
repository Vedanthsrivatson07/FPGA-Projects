`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.11.2022 13:50:04
// Design Name: 
// Module Name: full_adder_mux_2x1
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


module full_adder_mux_2x1(a,b,c,cy,s);
input a,b,c;
output cy,s;
        
    mux_2x1 sum(.i({~(b^c),(b^c)}),.s(a),.y(s));
    mux_2x1 carry(.i({(b|c),b&c}),.s(a),.y(cy));
endmodule
