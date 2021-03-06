module regfile (
    clock,
    ctrl_writeEnable,
    ctrl_reset, ctrl_writeReg,
    ctrl_readRegA, ctrl_readRegB, data_writeReg,
    data_readRegA, data_readRegB
);

   input clock, ctrl_writeEnable, ctrl_reset;
   input [4:0] ctrl_writeReg, ctrl_readRegA, ctrl_readRegB;
   input [31:0] data_writeReg;
	wire [31:0] Reg_Enable;
	wire [31:0] Buffer[0:31];
	wire[31:0] out_RDec1,out_RDec2;
   output [31:0] data_readRegA, data_readRegB;
	genvar i;
	//components
	//1.dec5_32(out,in);
	//3. register(D,Q,en,clk,clr);
	//4. register0(D,Q,en,clk,clr);
	
	//write port
	dec5_32 d1(Reg_Enable,ctrl_writeReg,ctrl_writeEnable);	
	//write to 32 32-bit register
	register0 r0(data_writeReg,Buffer[0],Reg_Enable[0],clock,ctrl_reset);	//register0
	generate
		for (i=1;i<32;i=i+1)	begin: wtoReg
			register r_n(data_writeReg,Buffer[i],Reg_Enable[i],clock,ctrl_reset); // rest 32 register
		end
	endgenerate
	//Read port 1
	dec5_32 d2(out_RDec1,ctrl_readRegA,1);
	generate
		for (i=0;i<32;i=i+1) begin:Readport1
			assign data_readRegA=out_RDec1[i]?Buffer[i]:32'bz;

		end
	endgenerate	
	//Read port 2
	dec5_32 d3(out_RDec2,ctrl_readRegB,1);
	generate
		for (i=0;i<32;i=i+1) begin:Readport2
			assign data_readRegB=out_RDec2[i]?Buffer[i]:32'bz;
		end
	endgenerate

endmodule
