module full_adder(a,b,cin,cout,sum);
	input a,b,cin;
	output cout,sum;
	wire w1,w2,w3;
	xor xor1(w1,a,b);
	xor xor2(sum,w1,cin);
	and and1(w2,cin,w1);
	and and2(w3,a,b);
	or or1(cout,w2,w3);
endmodule 