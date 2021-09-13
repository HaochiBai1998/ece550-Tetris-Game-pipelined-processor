module and_1_32(out,in);
	input[31:0] in;
	output out;
	wire w1,w2;
	and_1_16 a1(w1,in[15:0]);
	and_1_16 a2(w2,in[31:15]);
	and a3(out,w1,w2);
endmodule
