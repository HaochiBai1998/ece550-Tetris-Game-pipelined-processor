module and_5(out,a,b);
	input[4:0] a,b;
	output[4:0] out;
	and_4 a1(out[3:0],a[3:0],b[3:0]);
	and a2(out[4],a[4],b[4]);
endmodule
