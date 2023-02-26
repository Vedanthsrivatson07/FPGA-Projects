`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.11.2022 14:43:59
// Design Name: 
// Module Name: all_gates_2x1_mux_tb
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


module all_gates_2x1_mux_tb( );
reg a,b;
wire y_and,y_or,y_not,y_nand,y_nor,y_xor,y_xnor;

all_gates_2x1_mux inst1(a,b,y_and,y_or,y_not,y_nand,y_nor,y_xor,y_xnor);

task inp(input x1,x2);
 begin
     a=x1;
     b=x2;
     #10;
 end
 endtask

initial
begin  
    $monitor("a=%d,b=%d, y_and=%d, y_or=%d, y_not=%d, y_nand=%d, y_nor=%d, y_xor=%d, y_xnor=%d",a,b,y_and,y_or,y_not,y_nand,y_nor,y_xor,y_xnor);
        inp(0,0);         
        inp(0,1);         
        inp(1,0);         
        inp(1,1);                  
$finish;
end

endmodule
