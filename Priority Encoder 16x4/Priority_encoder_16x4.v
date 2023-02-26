`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.11.2022 10:29:00
// Design Name: 
// Module Name: Priority_encoder_16x4
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


module Priority_encoder_16x4(en,i,y);
input en;
  input [15:0]i;
  output reg [3:0]y;
  always @(en,i)
  begin
    if(en==1)
      begin

        if(i[15]==1) y=4'b1111;
        else if(i[14]==1) y=4'b1110;
        else if(i[13]==1) y=4'b1101;
        else if(i[12]==1) y=4'b1100;
        else if(i[11]==1) y=4'b1011;
        else if(i[10]==1) y=4'b1010;
        else if(i[9]==1) y=4'b1001;
        else if(i[8]==1) y=4'b1000;
        else if(i[7]==1) y=4'b0111;
        else if(i[6]==1) y=4'b0110;
        else if(i[5]==1) y=4'b0101;
        else if(i[4]==1) y=4'b0100;
        else if(i[3]==1) y=4'b0011;
        else if(i[2]==1) y=4'b0010;
        else if(i[1]==1) y=4'b0001;        
        else
        y=4'b0000;
      end
 
    else y=4'bzzzz;
  end
  
endmodule
