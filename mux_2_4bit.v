module mux_2_4bit(select,in0,in1,out);
	input select;
	input [3:0] in0, in1;
	output[3:0] out;
	assign out= select ? in1 : in0;
endmodule

