`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.01.2023 21:50:57
// Design Name: 
// Module Name: twobitcomp_nand_tb
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


module twobitcomp_nand_tb();
reg [1:0]a,b;
wire l,e,g;

twobitcomp_usingnand  inst1(a,b,l,e,g);

task inp(i,j,k,l);
begin
    a[1]=i; 
    a[0]=j;
    b[1]=k;
    b[0]=l;   #10;
 end
 endtask
 
  initial
 begin
 $monitor("a=%d,b=%d,l=%d,e=%d,g=%d",a,b,l,e,g);
    inp(0,0,0,0);     #10;
    inp(0,0,0,1);     #10;
    inp(0,0,1,0);     #10;
    inp(0,0,1,1);     #10;
    inp(0,1,0,0);     #10;
    inp(0,1,0,1);     #10;
    inp(0,1,1,0);     #10;
    inp(0,1,1,1);     #10;
    inp(1,0,0,0);     #10;
    inp(1,0,0,1);     #10;
    inp(1,0,1,0);     #10;
    inp(1,0,1,1);     #10;
    inp(1,1,0,0);     #10;
    inp(1,1,0,1);     #10;
    inp(1,1,1,0);     #10;
    inp(1,1,1,1);     #10;
    //$monitor("a=%d,b=%d,diff=%d,bo=%d",a,b,diff,bo);
    $finish;
end
endmodule
