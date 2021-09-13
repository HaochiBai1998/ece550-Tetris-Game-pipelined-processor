module and_16(out,in1,in2);
	input[15:0] in1,in2;
	output[15:0] out;
	and_8 and1(out[7:0],in1[7:0],in2[7:0]);
	and_8 and2(out[15:8],in1[15:8],in2[15:8]);
endmodule
	