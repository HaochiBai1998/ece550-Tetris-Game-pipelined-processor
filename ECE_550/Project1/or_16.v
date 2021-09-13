module or_16(out,in1,in2);
	input[16:0] in1,in2;
	output[16:0] out;
	or_8 or1(out[7:0],in1[7:0],in2[7:0]);
	or_8 or2(out[15:8],in1[15:8],in2[15:8]);
endmodule
	