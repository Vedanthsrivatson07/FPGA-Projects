`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.01.2023 20:16:36
// Design Name: 
// Module Name: comp_2bit_nor
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


module comp_2bit_nor(
input [1:0]a,b, output l,e,g);

wire[13:0]lw; 
wire[12:0]gw;
wire[29:0]ew;


    //less than
    nor_gate LDUT1(b[1],b[1],lw[1]);
    nor_gate LDUT2(b[0],b[0],lw[2]);
    nor_gate LDUT3(lw[1],a[1],lw[3]);
    nor_gate LDUT4(a[1],lw[2],lw[4]);
    nor_gate LDUT5(a[0],lw[2],lw[5]);
    nor_gate LDUT6(lw[4],lw[4],lw[6]);
    nor_gate LDUT7(lw[6],a[0],lw[7]);
    nor_gate LDUT8(lw[7],lw[3],lw[8]);
    nor_gate LDUT10(lw[5],lw[5],lw[10]);
    nor_gate LDUT11(lw[10],lw[1],lw[11]);
    nor_gate LDUT12(lw[8],lw[8],lw[12]);
    nor_gate LDUT13(lw[12],lw[11],lw[13]);
    nor_gate LDUT14(lw[13],lw[13],l);


     //greater than
     nor_gate DUT1(.a(a[1]),.b(a[1]),.y(gw[1]));
     nor_gate DUT2(.a(gw[1]),.b(b[1]),.y(gw[2]));
     nor_gate DUT3(.a(a[0]),.b(a[0]),.y(gw[5]));
     nor_gate DUT4(.a(b[1]),.b(gw[5]),.y(gw[3]));
     nor_gate DUT5(.a(gw[3]),.b(gw[3]),.y(gw[4]));
     nor_gate DUT6(.a(gw[4]),.b(b[0]),.y(gw[12]));
     nor_gate DUT7(.a(gw[2]),.b(gw[12]),.y(gw[9]));
     nor_gate DUT8(.a(gw[9]),.b(gw[9]),.y(gw[10]));
     nor_gate DUT9(.a(gw[5]),.b(gw[1]),.y(gw[6]));
     nor_gate DUT10(.a(gw[6]),.b(gw[6]),.y(gw[7]));
     nor_gate DUT11(.a(b[0]),.b(gw[7]),.y(gw[8]));
     nor_gate DUT12(.a(gw[10]),.b(gw[8]),.y(gw[11]));
     nor_gate DUT13(.a(gw[11]),.b(gw[11]),.y(g));
     
     
     //equal 
      nor_gate EUT1(.a(b[0]),.b(b[0]),.y(ew[0]));
      nor_gate EUT2(.a(b[1]),.b(b[1]),.y(ew[1]));
      nor_gate EUT3(.a(a[0]),.b(a[0]),.y(ew[2]));
      nor_gate EUT4(.a(a[1]),.b(a[1]),.y(ew[3]));
      nor_gate EUT5(.a(a[1]),.b(a[0]),.y(ew[4]));
      nor_gate EUT6(.a(b[1]),.b(b[0]),.y(ew[6]));
      nor_gate EUT7(.a(a[1]),.b(ew[2]),.y(ew[7]));
      nor_gate EUT8(.a(b[1]),.b(ew[0]),.y(ew[8]));
      nor_gate EUT9(.a(ew[3]),.b(a[0]),.y(ew[9]));
      nor_gate EUT10(.a(ew[1]),.b(b[0]),.y(ew[10]));
      nor_gate EUT11(.a(ew[3]),.b(ew[2]),.y(ew[11]));
      nor_gate EUT12(.a(ew[1]),.b(ew[0]),.y(ew[12]));
      nor_gate EUT13(.a(ew[4]),.b(ew[4]),.y(ew[5]));
      nor_gate EUT14(.a(ew[6]),.b(ew[6]),.y(ew[13]));
      nor_gate EUT15(.a(ew[7]),.b(ew[7]),.y(ew[14]));
      nor_gate EUT16(.a(ew[8]),.b(ew[8]),.y(ew[15]));
      nor_gate EUT17(.a(ew[9]),.b(ew[9]),.y(ew[16]));
      nor_gate EUT18(.a(ew[10]),.b(ew[10]),.y(ew[17]));
      nor_gate EUT19(.a(ew[11]),.b(ew[11]),.y(ew[18]));
      nor_gate EUT20(.a(ew[12]),.b(ew[12]),.y(ew[19]));
      nor_gate EUT21(.a(ew[5]),.b(ew[13]),.y(ew[20]));
      nor_gate EUT22(.a(ew[14]),.b(ew[15]),.y(ew[21]));
      nor_gate EUT23(.a(ew[16]),.b(ew[17]),.y(ew[22]));
      nor_gate EUT24(.a(ew[18]),.b(ew[19]),.y(ew[23]));
      nor_gate EUT25(.a(ew[20]),.b(ew[21]),.y(ew[24]));
      nor_gate EUT26(.a(ew[22]),.b(ew[23]),.y(ew[25]));
      nor_gate EUT27(.a(ew[24]),.b(ew[24]),.y(ew[26]));
      nor_gate EUT28(.a(ew[25]),.b(ew[25]),.y(ew[27]));
      nor_gate EUT29(.a(ew[26]),.b(ew[27]),.y(ew[28]));
      nor_gate EUT30(.a(ew[28]),.b(ew[28]),.y(e));

endmodule
