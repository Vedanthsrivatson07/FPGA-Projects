`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.01.2023 22:51:47
// Design Name: 
// Module Name: fa_nand_tb
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


module fa_nand_tb( );
reg a,b,c;
wire sum,cy;

fa_nand inst1(a,b,c,sum,cy);

task  inp(i,j,k);
begin
    a=i;
    b=j;
    c=k;    #10;
   end
endtask

initial
begin
    $monitor ("a=%d,b=%d,c=%d,sum=%d,cy=%d", a,b,c,sum,cy);
    inp(0,0,0);  #10;
    inp(0,0,1);  #10;
    inp(0,1,0);  #10;
    inp(0,1,1);  #10;
    inp(1,0,0);  #10;
    inp(1,0,1);  #10;
    inp(1,1,0);  #10;
    inp(1,1,1);  #10;
    $finish;
 end
endmodule
