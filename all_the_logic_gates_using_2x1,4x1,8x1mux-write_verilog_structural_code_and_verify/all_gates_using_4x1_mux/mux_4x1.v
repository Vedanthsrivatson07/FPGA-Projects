`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.11.2022 13:51:59
// Design Name: 
// Module Name: mux_4x1
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


module mux_4x1(i,s,y);

input [3:0]i;
input [1:0]s;
output reg y;

always @(*)
begin
    case(s)
        
        2'b00 : y = i[0];
        2'b01 : y = i[1];
        2'b10 : y = i[2];
        2'b11 : y = i[3];
        default : begin end
        
    endcase
end

endmodule
