module dec2_4(out,in,en);

	input[1:0] in;
	input en;
	output[3:0] out;
	wire[1:0] nin;
	not not0(nin[0],in[0]);
	not not1(nin[1],in[1]);
	and and0(out[0],nin[1],nin[0],en);
	and and1(out[1],nin[1],in[0],en);
	and and2(out[2],in[1],nin[0],en);
	and and3(out[3],in[1],in[0],en);
endmodule
