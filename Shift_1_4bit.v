module Shift_1_4bit(out,cin,cout,a,select);//select=0 leftshift, select=1 rightshift
	input[3:0] a;
	input cin;
	input select;
	output[3:0] out;
	output cout;	
	mux_2_1bit mux(select,a[3],a[0],cout);
	mux_2_1bit mux1(select,a[2],cin,out[3]);
	mux_2_1bit mux2(select,a[1],a[3],out[2]);
	mux_2_1bit mux3(select,a[0],a[2],out[1]);
	mux_2_1bit mux4(select,cin,a[1],out[0]);
endmodule
