`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.01.2023 16:29:23
// Design Name: 
// Module Name: comp_1bit_tb
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


module comp_1bit_tb( );
reg a,b;
wire l,e,g;

comp_1bit_nand  inst1(a,b,l,e,g);

task inp(i,j);
begin
    a=i;    
    b=j;   #10;
 end
 endtask
 
  initial
 begin
 $monitor("a=%d,b=%d,l=%d,e=%d,g=%d",a,b,l,e,g);
    inp(0,0);     #10;
    inp(0,1);     #10;
    inp(1,0);     #10;
    inp(1,1);     #10;
    //$monitor("a=%d,b=%d,diff=%d,bo=%d",a,b,diff,bo);
    $finish;
end
endmodule
