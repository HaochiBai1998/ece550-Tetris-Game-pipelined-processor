# Project Checkpoint 1
 - Author: Haochi Bai
 - Date: 2021/9/13
 - Course: ECE 550DK, Dukekunshan University, China
 - Term: 2021fall
 - Professor Xin Li

## Duke Community Standard, Affirmation
 I affirm that each submission complies with the Duke Community Standard and the guidelines set forth for this assignment.

## Briefly Introductian Of ALU 
In computing, an arithmetic logic unit (ALU) is a combinational digital circuit that performs arithmetic and bitwise operations on integer binary numbers. In this project, we use verilog to simulate the implementation of ALU

## Input & Output Varibles

data_operandA: 32 bits input Data Operand A

data_operandB: 32 bits input Data Operand B

ctrl_ALUopcode: 5 bits input ALU opcode, '00000' determines ADD operation, '00001' determines SUB operation, '00010' determines bitwise AND operation, '00011' determines bitwise OR operation, '00100' determines SLL operation, '00101' determines SRA operation.

ctrl_shiftamt: 5 bits input which controls data shift amount.

data_result: 32 bits output after completing calculation.

isNotEqual: 1 bit output which will be high when data_operandA!=data_operandB after subtraction.

isLessThan: 1 bit output which will be high when data_operandA<data_operandB after subtraction.

overflow: 1 bit output which will be high when the Add/Sub operation cause overflow.

## Design Description	

In this part, I will briefly introduce the my logic design of different modules 

##### AddSub module

In this module, I combine adder and subtracter together. When ctrl_ALUopcode[0]=1, I need to do subtraction, I assign bin= ~b+1, and then do add operation. When ctrl_ALUopcode[0]=0, I directly do add operation. 

I use a 32-bit Carry Select Adder (CSA) to do add operation. For a 32-bit  CSA, I use three 16-bit CSA combined with a 16-bit 2:1 mux. For a 16-bit  CSA, I use three 8-bit CSA combined with a 8-bit 2:1 mux. For a 8-bit  CSA, I use three 4-bit CSA combined with a 4-bit 2:1 mux. For a 4-bit  CSA, I use three 2-bit Ripple carry adder combined with a 2-bit 2:1 mux. The outputs of CSA_32 is **sum, cout. **

**IsNotEqual** 

IsNotEqual is determined after the sub operation finished. If any bit of sum is equal to 1 then isNotEqual=1. And it's written inside the module ADDSub.

**Overflow**

Overflow is determined after the sub operation finished. I use the MSB of a,b,sum and AddorSub(AS) to determine overflow. When we do add operation, overflow happens when add two non-negative number a,b get sum<0 or add negative number a,b get sum>0. When we do sub operation, overflow happens when non-negative number a- negative number b get sum<0 or negative number a- non-negative number b get sum>0. Thus overflow=AS(ab's'+a'bs)+AS'(a'b's+abs'). And it's written inside the module ADDSub.

##### 32 bits bitwise OR

I use 32 OR gate: or(out[i],a[i],b[i]) to get 32-bit output bit by bit .

##### 32 bits bitwise AND

I use 32 AND gate and(out[i],a[i],b[i]) to get 32-bit output bit by bit .

##### Shift Right Algebraic

SLL is done in 5 stages. 

1. right shift 1 bit when shiftamt[0]=1, use 32 1-bit 2:1 mux to shift 1 bit 

   out[31]=n[31],

   count i from 1 to 31 out[i]=in[i+1]

2. right shift 2 bits when shiftamt[1]=1, use 32 2-bit 2:1 mux to shift 2 bit 

   count i from 30 to 31 out[i]=n[31]

   count i from 0 to 29 out[i]=in[i+2]

1. right shift 4 bits when shiftamt[2]=1, use 32 4-bit 2:1 mux to shift 4 bit 

   count i from 28 to 31 out[i]=n[31]

   count i from 0 to 27 out[i]=in[i+4]

2. right shift 8 bits when shiftamt[3]=1, use 32 8-bit 2:1 mux to shift 8 bit 

   count i from 24 to 31 out[i]=n[31]

   count i from 0 to 23 out[i]=in[i+8]

3. right shift 16 bits when shiftamt[4]=1, use 32 16-bit 2:1 mux to shift 16 bit 

   count i from 16 to 31 out[i]=in[31]

   count i from 0 to 15 out[i]=in[i+16]

##### Shift Left Logical

SLL is done in 5 stages. 

1. left shift 1 bit when shiftamt[0]=1, use 32 1-bit 2:1 mux to shift 1 bit 

   out[0]=0,

   count i from 1 to 31 out[i]=in[i-1]

2. left shift 2 bits when shiftamt[1]=1, use 32 2-bit 2:1 mux to shift 2 bit 

   count i from 0 to 1 out[i]=0

   count i from 2 to 31 out[i]=in[i-2]

1. left shift 4 bits when shiftamt[2]=1, use 32 4-bit 2:1 mux to shift 4 bit 

   count i from 0 to 3 out[i]=0

   count i from 4 to 31 out[i]=in[i-4]

2. left shift 8 bits when shiftamt[3]=1, use 32 8-bit 2:1 mux to shift 8 bit 

   count i from 0 to 7 out[i]=0

   count i from 8 to 31 out[i]=in[i-8]

3. left shift 16 bits when shiftamt[4]=1, use 32 16-bit 2:1 mux to shift 16 bit 

   count i from 0 to 15 out[i]=0

   count i from 16 to 31 out[i]=in[i-16]





