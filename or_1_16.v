module or_1_16(out,in);
	input[15:0] in;
	output out;
	wire w1,w2;
	or_1_8 o1(w1,in[0],in[1],in[2],in[3],in[4],in[5],in[6],in[7]);
	or_1_8 o2(w2,in[8],in[9],in[10],in[11],in[12],in[13],in[14],in[15]);
	or o3(out,w1,w2);
endmodule
