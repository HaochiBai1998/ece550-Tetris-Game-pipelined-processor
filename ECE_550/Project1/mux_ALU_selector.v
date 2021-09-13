module mux_ALU_selector(select,in0,in1,in2,in3,in4,in5,out);
	input[31:0] in0,in1,in2,in3,in4,in5;
	input[4:0] select;
	output[31:0] out;
	mux_32 m1(select,in0,in1,in2,in3,in4,in5,32'b0,32'b0,32'b0,32'b0,32'b0,32'b0,32'b0,32'b0,32'b0,32'b0,
					32'b0,32'b0,32'b0,32'b0,32'b0,32'b0,32'b0,32'b0,32'b0,32'b0,32'b0,32'b0,32'b0,32'b0,32'b0,32'b0,out);
endmodule
