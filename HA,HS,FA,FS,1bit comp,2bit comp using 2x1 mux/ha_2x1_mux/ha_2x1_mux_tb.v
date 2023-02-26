`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.11.2022 20:25:12
// Design Name: 
// Module Name: ha_2x1_mux_tb
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
 reg  a,b;
wire cy,s;

HA_using_2x1mux dut (a,b,cy,s);

/*task inp(input x1,x2);
begin
    a=x1;
    b=x2;
    #10;
end
endtask*/
    initial 
      begin
//        $monitor("a=%d,b=%d, y_and=%d, y_or=%d, y_not=%d, y_nand=%d, y_nor=%d, y_xor=%d, y_xnor=%d",a,b,y_and,y_or,y_not,y_nand,y_nor,y_xor,y_xnor);
       repeat (8)
       begin
       {a,b} = $random(); #10
       $display("a=%d,b=%d, cy=%d, s=%d",a,b,cy,s);
//        inp(0,0);         
//        inp(0,1);         
//        inp(1,0);         
//        inp(1,1);            
      end
      end  
endmodule

