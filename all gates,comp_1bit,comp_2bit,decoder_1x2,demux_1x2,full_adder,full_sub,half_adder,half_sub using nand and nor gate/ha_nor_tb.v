`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.01.2023 22:01:33
// Design Name: 
// Module Name: ha_nor_tb
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


module ha_nor_tb();
reg a,b;
wire sum, cy;

ha_nor inst1(a,b,sum,cy);

task inp(i,j);
begin
    a=i;   
    b=j;   #10;
 end
 endtask
 
  initial
 begin
 $monitor("a=%d,b=%d,sum=%d,cy=%d",a,b,sum,cy);
    inp(0,0);     #10;
    inp(0,1);     #10;
    inp(1,0);     #10;
    inp(1,1);     #10;
    //$monitor("a=%d,b=%d,diff=%d,bo=%d",a,b,diff,bo);
    $finish;
end

endmodule
