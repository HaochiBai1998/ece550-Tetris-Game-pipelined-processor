module mux_2_32bit(select,in0,in1,out);
	input select;
	input [31:0] in0, in1;
	output[31:0] out;
	assign out= select ? in1 : in0;
endmodule

