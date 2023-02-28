`timescale 1ns / 1ps

module uart_rx(
	input clk,
	input rst_n,
	input rx_i,
	output reg [7:0] data_o,
	output reg rx_done_o
);

localparam s_idle = 5'b00001,
            s_start = 5'b00010,
            s_rd = 5'b00100,
            s_stop = 5'b01000,
            s_done = 5'b10000;

//This is for realtime
localparam t_1_bit = 15625;
localparam t_half_1_bit = 7812;

//This is for simulation
//localparam t_1_bit = 9;
//localparam t_half_1_bit = 4;

reg en_cnt;
reg [15:0] cnt;
reg [4:0] state;
reg [7:0] rx_bits;

always @(posedge clk or negedge rst_n)
	if(!rst_n)
		cnt <= 16'd0;
	else if ((en_cnt == 0) || (cnt == t_1_bit))
		cnt <= 16'd0;
	else
		cnt <= cnt + 16'd1;

reg rx_0, rx_1, rx_2, rx_3;

always @(posedge clk or negedge rst_n)
	if (!rst_n) begin
		rx_0 <= 1'b0;
		rx_1 <= 1'b0;
		rx_2 <= 1'b0;
		rx_3 <= 1'b0;
	end else begin
		rx_3 <= rx_i;
		rx_2 <= rx_3;
		rx_1 <= rx_2;
		rx_0 <= rx_1;
	end

wire start_flag;
assign start_flag = rx_0 & rx_1 & (~rx_2) & (~rx_3);

always @(posedge clk or negedge rst_n)
	if (!rst_n) begin
		state <= s_idle;
		en_cnt <= 1'b0;
		data_o <= 8'd0;
		rx_bits <= 8'd0;
		rx_done_o <= 1'b0;
	end else begin
		case(state)
			s_idle:
				begin
					rx_bits <= 8'd0;
					rx_done_o <= 1'b0;

					if (start_flag) begin
						en_cnt <= 1'b1;
						state <= s_start;
					end else begin
						en_cnt <= 1'b0;
						state <= s_idle;
					end
				end
			
			s_start:
				if (cnt == t_half_1_bit)
					if (rx_i == 1'b0)
						state <= s_rd;
					else
						state <= s_idle;
			
			s_rd:
				if (cnt == t_half_1_bit)
					if (rx_bits == 8'd7)
						state <= s_stop;
					else begin
						data_o[rx_bits] <= rx_i;
						rx_bits <= rx_bits + 8'd1;
						state <= s_rd;
					end

			s_stop:
				if (cnt == t_half_1_bit)
				begin
					if (rx_i == 1)
						state <= s_done;
					else
						state <= s_idle;
                end
			s_done:
				begin
					en_cnt <= 1'b0;
					rx_done_o <= 1'b1;
					state <= s_idle;
				end
			default: state <= s_idle;
		endcase
	end
endmodule