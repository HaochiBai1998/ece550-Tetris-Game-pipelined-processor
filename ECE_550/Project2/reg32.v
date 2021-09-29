module reg32(D,E,clock,Q,Q_bar);
	input[31:0] D;
	input clock;
	output[31:0] Q_bar,Q;
	input E;
	wire Enable;
	//d_ff(D,E,Q,Q_bar);
	genvar i;
	and a1(Enable,E,clock);
	generate 
		for(i=0;i<32;i=i+1)	begin: reg32
			d_ff d_n(D[i],Enable,Q[i],Q_bar[i]);
		end
	endgenerate
	
endmodule 