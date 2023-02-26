`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.01.2023 13:58:37
// Design Name: 
// Module Name: fs_nand_tb
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


module fs_nand_tb( );
reg a,b,c;
wire diff,bo;

fs_nand  inst1(a,b,c,diff,bo);

task  inp(i,j,k);
begin
    a=i;
    b=j;
    c=k;    #10;
   end
endtask

initial
begin
    $monitor ("a=%d,b=%d,c=%d,diff=%d,bo=%d", a,b,c,diff,bo);
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

