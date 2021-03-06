module write_port(cwReg,cwEnable,out);
	input[4:0] cwReg;
	input cwEnable;
	output[31:0] out;
	wire[31:0] w1;
	dec5to32 d1(w1,cwReg);
	
	genvar i;
	generate
		for(i=0;i<32;i=i+1)	begin: wport
			and a_n(out[i],w1[i],cwEnable);
		end
	endgenerate
	
endmodule
