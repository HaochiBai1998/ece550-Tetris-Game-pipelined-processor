module d_ff(D,Clock,Q,Q_bar);
	input D,Clock;
	output Q,Q_bar;
	wire w1,w2,Clock_bar,D_bar;
	not not1(Clock_bar,Clock);
	D_Latch D1(Clock_bar,D,w1,w2);
	D_Latch D2(Clock,w1,Q,Q_bar);
endmodule
