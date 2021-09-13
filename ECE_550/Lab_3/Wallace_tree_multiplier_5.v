module Wallace_tree_multiplier_5(x,y,out);
input[4:0] x,y;
output[9:0] out;
wire a,b,c,d,e,f,g,h,i,j,k,l;
wire cout_a,cout_b,cout_c,cout_d,cout_e,cout_f,cout_g,cout_h,cout_i,
	cout_j,cout_k,cout_l,cout_m,cout_n,cout_o,cout_p,cout_q,cout_r,
	cout_s;
wire x0y4,x0y3,x0y2,x0y1,x0y0,
	x1y4,x1y3,x1y2,x1y1,x1y0,
	x2y4,x2y3,x2y2,x2y1,x2y0,
	x3y4,x3y3,x3y2,x3y1,x3y0,
	x4y4,x4y3,x4y2,x4y1,x4y0;
And_combination_5 And_combination_5_1(x[0],x[1],x[2],x[3],x[4],y[0],y[1],y[2],y[3],y[4],
	x0y4,x0y3,x0y2,x0y1,x0y0,
	x1y4,x1y3,x1y2,x1y1,x1y0,
	x2y4,x2y3,x2y2,x2y1,x2y0,
	x3y4,x3y3,x3y2,x3y1,x3y0,
	x4y4,x4y3,x4y2,x4y1,x4y0);
	half_adder half_adder1(x3y1,x4y0,cout_a,a);
	half_adder half_adder2(x3y2,x4y1,cout_b,b);
	half_adder half_adder3(x2y1,x3y0,cout_c,c);
	full_adder full_adder1(x1y3,x2y2,a,cout_d,d);
	full_adder full_adder2(x2y3,b,cout_a,cout_e,e);
	full_adder full_adder3(x3y3,x4y2,cout_b,cout_f,f);
	half_adder half_adder4(x1y1,x2y0,cout_g,g);
	full_adder full_adder4(x0y3,x1y2,c,cout_h,h);
	full_adder full_adder5(x0y4,d,cout_c,cout_i,i);
	full_adder full_adder6(x1y4,e,cout_d,cout_j,j);
	full_adder full_adder7(x2y4,f,cout_e,cout_k,k);
	full_adder full_adder8(x3y4,x4y3,cout_f,cout_l,l);
	assign out[0]=x0y0;
	half_adder half_adder5(x0y1,x1y0,cout_m,out[1]);
	full_adder full_adder9(x0y2,g,cout_m,cout_n,out[2]);
	full_adder full_adder10(h,cout_g,cout_n,cout_o,out[3]);
	full_adder full_adder11(i,cout_h,cout_o,cout_p,out[4]);
	full_adder full_adder12(j,cout_i,cout_p,cout_q,out[5]);
	full_adder full_adder13(k,cout_j,cout_q,cout_r,out[6]);
	full_adder full_adder14(l,cout_k,cout_r,cout_s,out[7]);
	full_adder full_adder15(x4y4,cout_l,cout_s,out[9],out[8]);
endmodule
