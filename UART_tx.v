`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.02.2023 21:25:36
// Design Name: 
// Module Name: UART_tx
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

module uart_tx(
	input clk,
	input rst_n,
	input en_i,
	input [7:0] data_i,
	output reg tx_o,
	output reg tx_done_o
);

localparam s_idle = 5'b00001,
		s_start = 5'b00010,
		s_wr = 5'b00100,
		s_stop = 5'b01000,
		s_done = 5'b10000;

//This is for simulation
localparam t_1_bit = 9;

reg en_cnt;
reg [15:0] cnt;
reg [4:0] state;
reg [7:0] data_r;
reg [7:0] tx_bits;

always @(posedge clk or negedge rst_n)
	if(!rst_n)
		cnt <= 16'd0;
	else if ((en_cnt == 0) || (cnt == t_1_bit))
		cnt <= 16'd0;
	else
		cnt <= cnt + 16'd1;

always @(posedge clk or negedge rst_n)
	if (!rst_n) begin
		state <= s_idle;
		tx_o <= 1'b1;
		data_r <= 8'd0;
		en_cnt <= 1'b0;
		tx_bits <= 8'd0;
		tx_done_o <= 1'b0;
	end else begin
		case(state)
			s_idle:
				begin
					data_r <= data_i;
					tx_bits <= 8'b0;
					tx_done_o <= 1'b0;

					if(en_i == 1) begin
						en_cnt <= 1'b1;
						state <= s_start;
					end else begin
						en_cnt <= 1'b0;
						state <= s_idle;
					end
				end
			s_start:
				if (cnt == t_1_bit) begin
					state <= s_wr;
				end else begin
					tx_o <= 0;
					state <= s_start;
				end
			
			s_wr:
				if (cnt == t_1_bit) begin
					if (tx_bits == 8'd7)
						state <= s_stop;
					else begin
						tx_bits <= tx_bits + 8'd1;
						state <= s_wr;
					end
				end else begin
					tx_o <= data_r[tx_bits];
					state <= s_wr;
				end
			
			s_stop:
				if (cnt == t_1_bit) begin
					state <= s_done;
				end else begin
					tx_o <= 1'b1;
					state <= s_stop;
				end
			
			s_done:
				begin
					en_cnt <= 1'b0;
					tx_done_o <= 1'b1;
					state <= s_idle;
				end
				
			default: state <= s_idle;
		endcase
	end
endmodule

