module or_32(out,in1,in2);
	input[31:0] in1,in2;
	output[31:0] out;
	or_16 or1(out[15:0],in1[15:0],in2[15:0]);
	or_16 or2(out[31:16],in1[31:16],in2[31:16]);
endmodule
	