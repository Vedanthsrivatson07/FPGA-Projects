`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.01.2023 20:09:23
// Design Name: 
// Module Name: demux_1x2_nand_tb
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


module demux_1x2_nand_tb( );
reg i,s;
 wire [1:0]y;
 
demux_1x2  inst1(.i(i),.s(s),.y(y));
 
task inp(input x1,x);
 begin
     s=x1;
     i=x;
     #10;
 end
 endtask
 
 /*task chk_op(input [3:0]op);
 begin
    if(y[1]==op[1])
        $display("Test passed");
    else
        $display("Test failed  op is op[3]=%d,op[2]=%d,op[1]=%d,op[0]=%d",op[3],op[2],op[1],op[0]);
 end
 endtask*/
 
     initial 
       begin
        $monitor("s=%d,y[1]=%d,y[0]=%d",s,y[1],y[0]);
        inp(0,1);  //chk_op(4'bzzz1);       
        inp(1,1);  //chk_op(4'bzz1z);       
         $finish;
       end  
endmodule
