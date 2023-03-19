`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.03.2023 15:26:17
// Design Name: 
// Module Name: moore_tb
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

module moorefsm_tb;

  // Inputs
  reg i, clk, rst;

  // Outputs
  wire [2:0] q, pst, nst;

  // Instantiate the module
  moorefsm dut(.i(i), .clk(clk), .rst(rst), .q(q), .pst(pst), .nst(nst));

  // Generate clock signal
  always begin
    clk = 0;
    #5;
    clk = 1;
    #5;
  end

  // Reset the module
  initial begin
    rst = 1;
    #10;
    rst = 0;
  end

  // Stimulus generation
  initial begin
    i = 0;
    #10;
    i = 1;
    #10;
    i = 0;
    #10;
    i = 1;
    #10;
    i = 0;
    #10;
    $finish;
  end

endmodule
