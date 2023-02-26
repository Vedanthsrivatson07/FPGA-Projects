`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.11.2022 12:40:58
// Design Name: 
// Module Name: tb
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


module tb();
reg a,b,c;
wire bo,d;
full_sub_mux_2x1 dut2(a,b,c,bo,d);
 
task inp(input x,y,z);
 begin
     a=x;
     b=y;
     c=z;
     #10;
 end
 endtask
     initial 
       begin
        $monitor("a=%d,b=%d,c=%d,bo=%d,d=%d",a,b,c,bo,d);
        inp(0,0,0);         
        inp(0,0,1);         
        inp(0,1,0);         
        inp(0,1,1);                  
        inp(1,0,0);         
        inp(1,0,1);         
        inp(1,1,0);         
        inp(1,1,1);       
         $finish;
       end 
endmodule