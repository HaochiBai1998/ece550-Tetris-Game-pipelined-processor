module xnor_5(out,a,b);
	input[4:0] a,b;
	output[4:0] out;
	xnor x1(out[0],a[0],b[0]);
	xnor x2(out[1],a[1],b[1]);
	xnor x3(out[2],a[2],b[2]);
	xnor x4(out[3],a[3],b[3]);
	xnor x5(out[4],a[4],b[4]);
endmodule
