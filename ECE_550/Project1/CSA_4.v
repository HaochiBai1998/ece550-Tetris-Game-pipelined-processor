module CSA_4(a,b,cin,cout,sum);
	input[3:0] a,b;
	input cin;
	output cout;
	output[3:0] sum;
	wire[1:0] out1,out2;
	wire w1,w2,w3;
	RCA_2 RCA_2_1(a[1:0],b[1:0],cin,w1,sum[1:0]);
	RCA_2 RCA_2_2(a[3:2],b[3:2],1'b0,w2,out1);
	RCA_2 RCA_2_3(a[3:2],b[3:2],1'b1,w3,out2);
	mux_2_2bit mux_2_2bit_1(w1,out1,out2,sum[3:2]);
	assign cout=w1?w3:w2;
	
endmodule
