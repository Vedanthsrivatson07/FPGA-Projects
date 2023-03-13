`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.03.2023 18:48:47
// Design Name: 
// Module Name: uartrx_tb
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
`define clk_period 20

module tb_uart_rx();

reg clk, rst_n, rx_i;
wire [7:0] data_o;
wire rx_done_o;

uart_rx UART_RX(
    clk,
    rst_n,
    rx_i,
    data_o,
    rx_done_o
);

initial clk = 1;
    always #(`clk_period/2) clk = ~clk;
    
initial
    begin
        rst_n = 1;
        rx_i = 1;
        #`clk_period;
        
        rst_n = 0;
        #`clk_period;
        
        rst_n = 1;
        #(`clk_period * 10);
        
        rx_i = 0;   //start bit
        #(`clk_period * 10);
        
        rx_i = 1;   //bit 0
        #(`clk_period * 10);
        
        rx_i = 1;   //bit 1
        #(`clk_period * 10);
        
        rx_i = 0;   //bit 2 
        #(`clk_period * 10);
        
        rx_i = 0;   //bit 3
        #(`clk_period * 10);
        
        rx_i = 1;   //bit 4
        #(`clk_period * 10);
        
        rx_i = 1;   //bit 5
        #(`clk_period * 10);
        
        rx_i = 0;   //bit 6
        #(`clk_period * 10);
        
        rx_i = 0;   //bit 7
        #(`clk_period * 10);
        
        rx_i = 1;   //stop bit;
        #(`clk_period * 10);
        
        #(`clk_period * 20);
        
        $stop;
    end
endmodule