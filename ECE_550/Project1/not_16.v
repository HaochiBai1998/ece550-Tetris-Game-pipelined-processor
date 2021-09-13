module not_16(out,in);
	input[15:0] in;
	output[15:0] out;
	not_8 not_8_1(out[7:0],in[7:0]);
	not_8 not_8_2(out[15:8],in[15:8]);
endmodule
	