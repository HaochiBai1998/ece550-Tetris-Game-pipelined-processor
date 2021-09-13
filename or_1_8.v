module or_1_8(out,in0,in1,in2,in3,in4,in5,in6,in7);
	input in0,in1,in2,in3,in4,in5,in6,in7;
	output out;
	wire w1,w2;
	or_1_4 a1(w1,in0,in1,in2,in3);
	or_1_4 a2(w2,in4,in5,in6,in7);
	or a3(out,w1,w2);
endmodule
