`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.11.2022 10:32:40
// Design Name: 
// Module Name: d_ff tb
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


module d_ff_tb();
reg d,clk,rst;
wire q,qbar;

dflipflop d_dut(d,clk,rst,q,qbar);
//clk generation
always #5clk=!clk;
initial clk=0;
initial
    begin 
        rst=1;
        #20;
        rst=0;
        #20;
        
    {d}={1'b0,1'b0};#10;
    $display ("clk=%d,rst=%d,d=%d,q=%d,qbar=%d",clk,rst,d,q,qbar);
    {d}={1'b0,1'b1};#10;
    $display ("clk=%d,rst=%d,d=%d,q=%d,qbar=%d",clk,rst,d,q,qbar);
    {d}={1'b1,1'b0};#10;
    $display ("clk=%d,rst=%d,d=%d,q=%d,qbar=%d",clk,rst,d,q,qbar);
    {d}={1'b1,1'b1};#10;
    $display ("clk=%d,rst=%d,d=%d,q=%d,qbar=%d",clk,rst,d,q,qbar);
    $finish();
    end
    endmodule    


