`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.11.2022 15:06:35
// Design Name: 
// Module Name: full_sub_mux_2x1
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


module full_sub_mux_2x1(a,b,c,bo,d);
input a,b,c;
output bo,d;

        mux_2x1 diff(.i({~(b^c),(b^c)}),.s(a),.y(d));
        mux_2x1 borrow(.i({(b&c),((b&(~c))|c)}),.s(a),.y(bo));
        
endmodule