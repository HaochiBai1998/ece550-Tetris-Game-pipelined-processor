module isequal_5(result,a,b);
	input[4:0] a,b;
	output result;
	wire[4:0] w1;
	xnor_5 xn(w1,a,b);
	and_1_5 a2(result,w1[0],w1[1],w1[2],w1[3],w1[4]);
	// and_1_5(out,a,b,c,d,e);
	// and_5(out,a,b);
endmodule
