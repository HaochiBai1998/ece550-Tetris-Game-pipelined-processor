module SR_Latch(R,S,Q,Q_bar);
	input R,S;
	output Q,Q_bar;
	nor nor1(Q,R,Q_bar);
	nor nor2(Q_bar,Q,S);
endmodule
