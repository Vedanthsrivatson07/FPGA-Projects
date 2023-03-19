`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.03.2023 15:21:46
// Design Name: 
// Module Name: 1010 moore fsm
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

module moorefsm (rst, q, i, clk, pst, nst);

  input i, clk, rst;
  output reg [2:0] q, pst, nst;

  parameter s0 = 3'b000;
  parameter s1 = 3'b001;
  parameter s2 = 3'b010;
  parameter s3 = 3'b011;
  parameter s4 = 3'b100;

  always@(posedge clk) begin
    if (rst) begin
      pst <= s0;
    end
    else begin
      pst <= nst;
    end
  end

  always@(pst, i) begin
    case(pst)
      s0: begin
        q <= 3'b000;
        if (i == 1'b1) begin
          nst <= s1;
        end
        else begin
          nst <= s0;
        end
      end

      s1: begin
        q <= 3'b000;
        if (i == 1'b1) begin
          nst <= s1;
        end
        else begin
          nst <= s2;
        end
      end

      s2: begin
        q <= 3'b000;
        if (i == 1'b1) begin
          nst <= s3;
        end
        else begin
          nst <= s0;
        end
      end

      s3: begin
        q <= 3'b000;
        if (i == 1'b1) begin
          nst <= s4;
        end
        else begin
          nst <= s1;
        end
      end

      s4: begin
        q <= 3'b000;
        if (i == 1'b1) begin
          nst <= s3;
        end
        else begin
          nst <= s0;
        end
      end

      default: begin
        q <= 3'b000;
        nst <= s0;
      end
    endcase
  end
endmodule

