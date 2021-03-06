module CSA_32(a,b,cin,cout,sum);
	input[31:0] a,b;
	input cin;
	output cout;
	output[31:0] sum;
	wire[15:0] out1,out2;
	wire w1,w2,w3;
	CSA_16 CSA_16_1(a[15:0],b[15:0],cin,w1,sum[15:0]);
	CSA_16 CSA_16_2(a[31:16],b[31:16],1'b0,w2,out1);
	CSA_16 CSA_16_3(a[31:16],b[31:16],1'b1,w3,out2);
	mux_2_16bit mux_2_16bit_1(w1,out1,out2,sum[31:16]);
	assign cout=w1?w3:w2;

endmodule
