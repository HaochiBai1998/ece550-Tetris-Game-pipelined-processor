module two_bit_adder(a,b,cin,out,cout);
	input [0:1] a,b;
	input cin;
	output [0:1] out;
	output cout;
	wire[0:1] w1;
	full_adder fa1(.a(a[0]),.b(b[0]),.cin(cin),.cout(w1[0]),.sum(out[0]));
	full_adder fa2(.a(a[1]),.b(b[1]),.cin(w1[0]),.cout(cout),.sum(out[1]));
endmodule
