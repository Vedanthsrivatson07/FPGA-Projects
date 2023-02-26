`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.01.2023 15:32:47
// Design Name: 
// Module Name: digital clock with alarm
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
module clock_with_alarm(
    input clk,
    input rst,
    input alarm_enable,
    output reg [5:0] sec,
    output reg [5:0] min,
    output reg [4:0] hour,
    input [5:0] alarm_sec,
    input [5:0] alarm_min,
    input [4:0] alarm_hour,
    output wire alarm
);
    reg [3:0] count;
    reg alarm_flag;

    always @(posedge clk) begin
        if (count == 59) begin
            count <= 0;
            if (sec == 59) begin
                sec <= 0;
                if (min == 59) begin
                    min <= 0;
                    if (hour == 23) begin
                        hour <= 0;
                    end else begin
                        hour <= hour + 1;
                    end
                end else begin
                    min <= min + 1;
                end
            end else begin
                sec <= sec + 1;
            end
        end else begin
            count <= count + 1;
        end

        if (alarm_enable) begin
            if (sec == alarm_sec && min == alarm_min && hour == alarm_hour) begin
                alarm_flag <= 1;
            end
        end else begin
            alarm_flag <= 0;
        end

        if (alarm_ack) begin
            alarm_flag <= 0;
        end
    end

    assign alarm = alarm_flag;

endmodule


