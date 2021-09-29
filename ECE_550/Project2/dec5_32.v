module dec5_32(out,in,en);
	input[4:0] in;
	input en;
	output[31:0] out;
	wire[3:0] w1;
	dec2_4 d1(w1,in[1:0],en);
	dec3_8 d2(out[7:0],in[4:2],w1[0]);
	dec3_8 d3(out[15:8],in[4:2],w1[1]);
	dec3_8 d4(out[23:16],in[4:2],w1[2]);
	dec3_8 d5(out[31:24],in[4:2],w1[3]);
	
endmodule
	
			
	
	