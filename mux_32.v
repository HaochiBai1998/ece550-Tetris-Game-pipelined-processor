module mux_32(select,in0,in1,in2,in3,in4,in5,in6,in7,in8,in9,in10,in11,in12,in13,in14,in15,
					in16,in17,in18,in19,in20,in21,in22,in23,in24,in25,in26,in27,in28,in29,in30,in31,out);
	input[4:0] select;
	input [31:0] in0,in1,in2,in3,in4,in5,in6,in7,in8,in9,in10,in11,in12,in13,in14,in15,
					in16,in17,in18,in19,in20,in21,in22,in23,in24,in25,in26,in27,in28,in29,in30,in31;
	output[31:0] out;
	wire [31:0] w1,w2;
	mux_16 first_top(.select(select[3:0]),.in0(in0),.in1(in1),.in2(in2),.in3(in3),.in4(in4),.in5(in5),.in6(in6),.in7(in7),
	.in8(in8),.in9(in9),.in10(in10),.in11(in11),.in12(in12),.in13(in13),.in14(in14),.in15(in15),.out(w1));
	mux_16 first_bottom(.select(select[3:0]),.in0(in16),.in1(in17),.in2(in18),.in3(in19),.in4(in20),.in5(in21),.in6(in22),.in7(in23),
	.in8(in24),.in9(in25),.in10(in26),.in11(in27),.in12(in28),.in13(in29),.in14(in30),.in15(in31),.out(w2));
	mux_2 second(.select(select[4]),.in0(w1),.in1(w2),.out(out));
endmodule

