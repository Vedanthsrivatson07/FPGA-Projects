`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.12.2022 22:50:17
// Design Name: 
// Module Name: pencoder_4x2_mux_tb
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


module pencoder_4x2_mux_tb();
reg [3:0]r ;
wire [1:0]w;

pencoder_4x2_mux  dut1(r,w);

task pencoder_inp(input a,b,c,d);
begin
    r[3]=a;  #10;
    r[2]=b;  #10;
    r[1]=c;  #10;
    r[0]=d;  #10;
    end
endtask

task chk_op( input e,f);
begin
    if ((w[1] == e) && (w[0] == f))
    $display("i3=%d i2=%d i1=%d i0=%d test passed y1=%d y0=%d",r[3],r[2],r[1],r[0],w[1],w[0]);
    else
    $display("i3=%d i2=%d i1=%d i0=%d test failed y1=%d y0=%d",r[3],r[2],r[1],r[0],w[1],w[0]);
    end
endtask

initial
begin


    pencoder_inp(1'b1,1'bx,1'bx,1'bx);chk_op(1,1);
    pencoder_inp(1'b0,1'b1,1'bx,1'bx);chk_op(1,0);
    pencoder_inp(1'b0,1'b0,1'b1,1'bx);chk_op(0,1);
    pencoder_inp(1'b0,1'b0,1'b0,1'bx);chk_op(0,0);
    
   end
endmodule
