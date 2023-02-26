`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/17/2022 06:48:42 AM
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
 reg  a,b;
wire d,b0;

HS_using_2x1mux dut (a,b,d,b0);


    initial 
      begin
//        $monitor("a=%d,b=%d, y_and=%d, y_or=%d, y_not=%d, y_nand=%d, y_nor=%d, y_xor=%d, y_xnor=%d",a,b,y_and,y_or,y_not,y_nand,y_nor,y_xor,y_xnor);
       repeat (8)
       begin
       {a,b} = $random(); #10
       $display("a=%d,b=%d, d=%d, b0=%d",a,b,d,b0);
//        inp(0,0);         
//        inp(0,1);         
//        inp(1,0);         
//        inp(1,1);            
      end
      end  
endmodule
