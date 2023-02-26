`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.12.2022 22:43:16
// Design Name: 
// Module Name: prien2x1_2x1mux_tb
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


module prien2x1_2x1mux_tb();
reg [1:0]i;
wire y;
prienc2x1_2x1mux inst1(i,y);

task  inp(input x1,x2);
begin
    i[1]=x1;
    i[0]=x2;   #10;
    end
    endtask
    
task ch_op(input q);
   begin
     if (y==q)
      $display("test passed");
     else
      $display("test failed");
    end
    endtask
    
    
task prienc_inp_ch([1:0]i,y);
    begin 
        inp(i[1],i[0]);
        ch_op(y);
    end
    endtask
    
initial
    begin
    $monitor("i=%d,y=%d",i,y);
    prienc_inp_ch({1'b1,1'bx},1);
    prienc_inp_ch({1'b0,1'b1},0);
    $finish;
    end
endmodule
