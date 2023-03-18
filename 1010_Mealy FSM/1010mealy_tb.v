`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.03.2023 20:27:17
// Design Name: 
// Module Name: 1010mealy_tb
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
module testbench;

    // Inputs
    reg i;
    reg clk;
    reg rst;

    // Outputs
    wire q;
    wire [1:0] pst;
    wire [1:0] nst;

    // Instantiate the Unit Under Test (UUT)
    mealyfsm uut(
        .i(i),
        .clk(clk),
        .rst(rst),
        .q(q),
        .pst(pst),
        .nst(nst)
    );

    initial begin
        // Initialize Inputs
        i = 0;
        clk = 0;
        rst = 1;

        #10
        rst = 0; // De-assert Reset

        // Testcase 1
        #10
        i = 1;
        #10
        i = 0;
        #10
        i = 1;

        // Testcase 2
        #10
        i = 0;
        #10
        i = 1;
        #10
        i = 1;

        // Testcase 3
        #10
        i = 0;
        #10
        i = 1;
        #10
        i = 0;
        #10
        i = 1;

        // Add more testcases here

        #100
        $finish;
    end

    always #5 clk = ~clk; // Toggle clock every 5 ticks

endmodule
