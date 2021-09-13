module and_1_4(out,in0,in1,in2,in3);
	input in0,in1,in2,in3;
	output out;
	wire w1,w2;
	and and1(w1,in0,in1);
	and and2(w2,in2,in3);
	and and3(out,w1,w2);
endmodule
	