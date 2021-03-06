module CSA_16(a,b,cin,cout,sum);
	input[15:0] a,b;
	input cin;
	output cout;
	output[15:0] sum;
	wire[7:0] out1,out2;
	wire w1,w2,w3;
	CSA_8 CSA_8_1(a[7:0],b[7:0],cin,w1,sum[7:0]);
	CSA_8 CSA_8_2(a[15:8],b[15:8],1'b0,w2,out1);
	CSA_8 CSA_8_3(a[15:8],b[15:8],1'b1,w3,out2);
	mux_2_8bit mux_2_8bit_1(w1,out1,out2,sum[15:8]);
	assign cout=w1?w3:w2;

endmodule
