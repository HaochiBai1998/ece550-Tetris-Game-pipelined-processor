/*
    Set this file as top level entity when testing, it will call your skeleton and utilize your clocks
*/

module skeleton_test(clock, reset, test, t_ctrl_writeEnable, t_ctrl_writeReg, t_ctrl_readRegA, t_ctrl_readRegB,
							t_data_writeReg, t_data_readRegA, t_data_readRegB, t_test_out, t_test2_out, t_test3_out, t_test4_out,
							o_ctrl_writeEnable, o_ctrl_writeReg, o_data_writeReg);
    input clock, reset, test;
	 
    /** clock **/
    wire imem_clock, dmem_clock, processor_clock, regfile_clock;
     
    //wire clock_by2, clock_by4;
    
    /** Clock Divider **/
    // frequency_divider_by2 d1( clock , clock_by2 );
    // frequency_divider_by2 d2( clock_by2 , clock_by4 );
    wire stu_imem_clock,stu_dmem_clock,stu_processor_clock,stu_regfile_clock;

    assign imem_clock = stu_imem_clock;
    assign dmem_clock = stu_dmem_clock;
    assign processor_clock = stu_processor_clock;
    assign regfile_clock = stu_regfile_clock;

    skeleton student_skeleton(clock, reset, stu_imem_clock, stu_dmem_clock, stu_processor_clock, stu_regfile_clock);


	// Test reg file
	input t_ctrl_writeEnable;
    input [4:0] t_ctrl_writeReg, t_ctrl_readRegA, t_ctrl_readRegB;
    input [31:0] t_data_writeReg;
    output [31:0] t_data_readRegA, t_data_readRegB;
	output t_test_out;
	output [31:0] t_test2_out, t_test4_out;
	output [4:0] t_test3_out;
	output o_ctrl_writeEnable;
	output [4:0] o_ctrl_writeReg;
	output [31:0] o_data_writeReg;
	 
	// More wires
	wire ctrl_writeEnable;
    wire [4:0] ctrl_writeReg, ctrl_readRegA, ctrl_readRegB;
    wire [31:0] data_writeReg;

    /** IMEM **/
    wire [11:0] address_imem;
    wire [31:0] q_imem;
    imem my_imem(
        .address    (address_imem),            // address of data
        .clock      (imem_clock),              // you may need to invert the clock
        .q          (q_imem)                   // the raw instruction
    );

    /** DMEM **/
    wire [11:0] address_dmem;
    wire [31:0] data;
    wire wren;
    wire [31:0] q_dmem;
    dmem my_dmem(
        .address    (address_dmem),       // address of data
        .clock      (dmem_clock),         // may need to invert the clock
        .data	    (data),    // data you want to write
        .wren	    (wren),      // write enable
        .q          (q_dmem)    // data from dmem
    );

    /** REGFILE **/
    wire r_ctrl_writeEnable, r_reset;
    wire [4:0] r_ctrl_writeReg, r_ctrl_readRegA, r_ctrl_readRegB;
    wire [31:0] r_data_writeReg;
    wire [31:0] r_data_readRegA, r_data_readRegB;
	 
    mux_2_1bit	mux0(ctrl_writeEnable, t_ctrl_writeEnable, test, r_ctrl_writeEnable);
    mux_2_5bit  mux1(ctrl_writeReg, t_ctrl_writeReg, test, r_ctrl_writeReg);
    mux_2_5bit  mux2(ctrl_readRegA, t_ctrl_readRegA, test, r_ctrl_readRegA);
    mux_2_5bit  mux3(ctrl_readRegB, t_ctrl_readRegB, test, r_ctrl_readRegB);
    mux_2 		mux4(data_writeReg, t_data_writeReg, test, r_data_writeReg);
    assign t_data_readRegA = r_data_readRegA;
    assign t_data_readRegB = r_data_readRegB;
	 
	 assign r_reset = reset;
	 
    regfile my_regfile(
        regfile_clock,
        r_ctrl_writeEnable,
        r_reset,///////////////////////////////
        r_ctrl_writeReg,
        r_ctrl_readRegA,
        r_ctrl_readRegB,
        r_data_writeReg,
        r_data_readRegA,
        r_data_readRegB
    );

    /** PROCESSOR **/
    processor my_processor(
        // Control signals
        processor_clock,                          // I: The master clock
        reset,                          // I: A reset signal

        // Imem
        address_imem,                   // O: The address of the data to get from imem
        q_imem,                         // I: The data from imem

        // Dmem
        address_dmem,                   // O: The address of the data to get or put from/to dmem
        data,                           // O: The data to write to dmem
        wren,                           // O: Write enable for dmem
        q_dmem,                         // I: The data from dmem

        // Regfile
        ctrl_writeEnable,               // O: Write enable for regfile
        ctrl_writeReg,                  // O: Register to write to in regfile
        ctrl_readRegA,                  // O: Register to read from port A of regfile
        ctrl_readRegB,                  // O: Register to read from port B of regfile
        data_writeReg,                  // O: Data to write to for regfile
        r_data_readRegA,                // I: Data from port A of regfile
        r_data_readRegB                 // I: Data from port B of regfile
    );
	 
    assign o_ctrl_writeEnable = ctrl_writeEnable;
    assign o_ctrl_writeReg = ctrl_writeReg;
    assign o_data_writeReg = data_writeReg;

endmodule

module mux_2_5bit(a, b, sel, out);

    input [4:0] a, b;
    input sel;
    output [4:0] out;
    
    assign out = sel ? b : a;

endmodule

module mux_2_1bit(a, b, sel, out);

    input a, b;
    input sel;
    output out;
    
    assign out = sel ? b : a;

endmodule

module mux_2(a, b, sel, out);

    input [31:0] a, b;
    input sel;
    output [31:0] out;
    
    assign out = sel ? b : a;

endmodule
