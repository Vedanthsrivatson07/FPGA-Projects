`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.11.2022 15:16:13
// Design Name: 
// Module Name: demux_1x2_using_2x1_mux_tb
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


module demux_1x2_using_2x1_mux_tb();
reg i,s;
 wire [1:0]y;
 
demux_1x2_using_2x1_mux dec1 (.i(i),.s(s),.y(y));
 
task inp(input x1,x);
 begin
     s=x1;
     i=x;
     #10;
 end
 endtask
 
 
     initial 
       begin
        $monitor("s=%d,  y[1]=%d,y[0]=%d",s,y[1],y[0]);
        inp(0,1);        
        inp(1,1);  
         $finish;
       end  
endmodule