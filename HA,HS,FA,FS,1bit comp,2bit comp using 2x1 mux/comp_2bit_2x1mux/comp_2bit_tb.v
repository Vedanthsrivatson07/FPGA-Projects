`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.11.2022 08:29:51
// Design Name: 
// Module Name: comp_2bit_tb
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


module comp_2bit_tb( );
reg [1:0] a;
reg [1:0]b;
wire l,e,g;

comp_2bit inst1(a,b,l,e,g);

task  inp(m,n,o,p);
begin
    a[1]=m;
    a[0]=n;
    b[1]=o;
    b[0]=p;    #10;
   end
endtask

initial
begin
    $monitor ("a1=%d,a0=%d,b1=%d,b0=%d,l=%d,e=%d,g=%d", a[1],a[0],b[1],b[0],l,e,g);
    inp(0,0,0,0);  #10;
    inp(0,0,0,1);  #10;
    inp(0,0,1,0);  #10;
    inp(0,0,1,1);  #10;
    inp(0,1,0,0);  #10;
    inp(0,1,0,1);  #10;
    inp(0,1,1,0);  #10;
    inp(0,1,1,1);  #10;
    inp(1,0,0,0);  #10;
    inp(1,0,0,1);  #10;
    inp(1,0,1,0);  #10;
    inp(1,0,1,1);  #10;
    inp(1,1,0,0);  #10;
    inp(1,1,0,1);  #10;
    inp(1,1,1,0);  #10;
    inp(1,1,1,1);  #10;
        
    $finish;
 end
endmodule
