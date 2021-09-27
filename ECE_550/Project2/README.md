# Project Checkpoint 2
 - Author: Haochi Bai	
 - Date: 2021/9/22
 - Course: ECE 550DK, Duke Kunshan University
 - Term: 2021fall
 - Professor Xin Li

### Design Description

I built up and simulated a register file using Verilog. It has two read ports, one write port and 32 32-bit register. These two read ports can read data from register controlled by ctrl_readRegB, ctrl_readRegA( which defines the register to be read) and the data output will be stored in data_readRegA, data_readRegA. The write port can write data from data_writeReg to a register controlled by ctrl_writeReg (when ctrl_writeEnable is true). A 32-bit register can receive data from data_writeReg and later be read by read port, when ctrl_reset is flipped to 1, the data in the register will be reset. A clock signal control  DFF and register. 

Estimated maximum clock frequency: 

The minimum clock period need to be longer than the circuit delay, we assume each gate causes one gate delay, my 5 to 32 decoder will cause 3 gate delay, my DFF will cause 2 gate delay, my Register will cause 2 gate delay

Write port delay= 3 (5 to 32 decoder) + 1(AND gate) + 2(Register) =6 gate delay

Read port delay= 3 (5 to 32 decoder) +1(tristate)=4 gate delay

As a result, the minimum clock period need to be longer than 6 gate delay

### Components

Before designing register file. I built up several components for this project. 2 5-bit to 32-bit decoder, 2 32-bit tri-state, 32 32-bit register, 32 32-bit register0. 

##### dec5to32(out,in)

I used a 2 to 4 decoder, a 3 to 8 decoder and 32 AND gate to build up a 5 to 32 decoder.  It converts 5-bit signal to 32-bit using one-hot decoding method.

##### tristate32(out,in,selector)

I combine 32 1-bit tri-state to get 32-bit tri-state, use one bit selector to control. When the selector is flipped to 0, Z(high impedance) will be assigned to output , when the selector is flipped to 1, the input will be assigned to output.

##### register(D,Q,en,clk,clr)

I use DFFE to build 32-bit registers. When clk signal is assigned to 1, the register will check whether registers enable write. If en==1, then output Q will be assigned to the data stored in D. When clr is assigned to 1. The output Q will be cleared.

##### register0(D,Q,en,clk,clr)

I use DFFE to build 32-bit register0. No matter what is written to register, the output Q will be 32'h0000000.

### Modules inside register file

##### Write port 

I use a 5 to 32 decoder to change 5-bit ctrl_writeReg signal into 32-bit one-hot signal to enable write to 1 of 32 32-bit registers. I then do AND operation between 32-bit one-hot signal and ctrl_writeEnable signal to control whether I need to enable write port. if the write port is enabled, I will write the data inside data_writeReg to one of 32-bit register(If register0, the data will be ignored).

##### 32 32-bit register

I use a **register0** component and 31 **register** components to build up 32 32-bit register. The en port will be connected to the output of write port. And the output Q of 32 registers will be stored in a 32*32 bit wire varible named **Buffer** (wire[31:0] Buffer[0:31]) . 

##### Read port

A register file supports two Read ports. I use a 5 to 32 decoder to change 5-bit ctrl_readRegA(ctrl_readRegB) signal into 32-bit one-hot signal. Then the 32-bit one-hot signal will then be connected to **tristate32** in order to output only the data from desired register, which is stored in Buffer. The output of **tristate32 ** will then be stored in data_readRegA (data_readRegB). 



















