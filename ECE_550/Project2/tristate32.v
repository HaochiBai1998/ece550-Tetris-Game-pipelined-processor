module tristate32(out,in,selector);
	input [31:0] in;
	output[31:0] out;
	input selector;
	
	genvar i;
	generate 
		for (i=0;i<32;i=i+1)	begin:tristate32
			assign out[i]=selector?(in[i]? 1'b1:1'b0):1'bz;
		end
	endgenerate
endmodule
