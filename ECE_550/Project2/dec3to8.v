module dec3to8(out,in);

	input[2:0] in;
	output[7:0] out;
	wire nin3;
	wire[3:0] w1;
	dec2to4 d(w1,in[1:0]);
	
	not n1(nin3,in[2]);
	
	and a1(out[0],nin3,w1[0]);
	and a2(out[1],nin3,w1[1]);
	and a3(out[2],nin3,w1[2]);
	and a4(out[3],nin3,w1[3]);
	and a5(out[4],in[2],w1[0]);
	and a6(out[5],in[2],w1[1]);
	and a7(out[6],in[2],w1[2]);
	and a8(out[7],in[2],w1[3]);
endmodule
