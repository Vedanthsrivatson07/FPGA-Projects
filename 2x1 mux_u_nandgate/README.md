A 2x1 multiplexer (MUX) can be constructed using NAND gates. A multiplexer is a digital switch that selects one of two inputs and forwards the selected input to the output. Here's the logic diagram of a 2x1 MUX using NAND gates:

![image](https://user-images.githubusercontent.com/71482618/222456341-cf4ca4e9-3e17-4453-a253-e738942b8314.png)

             
In this diagram, the two inputs A and B are connected to one input of each NAND gate. The other input of each NAND gate is connected to the control input C. The output of the first NAND gate is connected to the input of the second NAND gate, and the output of the second NAND gate is the output of the MUX.

The truth table for this 2x1 MUX is as follows:

  C  |  A  |  B  |  Output
-----|-----|-----|--------
  0  |  0  |  X  |    0
  0  |  1  |  X  |    1
  1  |  X  |  0  |    0
  1  |  X  |  1  |    1

(Note: "X" means "don't care.")
In this truth table, the control input C selects which input (A or B) is passed to the output. If C is 0, input A is passed to the output, and if C is 1, input B is passed to the output. The two NAND gates together perform the necessary logical operations to select the correct input based on the value of C.
