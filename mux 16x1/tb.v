`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.11.2022 10:00:31
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
reg [3:0]s;
wire y;

mux_16x1 DUT1(i,s,y);

task fa_inp(input [3:0]x,input[15:0]y);
begin
    s=x;
    i=y;
    #10;
end
endtask


task chk_op(input x);
begin
    if(y==x)
        $display("Test Passed\n");
    else
        $display("Test Failed\n");
end
endtask

task fa_inp_chk(input [3:0]a,input[15:0]e,input f);
    begin
        fa_inp(a,e); 
        chk_op(f);
    end
endtask


initial 
    begin
        //$monitor("a = %d,b = %d,c = %d,b0 = %d,d = %d\n",r_a,r_b,r_c,b0,d);
        //fa_inp_chk(a,b,c,cy,s); 
        fa_inp_chk(15,32768,1);         
        fa_inp_chk(14,16384,1);         
        fa_inp_chk(13,8192,1);         
        fa_inp_chk(12,4096,1);         
        fa_inp_chk(11,2048,1);         
        fa_inp_chk(10,1024,1);         
        fa_inp_chk(9,512,1);         
        fa_inp_chk(8,256,1);         
        fa_inp_chk(7,128,1);         
        fa_inp_chk(6,64,1);         
        fa_inp_chk(5,32,1);         
        fa_inp_chk(4,16,1);         
        fa_inp_chk(3,8,1);         
        fa_inp_chk(2,4,1);         
        fa_inp_chk(1,2,1);         
        fa_inp_chk(0,1,1);         
         

       // $finish;
    end

endmodule
