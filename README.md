# NanoProcessor

## Introduction

This is a design of a simple microprocessor using VHDL , referred to as a "nanoprocessor", which is capable of executing a basic set of instructions. The nanoprocessor is designed to handle arithmetic operations, branching, and basic data manipulation.

## Components and Modules

The key components/modules developed or extended in this project include:

- **4-bit Add/Subtract Unit**: This unit is capable of adding and subtracting numbers represented using 2’s complement.
  
- **3-bit Adder**: Used for incrementing the Program Counter.

- **3-bit Program Counter (PC)**: The program counter is responsible for keeping track of the current instruction being executed. It can be reset to 0 when required.

- **Register Bank**: Contains 8, 4-bit registers (R0 to R7). The value of R0 is hardcoded to all zeros.

- **Program ROM**: Stores the Assembly program. It was built by extending the ROM-based LUT developed earlier.

## Instruction Set

The nanoprocessor supports the following instructions:

1. **MOVI R, d**: Move immediate value d to register R.
   - Format: `1 0 R R R 0 0 0 d d d d`

2. **ADD Ra, Rb**: Add values in registers Ra and Rb and store the result in Ra.
   - Format: `0 0 Ra Ra Ra Rb Rb Rb 0 0 0 0`

3. **NEG R**: Compute the 2’s complement of register R.
   - Format: `0 1 R R R 0 0 0 0 0 0 0`

4. **JZR R, d**: Jump if the value in register R is 0. 
   - Format: `1 1 R R R 0 0 0 0 d d d`

