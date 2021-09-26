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
	wire[31:0] out_WDec,out_RDec1,out_RDec2;

   output [31:0] data_readRegA, data_readRegB;
	
	
	
	genvar i;
   /* YOUR CODE HERE */
	//components
	//1.dec5to32(out,in);
	//2.tristate32(out,in,selector);
	//3. register(D,Q,en,clk,clr);
	//4. register0(D,Q,en,clk,clr);
	
	
	//write port
	dec5to32 d1(out_WDec,ctrl_writeReg);
	generate
		for(i=0;i<32;i=i+1)	begin: wport
			and and_n(Reg_Enable[i],out_WDec[i],ctrl_writeEnable);
		end
	endgenerate
	
	
	//write to 32 32-bit register
	register0 r0(data_writeReg,Buffer[0],Reg_Enable[0],clock,ctrl_reset);
	generate
		for (i=1;i<32;i=i+1)	begin: wtoReg
			register r_n(data_writeReg,Buffer[i],Reg_Enable[i],clock,ctrl_reset);
		end
	endgenerate
	//Read port 1
	dec5to32 d2(out_RDec1,ctrl_readRegA);
	generate
		for (i=0;i<32;i=i+1) begin:Readport1
			tristate32 t_n(data_readRegA,Buffer[i],out_RDec1[i]);
		end
	endgenerate	
	//Read port 2
	dec5to32 d3(out_RDec2,ctrl_readRegB);
	generate
		for (i=0;i<32;i=i+1) begin:Readport2
			tristate32 t_n(data_readRegB,Buffer[i],out_RDec2[i]);
		end
	endgenerate

endmodule
