`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.01.2023 10:43:24
// Design Name: 
// Module Name: tb_digi_alarm
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
module clock_tb;

reg clk;
reg [4:0] hours;
reg [5:0] minutes;
reg [5:0] seconds;
reg [4:0] alarm_hours;
reg [5:0] alarm_minutes;
reg alarm_enable;

initial begin
    clk = 0;
    hours = 0;
    minutes = 0;
    seconds = 0;
    alarm_hours = 8;
    alarm_minutes = 0;
    alarm_enable = 1;
end

always #5 clk = ~clk;

always @(posedge clk) begin
    seconds <= seconds + 1;
    if (seconds == 60) begin
        seconds <= 0;
        minutes <= minutes + 1;
    end
    if (minutes == 60) begin
        minutes <= 0;
        hours <= hours + 1;
    end
    if (hours == 24) begin
        hours <= 0;
    end
    if (alarm_enable && (hours == alarm_hours) && (minutes == alarm_minutes)) begin
        // Alarm code here
    end
end

endmodule
