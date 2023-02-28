`timescale 1ns / 1ps

`define clk_period 20

module tb_uart_tx();

reg clk, rst_n, en_i;
reg [7:0] data_i;
wire tx_done_o;
wire tx_o;

uart_tx UART_TX(
	clk,
	rst_n,
	en_i,
	data_i,
	tx_o,
	tx_done_o
);

initial clk = 1;
	always #(`clk_period/2) clk = ~clk;

initial begin
	rst_n = 1;
	en_i = 0;
	data_i = 0;

	#(`clk_period);

	rst_n = 0;	//begin to reset;
	#(`clk_period);

	rst_n = 1;	//finish reset;
	#(`clk_period);

	data_i = 8'hcc;
	en_i = 1;
	#(`clk_period);

	en_i = 0;
	#(`clk_period * 200);

	$stop;
end
endmodule
