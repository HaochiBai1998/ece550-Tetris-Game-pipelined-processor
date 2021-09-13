module mux_2_16bit(select,in0,in1,out);
	input select;
	input [15:0] in0, in1;
	output[15:0] out;
	assign out= select ? in1 : in0;
endmodule

