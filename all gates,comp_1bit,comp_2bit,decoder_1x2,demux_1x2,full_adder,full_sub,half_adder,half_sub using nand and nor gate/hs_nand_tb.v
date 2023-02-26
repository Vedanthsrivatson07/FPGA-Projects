`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.01.2023 22:43:44
// Design Name: 
// Module Name: hs_nand_tb
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


module hs_nand_tb( );
reg a,b;
wire diff,bo;

hs_nand inst1(a,b,diff,bo);

task inp(i,j);
begin
    a=i;    
    b=j;   #10;
 end
 endtask
 
 initial
 begin
 $monitor("a=%d,b=%d,diff=%d,bo=%d",a,b,diff,bo);
    inp(0,0);     #10;
    inp(0,1);     #10;
    inp(1,0);     #10;
    inp(1,1);     #10;
    //$monitor("a=%d,b=%d,diff=%d,bo=%d",a,b,diff,bo);
    $finish;
end


endmodule
