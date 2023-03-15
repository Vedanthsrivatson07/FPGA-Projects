`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.03.2023 21:29:26
// Design Name: 
// Module Name: clock divider
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

module clockdivider(clk,divideby2,divideby4,divideby8,rst);
input clk,rst;
reg [3:0]count;
output divideby2,divideby4,divideby8;
reg divideby2,divideby4,divideby8;
always@(posedge clk)
begin
if(rst==0)
count=4'b0000;
else
count=count+1;
divideby2=count[1];
divideby4=count[2];
divideby8=count[3];
end
endmodule