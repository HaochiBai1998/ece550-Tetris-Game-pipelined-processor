module and_8(out,in1,in2);
	input[7:0] in1,in2;
	output[7:0] out;
	and_4 and1(out[3:0],in1[3:0],in2[3:0]);
	and_4 and2(out[7:4],in1[7:4],in2[7:4]);
endmodule
	