module half_adder(a,b,cout,sum);
	input a,b;
	output cout,sum;
	and and1(cout,a,b);
	xor xor1(sum,a,b);
endmodule 