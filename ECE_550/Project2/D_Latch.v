module D_Latch(E,D,Q,Q_bar);
	input E,D;
	output Q,Q_bar;
	wire w1,w2,D_bar;
	not not1(D_bar,D);
	and and1(w1,E,D_bar);
	and and2(w2,D,E);
	SR_Latch SR1(w1,w2,Q,Q_bar);
endmodule
