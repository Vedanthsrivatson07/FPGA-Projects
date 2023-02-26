`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.11.2022 10:31:23
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

reg [15:0]i;
reg en;
wire [3:0]y;


task fa_inp(input x,input[15:0]y);
begin
    en=x;
    i=y;
    #10;
end
endtask


task chk_op(input x,u,z,w);
begin
    if((y[3]==x)&&(y[2]==u)&&(y[1]==z)&&(y[0]==w))
        $display("Test Passed\n");//inputs {a,b,c} = %d%d%d exp and act {b0,d}=%d%d\n",r_a,r_b,r_c,x,y);
    else
        $display("Test Failed\n");//, exp_b0 and exp_d {b0,d}=%d%d act_b0 and act_d {b0,d}\n",x,y,b0,d);
end
endtask

task fa_inp_chk(input a,input[15:0]b,input c,d,e,f);
    begin
        fa_inp(a,b); 
        chk_op(c,d,e,f);
    end
endtask

Priority_encoder_16x4 DUT1(en,i,y);

initial 
    begin
        //$monitor("a = %d,b = %d,c = %d,b0 = %d,d = %d\n",r_a,r_b,r_c,b0,d);
        //fa_inp_chk(a,b,c,cy,s); 
        fa_inp_chk(1,32768,1,1,1,1);         
        fa_inp_chk(1,16384,1,1,1,0);         
        fa_inp_chk(1,8192,1,1,0,1);         
        fa_inp_chk(1,4096,1,1,0,0);         
        fa_inp_chk(1,2048,1,0,1,1);         
        fa_inp_chk(1,1024,1,0,1,0);         
        fa_inp_chk(1,512,1,0,0,1);         
        fa_inp_chk(1,256,1,0,0,0);         
        fa_inp_chk(1,128,0,1,1,1);         
        fa_inp_chk(1,64,0,1,1,0);         
        fa_inp_chk(1,32,0,1,0,1);         
        fa_inp_chk(1,16,0,1,0,0);         
        fa_inp_chk(1,8,0,0,1,1);         
        fa_inp_chk(1,4,0,0,1,0);         
        fa_inp_chk(1,2,0,0,0,1);         
        fa_inp_chk(1,0,0,0,0,0);         

        $finish;
    end
    
endmodule


/*module tb;
  reg [15:0]i;
  reg en;
  wire [3:0]y;
  
  // instantiate the model: creating 
  // instance for block diagram 
  PriorityEncoder16x4 dut(en,i,y);
  initial
    begin
      $monitor("en=%b i=%b y=%b",en,i,y);

      en=1; i=32768;#10
      en=1; i=16384;#10
      en=1; i=8192;#10
      en=1; i=4096;#10
      en=1; i=2048;#10
      en=1; i=1024;#10
      en=1; i=512;#10
      en=1; i=256;#10
      en=1; i=128;#10
      en=1; i=64;#10
      en=1; i=32;#10
      en=1; i=16;#10
      en=1; i=8;#10
      en=1; i=4;#10
      en=1; i=2;#10
      en=1; i=0;#10
      en=0;i=16'bx;#10
      
      $finish;
    end
endmodule*/

