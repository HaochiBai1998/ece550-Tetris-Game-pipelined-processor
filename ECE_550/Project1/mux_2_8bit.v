module mux_2_8bit(select,in0,in1,out);
	input select;
	input [7:0] in0, in1;
	output[7:0] out;
	assign out= select ? in1 : in0;
endmodule

