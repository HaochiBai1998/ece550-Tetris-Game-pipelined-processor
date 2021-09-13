module And_combination_5(x0,x1,x2,x3,x4,y0,y1,y2,y3,y4,
	x0y4,x0y3,x0y2,x0y1,x0y0,
	x1y4,x1y3,x1y2,x1y1,x1y0,
	x2y4,x2y3,x2y2,x2y1,x2y0,
	x3y4,x3y3,x3y2,x3y1,x3y0,
	x4y4,x4y3,x4y2,x4y1,x4y0);
	input x0,x1,x2,x3,x4;
	input y0,y1,y2,y3,y4;
	output x0y4,x0y3,x0y2,x0y1,x0y0,
	x1y4,x1y3,x1y2,x1y1,x1y0,
	x2y4,x2y3,x2y2,x2y1,x2y0,
	x3y4,x3y3,x3y2,x3y1,x3y0,
	x4y4,x4y3,x4y2,x4y1,x4y0;
	and and1(x0y4,x0,y4);
	and and2(x0y3,x0,y3);
	and and3(x0y2,x0,y2);
	and and4(x0y1,x0,y1);
	and and5(x0y0,x0,y0);
	and and6(x1y4,x1,y4);
	and and7(x1y3,x1,y3);
	and and8(x1y2,x1,y2);
	and and9(x1y1,x1,y1);
	and and10(x1y0,x1,y0);
	and and11(x2y4,x2,y4);
	and and12(x2y3,x2,y3);
	and and13(x2y2,x2,y2);
	and and14(x2y1,x2,y1);
	and and15(x2y0,x2,y0);
	and and16(x3y4,x3,y4);
	and and17(x3y3,x3,y3);
	and and18(x3y2,x3,y2);
	and and19(x3y1,x3,y1);
	and and20(x3y0,x3,y0);
	and and21(x4y4,x4,y4);
	and and22(x4y3,x4,y3);
	and and23(x4y2,x4,y2);
	and and24(x4y1,x4,y1);
	and and25(x4y0,x4,y0);
endmodule
	

