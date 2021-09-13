module One_bit_adder_NAND_imple(a,b,cin,S,cout);
	input a,b,cin;
	output S,cout;
	wire w1,w2,w3,w4,w5,w6,w7,w8;
	nand nand1(w1,a,b);
	nand nand2(w2,a,w1);
	nand nand3(w3,b,w1);
	nand nand4(w4,w3,w2);
	nand nand5(w5,w4,cin);
	nand nand6(w6,w4,w5);
	nand nand7(w7,w5,cin);
	nand nand8(S,w7,w6);
	nand nand9(cout,w5,w1);
endmodule
