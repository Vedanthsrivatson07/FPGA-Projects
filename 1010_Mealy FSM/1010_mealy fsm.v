`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.03.2023 19:53:02
// Design Name: 
// Module Name: 1010_mealy fsm
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
//////////////////////////////////////////////////////////////////////////////\
module mealyfsm (rst, q, i, clk, pst, nst);
    input i, clk, rst;
    output reg [1:0] q,pst, nst;
    parameter s0 = 2'b00;
    parameter s1 = 2'b01;
    parameter s2 = 2'b10;
    parameter s3 = 2'b11;

    always @(posedge clk) begin
        if (rst) begin
            pst <= s0;
        end else begin 
            pst <= nst;
        end
    end

    always @(pst or i) begin
        case (pst)
            s0: begin
                if (i) begin
                    nst <= s1;
                    q <= 0;
                end 
                else begin
                    nst <= s0;
                    q <= 0;
                end
            end
            
            s1: begin
                if (i) begin
                    nst <= s1;
                    q <= 0;
                end 
                else begin
                    nst <= s2;
                    q <= 0;
                end
            end
            
            s2: begin
                if (i) begin
                    nst <= s3;
                    q <= 0;
                end 
                else begin
                    nst <= s0;
                    q <= 0;
                end
            end
            
            s3: begin
                if (i) begin
                    nst <= s1;
                    q <= 0;
                end 
                else begin
                    nst <= s2;
                    q <= 1;
                end
            end
        endcase
    end
endmodule
