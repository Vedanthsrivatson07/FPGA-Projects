module alu(a,b,cl,out);
input[7:0]a,b;
input[3:0]cl;
output reg[7:0]out;

always@(*)
begin
		if(cl==4'b0000)
				out=a+b;
		else if(cl==4'b0001)
				out=a-b;
		else if(cl==4'b0010)
				out=a*b;
		else if(cl==4'b0011)
				out=a/b;
		else if(cl==4'b0100)
				out=a & b;
		else if(cl==4'b0101)
				out=a | b;
		else if(cl==4'b0110)
				out=~(a & b);
		else if(cl==4'b0111)
				out=~(a | b);
		else if(cl==4'b0100)
				out=a ^ b;
		else if(cl==4'b1001)
				out=~(a ^ b);
		else if(cl==4'b1010)
				out=~b;
		else if(cl==4'b1011)
				out=~a;
		else if(cl==4'b1000)
				out= a>> 1;
		else if(cl==4'b1101)
				out=a<< 1;
		else if(cl==4'b1110)
				out=b>> 1;
		else if(cl==4'b1111)
				out=b<< 1;
		else	
				out=a+b;
end
endmodule