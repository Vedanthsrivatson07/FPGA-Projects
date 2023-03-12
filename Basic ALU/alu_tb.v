module alu_tb();
reg [7:0] a,b;
reg [3:0]cl;
wire [7:0]out;

alu inst(a,b,cl,out);


initial 
begin
a=100; b=50; cl=0; #10;
a=100; b=50; cl=1; #10;
a=100; b=50; cl=2; #10;
a=100; b=50; cl=3; #10;
a=100; b=50; cl=4; #10;
a=100; b=50; cl=5; #10;
a=100; b=50; cl=6; #10;
a=100; b=50; cl=7; #10;
a=100; b=50; cl=8; #10;
a=100; b=50; cl=9; #10;
a=100; b=50; cl=10; #10;
a=100; b=50; cl=11; #10;
a=100; b=50; cl=12; #10;
a=100; b=50; cl=13; #10;
a=100; b=50; cl=14; #10;
a=100; b=50; cl=15; #10;
end

initial
begin
$monitor ("a=%d,b=%d,cl=%d,out=%d",a,b,cl,out);


end
endmodule