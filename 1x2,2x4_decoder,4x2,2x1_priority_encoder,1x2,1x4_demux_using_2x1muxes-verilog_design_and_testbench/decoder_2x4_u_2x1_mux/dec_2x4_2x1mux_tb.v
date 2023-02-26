`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.12.2022 23:31:49
// Design Name: 
// Module Name: dec_2x4_2x1mux_tb
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


module dec_2x4_2x1mux_tb();
reg [1:0]i;
wire [3:0]y;

dec_2x4_2x1mux inst1(i,y);
 
//task  inp(input x);
//begin
//    i=x;           #10;
//    end
//    endtask
    
//task ch_op(input q);
//       begin
//         if (y==q)
//          $display("test passed");
//         else
//          $display("test failed");
//        end
//        endtask    

//task deco_inp_ch(input i,y);
//    begin 
//        inp(i);
//        ch_op(y);
//    end
//    endtask
    
//initial
//    begin
//    $display ("i=%d,y=%d",i,y);
//    deco_inp_ch(0,1);
//    deco_inp_ch(1,2);
//    deco_inp_ch(2,4);
//    deco_inp_ch(3,8);
//    $finish;
//    end
//endmodule    

 task inputs;
 input a,b;
 begin
 i[1]=a;
 i[0]=b;
 #10;
 end
 endtask
 initial
   begin
     inputs(0,0);#10;
     $display("i=%b,y=%b\n",i,y);
   
     inputs(0,1);
          $display("i=%b,y=%b\n",i,y);#10;
          
          inputs(1,0);
               $display("i=%b,y=%b\n",i,y);#10;
               
               inputs(1,1);#10;
                    $display("i=%b,y=%b\n",i,y);#10;
                end  
endmodule
