module not_32(out,in);
	input[31:0] in;
	output[31:0] out;
	not_16 not_16_1(out[15:0],in[15:0]);
	not_16 not_16_2(out[31:16],in[31:16]);
endmodule
	