`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.12.2022 23:23:08
// Design Name: 
// Module Name: dec_1x2_u_2x1_mux_tb
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


module dec_1x2_u_2x1_mux_tb();
reg i;
wire [1:0] y;
dec_1x2_u_2x1_mux inst1(i,y);

task  inp(input x);
begin
    i=x;       #10;
    end
    endtask
   
task ch_op(input [1:0]q);
   begin
     if (y==q)
      $display("test passed");
     else
      $display("test failed");
         end
         endtask
        
        
task decoder_inp_ch(i,[1:0]y);
   begin
     inp(i);
     ch_op(y);
     end
     endtask
     
     initial
         begin
         $display("i=%d,y=%d",i,y);
         decoder_inp_ch(0,1);
         decoder_inp_ch(1,2);
         $finish;
         end
endmodule
