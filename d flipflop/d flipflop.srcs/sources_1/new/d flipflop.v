`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.11.2022 20:04:33
// Design Name: 
// Module Name: d flipflop
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


module dflipflop(
    input d,clk,rst,
    output reg q,qbar);
always @(posedge clk)
    begin
        if(rst)
            {q,qbar}<={0,1};
        else
        begin
    case({d})
        2'b00:{q,qbar}<={q,qbar};
        2'b01:{q,qbar}<=2'b01;
        2'b10:{q,qbar}<=2'b10;
        2'b11:begin end
        default:begin end
    endcase
    end
    end
    endmodule

    
