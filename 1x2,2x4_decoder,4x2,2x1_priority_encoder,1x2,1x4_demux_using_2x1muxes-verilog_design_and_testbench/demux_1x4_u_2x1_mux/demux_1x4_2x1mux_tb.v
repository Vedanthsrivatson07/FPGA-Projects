`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.12.2022 22:35:30
// Design Name: 
// Module Name: demux_1x4_2x1mux_tb
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


module demux_1x4_2x1mux_tb();
reg i;
reg  [1:0]s;
wire [3:0]y;
demux_1x4_2x1mux inst1(i,s,y);

task  inp(input x,input [1:0]x1);
begin
    i=x;
    s=x1;   #10;
    end
    endtask
    
task ch_op(input [3:0]a);
   begin
     if (y==a)
      $display("test passed");
     else
      $display("test failed");
    end
    endtask
    
    
task demux_inp_ch(input i,input [1:0]s,input [3:0]a);
    begin 
        inp(i,s);
        ch_op(a);
    end
    endtask
    
initial
    begin
    $monitor("i=%d,s=%d,y=%d ",i,s,y);
    demux_inp_ch(1,0,1);
    demux_inp_ch(1,1,2);
    demux_inp_ch(1,2,4);
    demux_inp_ch(1,3,8);
    $finish;
    end
endmodule
