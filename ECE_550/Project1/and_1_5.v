module and_1_5(out,a,b,c,d,e);
	input a,b,c,d,e;
	output out;
	wire w1,w2,w3;
	and a1(w1,a,b);
	and a2(w2,w1,c);
	and a3(w3,w2,d);
	and a4(out,w3,e);
endmodule
