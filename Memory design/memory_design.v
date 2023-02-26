`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.01.2023 12:24:24
// Design Name: 
// Module Name: memory_design
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


module memory1 #(parameter DW=16, parameter AW=25)(
input clk,cs,wen,
input [AW-1:0]addr,
input [DW-1:0]wdata,
output reg [DW-1:0]rdata);
reg [DW-1:0]mem[0:(1<<AW)-1];
always@(posedge clk)
begin
    if (cs && wen)
        mem[addr]<=wdata;
end
always@(posedge clk)
begin
    if (cs && (!wen))
        rdata <= mem[addr];
end
endmodule
