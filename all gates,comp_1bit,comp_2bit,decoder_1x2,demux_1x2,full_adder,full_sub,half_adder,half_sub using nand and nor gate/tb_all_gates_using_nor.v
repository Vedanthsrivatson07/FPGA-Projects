`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.01.2023 22:14:41
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
wire y_and,y_or,y_not,y_nand,y_xor,y_xnor;

all_gates_using_nor dut1 (a,b,y_and,y_or,y_not,y_nand,y_xor,y_xnor);

task inp(input x1,x2);
 begin
     a=x1;
     b=x2;
     #10;
      end
     endtask
     
     initial 
            begin
             $monitor("a=%d,b=%d, y_and=%d, y_or=%d, y_not=%d, y_nand=%d, y_xor=%d, y_xnor=%d",a,b,y_and,y_or,y_not,y_nand,y_xor,y_xnor);
             inp(0,0);         
             inp(0,1);         
             inp(1,0);         
             inp(1,1);                  
     
              $finish;
            end 
endmodule
