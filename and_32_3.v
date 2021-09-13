module and_32_3(out,a,b,c);
	input[31:0] a,b,c;
	output[31:0] out;
	wire[31:0] w1,out1;
	and_32 and1(w1,a,b);
	and_32 and2(out,c,w1);
endmodule
