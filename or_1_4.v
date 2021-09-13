module or_1_4(out,in0,in1,in2,in3);
	input in0,in1,in2,in3;
	output out;
	wire w1,w2;
	or or1(w1,in0,in1);
	or or2(w2,in2,in3);
	or or3(out,w1,w2);
endmodule
	