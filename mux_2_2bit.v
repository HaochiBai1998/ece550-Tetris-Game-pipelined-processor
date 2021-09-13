module mux_2_2bit(select,in0,in1,out);
	input select;
	input [1:0] in0, in1;
	output[1:0] out;
	assign out= select ? in1 : in0;
endmodule

