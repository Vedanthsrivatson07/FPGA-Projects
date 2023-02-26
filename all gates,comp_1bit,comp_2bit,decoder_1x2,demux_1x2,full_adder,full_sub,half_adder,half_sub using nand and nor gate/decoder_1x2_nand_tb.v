`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.01.2023 16:46:27
// Design Name: 
// Module Name: decoder_1x2_nand_tb
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


module decoder_1x2_nand_tb( );

reg i;
wire [1:0]y;

decoder_1x2_nand  inst1(i,y);
    
task decoder_inp(input r);
begin
    i=r;  #10;
    end
endtask

task chk_op( input [1:0]in);
begin
    if (y== in)
    $display("test passed, y=%d",y);
    else
    $display("test failed");
    end
endtask

task decoder_chk(input x,input [1:0]inp);
        begin
            decoder_inp(x); 
            chk_op(inp);
        end
    endtask
    
  
initial 
begin
            decoder_chk(0,1);         
            decoder_chk(1,2);         
                       
        end
endmodule
