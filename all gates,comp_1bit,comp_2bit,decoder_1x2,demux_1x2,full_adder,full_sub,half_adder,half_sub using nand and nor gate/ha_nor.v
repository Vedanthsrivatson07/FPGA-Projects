`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.01.2023 21:59:18
// Design Name: 
// Module Name: ha_nor
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


module ha_nor(input a,b, output sum,cy  );
wire w1,w2,w3;
nor n1(w1,a,b);
nor n2(w2,a,a);
nor n3(w3,b,b);
nor n4(cy,w2,w3);
nor n5(sum,w1,cy);
endmodule
