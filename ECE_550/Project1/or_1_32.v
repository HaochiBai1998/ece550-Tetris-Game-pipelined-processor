module or_1_32(out,in);
	input[31:0] in;
	output out;
	wire w1,w2;
	or_1_16 o1(w1,in[15:0]);
	or_1_16 o2(w2,in[31:15]);
	or o3(out,w1,w2);
endmodule
