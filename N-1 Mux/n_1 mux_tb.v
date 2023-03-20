`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.03.2023 19:49:33
// Design Name: 
// Module Name: n_1 mux_tb
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
module n_1mux_tb;

	// Inputs
	reg [15:0] in;
	reg [3:0] sel;

	// Outputs
	wire y;

	// Instantiate the Unit Under Test (UUT)
	n_1mux uut (
		.in(in), 
		.sel(sel), 
		.y(y)
	);

initial begin
in=16'b1000000000000000; sel=4'b0000; 

#10 in=16'b0100000000000010; sel=4'b0001; 

#10 in=16'b0010000000000100; sel=4'b0010;

#10 in=16'b0001000000000000; sel=4'b0011;

#10 in=16'b0000100000011000; sel=4'b0100; 

#10 in=16'b0000010000000000; sel=4'b0101; 

#10 in=16'b0000001000000000; sel=4'b0110;

#10 in=16'b0000000111100000; sel=4'b0111;

#10 in=16'b0000000010000000; sel=4'b1000;

#10 in=16'b0000000001000000; sel=4'b1001;

#10 in=16'b0000011000100000; sel=4'b1010; 

#10 in=16'b0000000000010000; sel=4'b1011;

#10 in=16'b0000000000001000; sel=4'b1100; 

#10 in=16'b0000000000000100; sel=4'b1101; 

#10 in=16'b0000000000000010; sel=4'b1110; 

#10 in=16'b1000000000000001; sel=4'b1111;

end 

initial

begin

$monitor("in=%b | sel=%b | out=%b",in,sel,y);
				 
#500 $finish;

end
      
endmodule