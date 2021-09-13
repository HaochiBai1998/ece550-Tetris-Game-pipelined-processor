module AddSub(a,b,AddOrSub,cout,sum,isNotEqual,isLessThan,ovf);
	input[31:0] a,b;
	input AddOrSub;
	output cout,ovf;
	output[31:0] sum;
	output isNotEqual,isLessThan;
	wire cin,w3,w4,w5,w6,w7,w8,w9,w10,NotAS,temp_isLessThan,temp_isNotEqual,w1,w2;
	wire [31:0] Notsum,Nota,Notb,bin,Notbin;
	not_32 not1(Notb,b); 
	not_32 not2(Nota,a);
	mux_2_32bit mux_2_32bit_1(AddOrSub,b,Notb,bin);
	CSA_32 CSA_32_1(a,bin,AddOrSub,cout,sum);
	not_32 not3(Notsum,sum);
	not not5(NotAS,AddOrSub);
	and and1(w1,a[31],b[31],Notsum[31]);//abs'
	and and2(w2,Nota[31],Notb[31],sum[31]);//a'b's
	and and3(w5,Nota[31],b[31],sum[31]);//a'bs
	and and4(w6,a[31],Notb[31],Notsum[31]);//ab's'
	or or1(w7,w1,w2);//abs'+a'b's
	or or2(w8,w5,w6);//a'bs+ab's'
	and and5(w9,w7,NotAS);//AS'(abs'+a'b's)
	and and6(w10,w8,AddOrSub);//AS(a'bs'+ab's')
	or or3(ovf,w10,w9);
	assign w3=sum[31]?1:0;//isLessThan==1 if sum[31]=1
	not n1(w4,w3);
	assign temp_isLessThan=ovf?w4:w3;//if overflow, output not(isLessthan)
	or_1_32 o1(temp_isNotEqual,sum);//if any bit of sum is equal to 1 than isNotEqual=1
	mux_2_1bit m1(AddOrSub,1'b0,temp_isLessThan,isLessThan);//only when sub need to output isLessThan,otheriwise isLessThan=0
	mux_2_1bit m2(AddOrSub,1'b0,temp_isNotEqual,isNotEqual);//only when sub need to output isNotEqual,,otheriwise isNotEqual=0
	
	//mux_2_1bit(select,in0,in1,out);
endmodule
