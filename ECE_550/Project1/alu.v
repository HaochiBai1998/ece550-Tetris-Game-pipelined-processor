module alu(data_operandA, data_operandB, ctrl_ALUopcode, ctrl_shiftamt, data_result, isNotEqual, isLessThan, overflow);

   input [31:0] data_operandA, data_operandB;
   input [4:0] ctrl_ALUopcode, ctrl_shiftamt;
   output [31:0] data_result;
   output isNotEqual, isLessThan, overflow;
	wire[31:0] AS_result,And_result,Or_result,SRA_result,SLL_result;
	wire[4:0] ALU_Add,ALU_Sub;
	wire ovf,cout,isADDorSub,temp_isNotEqual,temp_isLessThan,isADD,isSub;
   // YOUR CODE HERE //
	AddSub AS1(data_operandA,data_operandB,ctrl_ALUopcode[0],cout,AS_result,temp_isNotEqual,temp_isLessThan,ovf); //add or sub
	and_32 A1(And_result,data_operandA,data_operandB);//32bit and
	or_32 O1(Or_result,data_operandA,data_operandB);//32bit or
	SRA SRA1(SRA_result,data_operandA,ctrl_shiftamt);//right shift
	SLL SLL1(SLL_result,data_operandA,ctrl_shiftamt);//left shift
	mux_ALU_selector mAs1(ctrl_ALUopcode,AS_result,AS_result,And_result,Or_result,SLL_result,SRA_result,data_result);
	assign ALU_Add=5'b00000;
	assign ALU_Sub=5'b00001;
	isequal_5 ie1(isADD,ctrl_ALUopcode,ALU_Add);
	isequal_5 ie2(isSub,ctrl_ALUopcode,ALU_Sub);
	or o1(isADDorSub,isADD,isSub);
	assign overflow=isADDorSub?ovf:1'b0;
	assign isNotEqual=isSub?temp_isNotEqual:1'b0;
	assign isLessThan=isSub?temp_isLessThan:1'b0;
	//and_1_5(out,a,b,c,d,e);
	//isequal_5(result,a,b);
	//mux_ALU_selector(select,in0,in1,in2,in3,in4,in5,out);
	//AddSub(a,b,AddOrSub,cout,sum,isNotEqual,isLessThan,ovf);
	//and_32(out,a,b);
	//or_32(out,a,b);
	//SRA(out,a,shiftamt);
	//SLL(out,a,shiftamt);
	//
endmodule

