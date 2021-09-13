module and_4(out,in1,in2);
	input[3:0] in1,in2;
	output[3:0] out;
	and and1(out[0],in1[0],in2[0]);
	and and2(out[1],in1[1],in2[1]);
	and and3(out[2],in1[2],in2[2]);
	and and4(out[3],in1[3],in2[3]);
endmodule
	