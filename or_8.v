module or_8(out,in1,in2);
	input[7:0] in1,in2;
	output[7:0] out;
	or_4 or1(out[3:0],in1[3:0],in2[3:0]);
	or_4 or2(out[7:4],in1[7:4],in2[7:4]);
endmodule
	