`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.01.2023 12:29:37
// Design Name: 
// Module Name: memory_design_tb
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


module memory_design_tb #(parameter DW=16, parameter AW=25)( ) ;
reg clk=0,cs,wen;
reg[AW-1:0]addr;
reg[DW-1:0]wdata;
wire [DW-1:0]rdata;
reg [DW-1:0]rdata_out;
reg [AW-1:0]tmp_addr;
reg [DW-1:0]tmp_wdata;

memory1 inst1(clk,cs,wen,addr,wdata,rdata);


 
 task mem_write(input[AW-1:0]tmp_addr,input [DW-1:0]tmp_wdata);
 begin
    addr=tmp_addr;
    wdata=tmp_wdata;
    cs=1;
    wen=1;  #10;
 end
 endtask
 
 task mem_read(input[AW-1:0]t_addr,output [DW-1:0]t_wdata);
 begin
    addr=t_addr;
    cs=1;
    wen=0;  #10;
    t_wdata=rdata;
end
endtask

task checker(input [DW-1:0]exp_data,input [DW-1:0]act_data);
begin
    if (exp_data==act_data)
        $display("test passed");
    else
        $display("test failed, exp=%d,act=%d",exp_data,act_data);
 end
 endtask
 
always #5 clk=!clk;
integer i;
  initial
  begin
      tmp_addr=0;
      tmp_wdata= $random;
      for (i=0;i<AW-1;i=i+1)
      begin
        tmp_wdata[i]=$random;
        mem_write(tmp_addr+i,tmp_wdata);
        mem_read(tmp_addr+i,rdata_out);
        checker(tmp_wdata,rdata);
      end
      $stop;
   end
  
endmodule
