`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.01.2023 21:49:18
// Design Name: 
// Module Name: comp_2bit_nand
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



module twobitcomp_usingnand(a,b,l,e,g);
input [1:0]a;
input [1:0]b;
output l,e,g;
wire [10:0]lw;
wire [27:0]ew;
wire [11:0]gw;

     //greater than
     nand_gate DUT1(.a(a[1]),.b(gw[1]),.y(gw[4]));
     nand_gate DUT2(.a(b[1]),.b(b[1]),.y(gw[1]));
     nand_gate DUT3(.a(gw[1]),.b(a[0]),.y(gw[2]));
     nand_gate DUT4(.a(b[0]),.b(b[0]),.y(gw[6]));
     nand_gate DUT5(.a(gw[3]),.b(gw[6]),.y(gw[5]));
     nand_gate DUT6(.a(gw[2]),.b(gw[2]),.y(gw[3]));
     nand_gate DUT7(.a(gw[6]),.b(gw[9]),.y(gw[7]));
     nand_gate DUT8(.a(a[0]),.b(a[1]),.y(gw[8]));
     nand_gate DUT9(.a(gw[8]),.b(gw[8]),.y(gw[9]));
     nand_gate DUT10(.a(gw[4]),.b(gw[5]),.y(gw[10]));
     nand_gate DUT11(.a(gw[10]),.b(gw[10]),.y(gw[11]));
     nand_gate DUT12(.a(gw[11]),.b(gw[7]),.y(g));
     
     //less than
      nand_gate IUT1(.a(a[1]),.b(a[1]),.y(lw[0]));
      nand_gate IUT2(.a(b[1]),.b(lw[0]),.y(lw[1]));
      nand_gate IUT3(.a(a[0]),.b(a[0]),.y(lw[2]));
      nand_gate IUT4(.a(lw[0]),.b(lw[2]),.y(lw[3]));
      nand_gate IUT5(.a(lw[3]),.b(lw[3]),.y(lw[4]));
      nand_gate IUT6(.a(lw[1]),.b(lw[5]),.y(lw[6]));
      nand_gate IUT7(.a(lw[4]),.b(b[0]),.y(lw[5]));
      nand_gate IUT8(.a(b[0]),.b(lw[8]),.y(lw[9]));
      nand_gate IUT9(.a(lw[7]),.b(lw[7]),.y(lw[8]));
      nand_gate IUT10(.a(lw[2]),.b(b[1]),.y(lw[7]));
      nand_gate IUT11(.a(lw[6]),.b(lw[6]),.y(lw[10]));
      nand_gate IUT12(.a(lw[10]),.b(lw[9]),.y(l)); 
     
     //equal 
     nand_gate EUT1(.a(b[0]),.b(b[0]),.y(ew[0]));
     nand_gate EUT2(.a(b[1]),.b(b[1]),.y(ew[1]));
     nand_gate EUT3(.a(a[0]),.b(a[0]),.y(ew[2]));
     nand_gate EUT4(.a(a[1]),.b(a[1]),.y(ew[3]));
     nand_gate EUT5(.a(ew[3]),.b(ew[2]),.y(ew[4]));
     nand_gate EUT6(.a(ew[1]),.b(ew[0]),.y(ew[5]));
     nand_gate EUT7(.a(ew[3]),.b(a[0]),.y(ew[6]));
     nand_gate EUT8(.a(ew[1]),.b(b[0]),.y(ew[7]));
     nand_gate EUT9(.a(a[1]),.b(ew[2]),.y(ew[8]));
     nand_gate EUT10(.a(b[1]),.b(ew[0]),.y(ew[9]));
     nand_gate EUT11(.a(a[1]),.b(a[0]),.y(ew[10]));
     nand_gate EUT12(.a(b[0]),.b(b[1]),.y(ew[11]));
     nand_gate EUT13(.a(ew[4]),.b(ew[4]),.y(ew[12]));
     nand_gate EUT14(.a(ew[5]),.b(ew[5]),.y(ew[13]));
     nand_gate EUT15(.a(ew[6]),.b(ew[6]),.y(ew[14]));
     nand_gate EUT16(.a(ew[7]),.b(ew[7]),.y(ew[15]));
     nand_gate EUT17(.a(ew[8]),.b(ew[8]),.y(ew[16]));
     nand_gate EUT18(.a(ew[9]),.b(ew[9]),.y(ew[17]));
     nand_gate EUT19(.a(ew[10]),.b(ew[10]),.y(ew[18]));
     nand_gate EUT20(.a(ew[11]),.b(ew[11]),.y(ew[19]));
     nand_gate EUT21(.a(ew[12]),.b(ew[13]),.y(ew[20]));
     nand_gate EUT22(.a(ew[14]),.b(ew[15]),.y(ew[21]));
     nand_gate EUT23(.a(ew[16]),.b(ew[17]),.y(ew[22]));
     nand_gate EUT24(.a(ew[18]),.b(ew[19]),.y(ew[23]));
     nand_gate EUT25(.a(ew[20]),.b(ew[21]),.y(ew[24]));
     nand_gate EUT26(.a(ew[22]),.b(ew[23]),.y(ew[25]));
     nand_gate EUT27(.a(ew[24]),.b(ew[24]),.y(ew[26]));
     nand_gate EUT28(.a(ew[25]),.b(ew[25]),.y(ew[27]));
     nand_gate EUT29(.a(ew[26]),.b(ew[27]),.y(e));
endmodule