module d_ff(D,E,Q,Q_bar);
	input D,E;
	output Q,Q_bar;
	wire w1,w2,E_bar,D_bar;
	not not1(E_bar,E);
	D_Latch D1(E_bar,D,w1,w2);
	D_Latch D2(E,w1,Q,Q_bar);
endmodule
