module DFF_3(D,Clock,out,out_bar);
	input[2:0] D;
	input Clock;
	output[2:0] out;
	output[2:0] out_bar;
	d_ff DFF1(D[0],Clock,out[0],out_bar[0]);
	d_ff DFF2(D[1],Clock,out[1],out_bar[1]);
	d_ff DFF3(D[2],Clock,out[2],out_bar[2]);
	//d_ff(D,Clock,Q,Q_bar)
endmodule