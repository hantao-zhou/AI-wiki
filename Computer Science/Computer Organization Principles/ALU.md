
---
created: 2023-05-07T12:53:46 (UTC +08:00)
tags: []
source: https://en.wikipedia.org/wiki/Arithmetic_logic_unit
author: Contributors to Wikimedia projects
---

# Arithmetic logic unit - Wikipedia

> ## Excerpt
> From Wikipedia, the free encyclopedia

---
From Wikipedia, the free encyclopedia

[![](https://upload.wikimedia.org/wikipedia/commons/thumb/0/0f/ALU_block.gif/220px-ALU_block.gif)](https://en.wikipedia.org/wiki/File:ALU_block.gif)

A symbolic representation of an ALU and its input and output signals, indicated by arrows pointing into or out of the ALU, respectively. Each arrow represents one or more signals. Control signals enter from the left and status signals exit on the right; data flows from top to bottom.

In [computing](https://en.wikipedia.org/wiki/Computing "Computing"), an **arithmetic logic unit** (**ALU**) is a [combinational](https://en.wikipedia.org/wiki/Combinational_logic "Combinational logic") [digital circuit](https://en.wikipedia.org/wiki/Digital_circuit "Digital circuit") that performs [arithmetic](https://en.wikipedia.org/wiki/Arithmetic "Arithmetic") and [bitwise operations](https://en.wikipedia.org/wiki/Bitwise_operation "Bitwise operation") on [integer](https://en.wikipedia.org/wiki/Integer "Integer") [binary numbers](https://en.wikipedia.org/wiki/Binary_number "Binary number").<sup id="cite_ref-A.P.GodseD.A.Godse2009_1-0"><a href="https://en.wikipedia.org/wiki/Arithmetic_logic_unit#cite_note-A.P.GodseD.A.Godse2009-1">[1]</a></sup><sup id="cite_ref-let2pt_2-0"><a href="https://en.wikipedia.org/wiki/Arithmetic_logic_unit#cite_note-let2pt-2">[2]</a></sup><sup id="cite_ref-A.P.GodseD.A.Godse2009-2_3-0"><a href="https://en.wikipedia.org/wiki/Arithmetic_logic_unit#cite_note-A.P.GodseD.A.Godse2009-2-3">[3]</a></sup> This is in contrast to a [floating-point unit](https://en.wikipedia.org/wiki/Floating-point_unit "Floating-point unit") (FPU), which operates on [floating point](https://en.wikipedia.org/wiki/Floating_point "Floating point") numbers. It is a fundamental building block of many types of computing circuits, including the [central processing unit](https://en.wikipedia.org/wiki/Central_processing_unit "Central processing unit") (CPU) of computers, FPUs, and [graphics processing units](https://en.wikipedia.org/wiki/Graphics_processing_unit "Graphics processing unit") (GPUs).<sup id="cite_ref-4"><a href="https://en.wikipedia.org/wiki/Arithmetic_logic_unit#cite_note-4">[4]</a></sup>

The inputs to an ALU are the data to be operated on, called [operands](https://en.wikipedia.org/wiki/Operand "Operand"), and a code indicating the operation to be performed; the ALU's output is the result of the performed operation. In many designs, the ALU also has status inputs or outputs, or both, which convey information about a previous operation or the current operation, respectively, between the ALU and external [status registers](https://en.wikipedia.org/wiki/Status_register "Status register").

## Signals\[[edit](https://en.wikipedia.org/w/index.php?title=Arithmetic_logic_unit&action=edit&section=1 "Edit section: Signals")\]

An ALU has a variety of input and output [nets](https://en.wikipedia.org/wiki/Net_(electronics) "Net (electronics)"), which are the [electrical conductors](https://en.wikipedia.org/wiki/Electrical_conductors "Electrical conductors") used to convey [digital signals](https://en.wikipedia.org/wiki/Digital_signal_(electronics) "Digital signal (electronics)") between the ALU and external circuitry. When an ALU is operating, external circuits apply signals to the ALU inputs and, in response, the ALU produces and conveys signals to external circuitry via its outputs.

### Data\[[edit](https://en.wikipedia.org/w/index.php?title=Arithmetic_logic_unit&action=edit&section=2 "Edit section: Data")\]

A basic ALU has three parallel data [buses](https://en.wikipedia.org/wiki/Bus_(computing) "Bus (computing)") consisting of two input [operands](https://en.wikipedia.org/wiki/Operand "Operand") (_A_ and _B_) and a result output (_Y_). Each data bus is a group of signals that conveys one binary integer number. Typically, the A, B and Y bus widths (the number of signals comprising each bus) are identical and match the native [word size](https://en.wikipedia.org/wiki/Word_size "Word size") of the external circuitry (e.g., the encapsulating CPU or other processor).

### Opcode\[[edit](https://en.wikipedia.org/w/index.php?title=Arithmetic_logic_unit&action=edit&section=3 "Edit section: Opcode")\]

The _opcode_ input is a parallel bus that conveys to the ALU an operation selection code, which is an [enumerated value](https://en.wikipedia.org/wiki/Enumeration "Enumeration") that specifies the desired arithmetic or logic operation to be performed by the ALU. The opcode size (its bus width) determines the maximum number of distinct operations the ALU can perform; for example, a four-bit opcode can specify up to sixteen different ALU operations. Generally, an ALU opcode is not the same as a [machine language opcode](https://en.wikipedia.org/wiki/Opcode "Opcode"), though in some cases it may be directly encoded as a bit field within a machine language opcode.

### Status\[[edit](https://en.wikipedia.org/w/index.php?title=Arithmetic_logic_unit&action=edit&section=4 "Edit section: Status")\]

#### Outputs\[[edit](https://en.wikipedia.org/w/index.php?title=Arithmetic_logic_unit&action=edit&section=5 "Edit section: Outputs")\]

The status outputs are various individual signals that convey supplemental information about the result of the current ALU operation. General-purpose ALUs commonly have status signals such as:

-   _Carry-out_, which conveys the [carry](https://en.wikipedia.org/wiki/Carry_(arithmetic) "Carry (arithmetic)") resulting from an addition operation, the borrow resulting from a subtraction operation, or the overflow bit resulting from a binary shift operation.
-   _Zero_, which indicates all bits of Y are logic zero.
-   _Negative_, which indicates the result of an arithmetic operation is negative.
-   _[Overflow](https://en.wikipedia.org/wiki/Arithmetic_overflow "Arithmetic overflow")_, which indicates the result of an arithmetic operation has exceeded the numeric range of Y.
-   _[Parity](https://en.wikipedia.org/wiki/Parity_flag "Parity flag")_, which indicates whether an even or odd number of bits in Y are logic one.

Upon completion of each ALU operation, the status output signals are usually stored in external registers to make them available for future ALU operations (e.g., to implement [multiple-precision arithmetic](https://en.wikipedia.org/wiki/Multiple-precision_arithmetic "Multiple-precision arithmetic")) or for controlling [conditional branching](https://en.wikipedia.org/wiki/Branch_(computer_science) "Branch (computer science)"). The collection of bit registers that store the status outputs are often treated as a single, multi-bit register, which is referred to as the "status register" or "condition code register".

#### Inputs\[[edit](https://en.wikipedia.org/w/index.php?title=Arithmetic_logic_unit&action=edit&section=6 "Edit section: Inputs")\]

The status inputs allow additional information to be made available to the ALU when performing an operation. Typically, this is a single "carry-in" bit that is the stored carry-out from a previous ALU operation.

## Circuit operation\[[edit](https://en.wikipedia.org/w/index.php?title=Arithmetic_logic_unit&action=edit&section=7 "Edit section: Circuit operation")\]

[![](https://upload.wikimedia.org/wikipedia/commons/thumb/c/c0/74181aluschematic.png/400px-74181aluschematic.png)](https://en.wikipedia.org/wiki/File:74181aluschematic.png)

An ALU is a [combinational logic](https://en.wikipedia.org/wiki/Combinational_logic "Combinational logic") circuit, meaning that its outputs will change asynchronously in response to input changes. In normal operation, stable signals are applied to all of the ALU inputs and, when enough time (known as the "[propagation delay](https://en.wikipedia.org/wiki/Propagation_delay "Propagation delay")") has passed for the signals to propagate through the ALU circuitry, the result of the ALU operation appears at the ALU outputs. The external circuitry connected to the ALU is responsible for ensuring the stability of ALU input signals throughout the operation, and for allowing sufficient time for the signals to propagate through the ALU before sampling the ALU result.

In general, external circuitry controls an ALU by applying signals to its inputs. Typically, the external circuitry employs [sequential logic](https://en.wikipedia.org/wiki/Sequential_logic "Sequential logic") to control the ALU operation, which is paced by a [clock signal](https://en.wikipedia.org/wiki/Clock_signal "Clock signal") of a sufficiently low frequency to ensure enough time for the ALU outputs to settle under worst-case conditions.

For example, a CPU begins an ALU addition operation by routing operands from their sources (which are usually [registers](https://en.wikipedia.org/wiki/Processor_register "Processor register")) to the ALU's operand inputs, while the [control unit](https://en.wikipedia.org/wiki/Control_unit "Control unit") simultaneously applies a value to the ALU's opcode input, configuring it to perform addition. At the same time, the CPU also routes the ALU result output to a destination register that will receive the sum. The ALU's input signals, which are held stable until the next clock, are allowed to propagate through the ALU and to the destination register while the CPU waits for the next clock. When the next clock arrives, the destination register stores the ALU result and, since the ALU operation has completed, the ALU inputs may be set up for the next ALU operation.

## Functions\[[edit](https://en.wikipedia.org/w/index.php?title=Arithmetic_logic_unit&action=edit&section=8 "Edit section: Functions")\]

A number of basic arithmetic and bitwise logic functions are commonly supported by ALUs. Basic, general purpose ALUs typically include these operations in their repertoires:<sup id="cite_ref-A.P.GodseD.A.Godse2009_1-1"><a href="https://en.wikipedia.org/wiki/Arithmetic_logic_unit#cite_note-A.P.GodseD.A.Godse2009-1">[1]</a></sup><sup id="cite_ref-let2pt_2-1"><a href="https://en.wikipedia.org/wiki/Arithmetic_logic_unit#cite_note-let2pt-2">[2]</a></sup><sup id="cite_ref-A.P.GodseD.A.Godse2009-2_3-1"><a href="https://en.wikipedia.org/wiki/Arithmetic_logic_unit#cite_note-A.P.GodseD.A.Godse2009-2-3">[3]</a></sup><sup id="cite_ref-hh_5-0"><a href="https://en.wikipedia.org/wiki/Arithmetic_logic_unit#cite_note-hh-5">[5]</a></sup>

### Arithmetic operations\[[edit](https://en.wikipedia.org/w/index.php?title=Arithmetic_logic_unit&action=edit&section=9 "Edit section: Arithmetic operations")\]

-   _[Add](https://en.wikipedia.org/wiki/Binary_number#Addition "Binary number")_: A and B are summed and the sum appears at Y and carry-out.
-   _Add with carry_: A, B and carry-in are summed and the sum appears at Y and carry-out.
-   _[Subtract](https://en.wikipedia.org/wiki/Binary_number#Subtraction "Binary number")_: B is subtracted from A (or vice versa) and the difference appears at Y and carry-out. For this function, carry-out is effectively a "borrow" indicator. This operation may also be used to compare the magnitudes of A and B; in such cases the Y output may be ignored by the processor, which is only interested in the status bits (particularly zero and negative) that result from the operation.
-   _Subtract with borrow_: B is subtracted from A (or vice versa) with borrow (carry-in) and the difference appears at Y and carry-out (borrow out).
-   _Two's complement (negate)_: A (or B) is subtracted from zero and the difference appears at Y.
-   _Increment_: A (or B) is increased by one and the resulting value appears at Y.
-   _Decrement_: A (or B) is decreased by one and the resulting value appears at Y.
-   _Pass through_: all bits of A (or B) appear unmodified at Y. This operation is typically used to determine the parity of the operand or whether it is zero or negative, or to load the operand into a processor register.

### Bitwise logical operations\[[edit](https://en.wikipedia.org/w/index.php?title=Arithmetic_logic_unit&action=edit&section=10 "Edit section: Bitwise logical operations")\]

-   _[AND](https://en.wikipedia.org/wiki/Bitwise_operation#AND "Bitwise operation")_: the bitwise AND of A and B appears at Y.
-   _[OR](https://en.wikipedia.org/wiki/Bitwise_operation#OR "Bitwise operation")_: the bitwise OR of A and B appears at Y.
-   _[Exclusive-OR](https://en.wikipedia.org/wiki/Bitwise_operation#XOR "Bitwise operation")_: the bitwise XOR of A and B appears at Y.
-   _[Ones' complement](https://en.wikipedia.org/wiki/Bitwise_operation#NOT "Bitwise operation")_: all bits of A (or B) are inverted and appear at Y.

### Bit shift operations\[[edit](https://en.wikipedia.org/w/index.php?title=Arithmetic_logic_unit&action=edit&section=11 "Edit section: Bit shift operations")\]

<table><caption>Bit shift examples for an eight-bit ALU</caption><tbody><tr><th>Type</th><th>Left</th><th>Right</th></tr><tr><td>Arithmetic shift</td><td><a href="https://en.wikipedia.org/wiki/File:Rotate_left_logically.svg"><img alt="Rotate left logically.svg" src="https://upload.wikimedia.org/wikipedia/commons/thumb/5/5c/Rotate_left_logically.svg/150px-Rotate_left_logically.svg.png" decoding="async" width="150" height="100" srcset="https://upload.wikimedia.org/wikipedia/commons/thumb/5/5c/Rotate_left_logically.svg/225px-Rotate_left_logically.svg.png 1.5x, https://upload.wikimedia.org/wikipedia/commons/thumb/5/5c/Rotate_left_logically.svg/300px-Rotate_left_logically.svg.png 2x" data-file-width="210" data-file-height="140"></a></td><td><a href="https://en.wikipedia.org/wiki/File:Rotate_right_arithmetically.svg"><img alt="Rotate right arithmetically.svg" src="https://upload.wikimedia.org/wikipedia/commons/thumb/3/37/Rotate_right_arithmetically.svg/130px-Rotate_right_arithmetically.svg.png" decoding="async" width="130" height="104" srcset="https://upload.wikimedia.org/wikipedia/commons/thumb/3/37/Rotate_right_arithmetically.svg/195px-Rotate_right_arithmetically.svg.png 1.5x, https://upload.wikimedia.org/wikipedia/commons/thumb/3/37/Rotate_right_arithmetically.svg/260px-Rotate_right_arithmetically.svg.png 2x" data-file-width="175" data-file-height="140"></a></td></tr><tr><td>Logical shift</td><td><a href="https://en.wikipedia.org/wiki/File:Rotate_left_logically.svg"><img alt="Rotate left logically.svg" src="https://upload.wikimedia.org/wikipedia/commons/thumb/5/5c/Rotate_left_logically.svg/150px-Rotate_left_logically.svg.png" decoding="async" width="150" height="100" srcset="https://upload.wikimedia.org/wikipedia/commons/thumb/5/5c/Rotate_left_logically.svg/225px-Rotate_left_logically.svg.png 1.5x, https://upload.wikimedia.org/wikipedia/commons/thumb/5/5c/Rotate_left_logically.svg/300px-Rotate_left_logically.svg.png 2x" data-file-width="210" data-file-height="140"></a></td><td><a href="https://en.wikipedia.org/wiki/File:Rotate_right_logically.svg"><img alt="Rotate right logically.svg" src="https://upload.wikimedia.org/wikipedia/commons/thumb/6/64/Rotate_right_logically.svg/150px-Rotate_right_logically.svg.png" decoding="async" width="150" height="100" srcset="https://upload.wikimedia.org/wikipedia/commons/thumb/6/64/Rotate_right_logically.svg/225px-Rotate_right_logically.svg.png 1.5x, https://upload.wikimedia.org/wikipedia/commons/thumb/6/64/Rotate_right_logically.svg/300px-Rotate_right_logically.svg.png 2x" data-file-width="210" data-file-height="140"></a></td></tr><tr><td>Rotate</td><td><a href="https://en.wikipedia.org/wiki/File:Rotate_left.svg"><img alt="Rotate left.svg" src="https://upload.wikimedia.org/wikipedia/commons/thumb/0/09/Rotate_left.svg/130px-Rotate_left.svg.png" decoding="async" width="130" height="104" srcset="https://upload.wikimedia.org/wikipedia/commons/thumb/0/09/Rotate_left.svg/195px-Rotate_left.svg.png 1.5x, https://upload.wikimedia.org/wikipedia/commons/thumb/0/09/Rotate_left.svg/260px-Rotate_left.svg.png 2x" data-file-width="175" data-file-height="140"></a></td><td><a href="https://en.wikipedia.org/wiki/File:Rotate_right.svg"><img alt="Rotate right.svg" src="https://upload.wikimedia.org/wikipedia/commons/thumb/3/37/Rotate_right.svg/130px-Rotate_right.svg.png" decoding="async" width="130" height="104" srcset="https://upload.wikimedia.org/wikipedia/commons/thumb/3/37/Rotate_right.svg/195px-Rotate_right.svg.png 1.5x, https://upload.wikimedia.org/wikipedia/commons/thumb/3/37/Rotate_right.svg/260px-Rotate_right.svg.png 2x" data-file-width="175" data-file-height="140"></a></td></tr><tr><td>Rotate through carry</td><td><a href="https://en.wikipedia.org/wiki/File:Rotate_left_through_carry.svg"><img alt="Rotate left through carry.svg" src="https://upload.wikimedia.org/wikipedia/commons/thumb/7/71/Rotate_left_through_carry.svg/150px-Rotate_left_through_carry.svg.png" decoding="async" width="150" height="105" srcset="https://upload.wikimedia.org/wikipedia/commons/thumb/7/71/Rotate_left_through_carry.svg/225px-Rotate_left_through_carry.svg.png 1.5x, https://upload.wikimedia.org/wikipedia/commons/thumb/7/71/Rotate_left_through_carry.svg/300px-Rotate_left_through_carry.svg.png 2x" data-file-width="200" data-file-height="140"></a></td><td><a href="https://en.wikipedia.org/wiki/File:Rotate_right_through_carry.svg"><img alt="Rotate right through carry.svg" src="https://upload.wikimedia.org/wikipedia/commons/thumb/2/27/Rotate_right_through_carry.svg/150px-Rotate_right_through_carry.svg.png" decoding="async" width="150" height="105" srcset="https://upload.wikimedia.org/wikipedia/commons/thumb/2/27/Rotate_right_through_carry.svg/225px-Rotate_right_through_carry.svg.png 1.5x, https://upload.wikimedia.org/wikipedia/commons/thumb/2/27/Rotate_right_through_carry.svg/300px-Rotate_right_through_carry.svg.png 2x" data-file-width="200" data-file-height="140"></a></td></tr></tbody></table>

ALU shift operations cause operand A (or B) to shift left or right (depending on the opcode) and the shifted operand appears at Y. Simple ALUs typically can shift the operand by only one bit position, whereas more complex ALUs employ [barrel shifters](https://en.wikipedia.org/wiki/Barrel_shifter "Barrel shifter") that allow them to shift the operand by an arbitrary number of bits in one operation. In all single-bit shift operations, the bit shifted out of the operand appears on carry-out; the value of the bit shifted into the operand depends on the type of shift.

-   _[Arithmetic shift](https://en.wikipedia.org/wiki/Bitwise_operation#Arithmetic_shift "Bitwise operation")_: the operand is treated as a [two's complement](https://en.wikipedia.org/wiki/Two%27s_complement "Two's complement") integer, meaning that the most significant bit is a "sign" bit and is preserved.
-   _[Logical shift](https://en.wikipedia.org/wiki/Bitwise_operation#Logical_shift "Bitwise operation")_: a logic zero is shifted into the operand. This is used to shift unsigned integers.
-   _[Rotate](https://en.wikipedia.org/wiki/Bitwise_operation#Rotate "Bitwise operation")_: the operand is treated as a circular buffer of bits so its least and most significant bits are effectively adjacent.
-   _[Rotate through carry](https://en.wikipedia.org/wiki/Bitwise_operation#Rotate_through_carry "Bitwise operation")_: the carry bit and operand are collectively treated as a circular buffer of bits.

## Applications\[[edit](https://en.wikipedia.org/w/index.php?title=Arithmetic_logic_unit&action=edit&section=12 "Edit section: Applications")\]

### Multiple-precision arithmetic\[[edit](https://en.wikipedia.org/w/index.php?title=Arithmetic_logic_unit&action=edit&section=13 "Edit section: Multiple-precision arithmetic")\]

In integer arithmetic computations, **multiple-precision arithmetic** is an algorithm that operates on integers which are larger than the ALU word size. To do this, the algorithm treats each operand as an ordered collection of ALU-size fragments, arranged from most-significant (MS) to least-significant (LS) or vice versa. For example, in the case of an 8-bit ALU, the 24-bit integer `0x123456` would be treated as a collection of three 8-bit fragments: `0x12` (MS), `0x34`, and `0x56` (LS). Since the size of a fragment exactly matches the ALU word size, the ALU can directly operate on this "piece" of operand.

The algorithm uses the ALU to directly operate on particular operand fragments and thus generate a corresponding fragment (a "partial") of the multi-precision result. Each partial, when generated, is written to an associated region of storage that has been designated for the multiple-precision result. This process is repeated for all operand fragments so as to generate a complete collection of partials, which is the result of the multiple-precision operation.

In arithmetic operations (e.g., addition, subtraction), the algorithm starts by invoking an ALU operation on the operands' LS fragments, thereby producing both a LS partial and a carry out bit. The algorithm writes the partial to designated storage, whereas the processor's state machine typically stores the carry out bit to an ALU status register. The algorithm then advances to the next fragment of each operand's collection and invokes an ALU operation on these fragments along with the stored carry bit from the previous ALU operation, thus producing another (more significant) partial and a carry out bit. As before, the carry bit is stored to the status register and the partial is written to designated storage. This process repeats until all operand fragments have been processed, resulting in a complete collection of partials in storage, which comprise the multi-precision arithmetic result.

In multiple-precision shift operations, the order of operand fragment processing depends on the shift direction. In left-shift operations, fragments are processed LS first because the LS bit of each partial—which is conveyed via the stored carry bit—must be obtained from the MS bit of the previously left-shifted, less-significant operand. Conversely, operands are processed MS first in right-shift operations because the MS bit of each partial must be obtained from the LS bit of the previously right-shifted, more-significant operand.

In bitwise logical operations (e.g., logical AND, logical OR), the operand fragments may be processed in any arbitrary order because each partial depends only on the corresponding operand fragments (the stored carry bit from the previous ALU operation is ignored).

### Complex operations\[[edit](https://en.wikipedia.org/w/index.php?title=Arithmetic_logic_unit&action=edit&section=14 "Edit section: Complex operations")\]

Although an ALU can be designed to perform complex functions, the resulting higher circuit complexity, cost, power consumption and larger size makes this impractical in many cases. Consequently, ALUs are often limited to simple functions that can be executed at very high speeds (i.e., very short propagation delays), and the external processor circuitry is responsible for performing complex functions by orchestrating a sequence of simpler ALU operations.

For example, computing the square root of a number might be implemented in various ways, depending on ALU complexity:

-   _Calculation in a [single clock](https://en.wikipedia.org/wiki/Clock_cycle "Clock cycle")_: a very complex ALU that calculates a square root in one operation.
-   _[Calculation pipeline](https://en.wikipedia.org/wiki/Pipeline_(computing) "Pipeline (computing)")_: a group of simple ALUs that calculates a square root in stages, with intermediate results passing through ALUs arranged like a factory [production line](https://en.wikipedia.org/wiki/Assembly_line "Assembly line"). This circuit can accept new operands before finishing the previous ones and produces results as fast as the very complex ALU, though the results are delayed by the sum of the propagation delays of the ALU stages. For more information, see the article on [instruction pipelining](https://en.wikipedia.org/wiki/Instruction_pipelining "Instruction pipelining").
-   _Iterative calculation_: a simple ALU that calculates the square root through several steps under the direction of a [control unit](https://en.wikipedia.org/wiki/Control_unit "Control unit").

The implementations above transition from fastest and most expensive to slowest and least costly. The square root is calculated in all cases, but processors with simple ALUs will take longer to perform the calculation because multiple ALU operations must be performed.

## Implementation\[[edit](https://en.wikipedia.org/w/index.php?title=Arithmetic_logic_unit&action=edit&section=15 "Edit section: Implementation")\]

An ALU is usually implemented either as a stand-alone [integrated circuit](https://en.wikipedia.org/wiki/Integrated_circuit "Integrated circuit") (IC), such as the [74181](https://en.wikipedia.org/wiki/74181 "74181"), or as part of a more complex IC. In the latter case, an ALU is typically instantiated by synthesizing it from a description written in [VHDL](https://en.wikipedia.org/wiki/VHDL "VHDL"), [Verilog](https://en.wikipedia.org/wiki/Verilog "Verilog") or some other [hardware description language](https://en.wikipedia.org/wiki/Hardware_description_language "Hardware description language"). For example, the following VHDL code describes a very simple [8-bit](https://en.wikipedia.org/wiki/8-bit "8-bit") ALU:

```
entity alu is
port (  -- the alu connections to external circuitry:
  A  : in signed(7 downto 0);   -- operand A
  B  : in signed(7 downto 0);   -- operand B
  OP : in unsigned(2 downto 0); -- opcode
  Y  : out signed(7 downto 0));  -- operation result
end alu;

architecture behavioral of alu is
begin
 case OP is  -- decode the opcode and perform the operation:
 when "000" =>  Y <= A + B;   -- add
 when "001" =>  Y <= A - B;   -- subtract
 when "010" =>  Y <= A - 1;   -- decrement
 when "011" =>  Y <= A + 1;   -- increment
 when "100" =>  Y <= not A;   -- 1's complement
 when "101" =>  Y <= A and B; -- bitwise AND
 when "110" =>  Y <= A or B;  -- bitwise OR
 when "111" =>  Y <= A xor B; -- bitwise XOR
 when others => Y <= (others => 'X');
 end case;
end behavioral;

```

## History\[[edit](https://en.wikipedia.org/w/index.php?title=Arithmetic_logic_unit&action=edit&section=16 "Edit section: History")\]

Mathematician [John von Neumann](https://en.wikipedia.org/wiki/John_von_Neumann "John von Neumann") proposed the ALU concept in 1945 in a report on the foundations for a new computer called the [EDVAC](https://en.wikipedia.org/wiki/EDVAC "EDVAC").<sup id="cite_ref-6"><a href="https://en.wikipedia.org/wiki/Arithmetic_logic_unit#cite_note-6">[6]</a></sup>

The cost, size, and power consumption of electronic circuitry was relatively high throughout the infancy of the [information age](https://en.wikipedia.org/wiki/Information_age "Information age"). Consequently, all [serial computers](https://en.wikipedia.org/wiki/Serial_computer "Serial computer") and many early computers, such as the [PDP-8](https://en.wikipedia.org/wiki/PDP-8 "PDP-8"), had a simple ALU that operated on one data bit at a time, although they often presented a wider word size to programmers. One of the earliest computers to have multiple discrete single-bit ALU circuits was the 1948 [Whirlwind I](https://en.wikipedia.org/wiki/Whirlwind_I "Whirlwind I"), which employed sixteen such "math units" to enable it to operate on 16-bit words.

In 1967, [Fairchild](https://en.wikipedia.org/wiki/Fairchild_Semiconductor "Fairchild Semiconductor") introduced the first ALU implemented as an integrated circuit, the Fairchild 3800, consisting of an eight-bit ALU with accumulator.<sup id="cite_ref-7"><a href="https://en.wikipedia.org/wiki/Arithmetic_logic_unit#cite_note-7">[7]</a></sup> Other integrated-circuit ALUs soon emerged, including four-bit ALUs such as the [Am2901](https://en.wikipedia.org/wiki/AMD_Am2900 "AMD Am2900") and [74181](https://en.wikipedia.org/wiki/74181 "74181"). These devices were typically "[bit slice](https://en.wikipedia.org/wiki/Bit_slicing "Bit slicing")" capable, meaning they had "carry look ahead" signals that facilitated the use of multiple interconnected ALU chips to create an ALU with a wider word size. These devices quickly became popular and were widely used in bit-slice minicomputers.

Microprocessors began to appear in the early 1970s. Even though transistors had become smaller, there was often insufficient die space for a full-word-width ALU and, as a result, some early microprocessors employed a narrow ALU that required multiple cycles per machine language instruction. Examples of this includes the popular [Zilog Z80](https://en.wikipedia.org/wiki/Zilog_Z80 "Zilog Z80"), which performed eight-bit additions with a four-bit ALU.<sup id="cite_ref-8"><a href="https://en.wikipedia.org/wiki/Arithmetic_logic_unit#cite_note-8">[8]</a></sup> Over time, transistor geometries shrank further, following [Moore's law](https://en.wikipedia.org/wiki/Moore%27s_law "Moore's law"), and it became feasible to build wider ALUs on microprocessors.

Modern integrated circuit (IC) transistors are orders of magnitude smaller than those of the early microprocessors, making it possible to fit highly complex ALUs on ICs. Today, many modern ALUs have wide word widths, and architectural enhancements such as [barrel shifters](https://en.wikipedia.org/wiki/Barrel_shifter "Barrel shifter") and [binary multipliers](https://en.wikipedia.org/wiki/Binary_multiplier "Binary multiplier") that allow them to perform, in a single clock cycle, operations that would have required multiple operations on earlier ALUs.

ALUs can be realized as [mechanical](https://en.wikipedia.org/wiki/Mechanical_computer "Mechanical computer"), [electro-mechanical](https://en.wikipedia.org/wiki/Mechanical_computer#Electro-mechanical_computers "Mechanical computer") or [electronic](https://en.wikipedia.org/wiki/Electronic_circuit "Electronic circuit") circuits<sup id="cite_ref-9"><a href="https://en.wikipedia.org/wiki/Arithmetic_logic_unit#cite_note-9">[9]</a></sup><sup>[<i><a href="https://en.wikipedia.org/wiki/Wikipedia:Verifiability" title="Wikipedia:Verifiability"><span title="The material near this tag failed verification of its source citation(s). (September 2020)">failed verification</span></a></i>]</sup> and, in recent years, research into biological ALUs has been carried out<sup id="cite_ref-10"><a href="https://en.wikipedia.org/wiki/Arithmetic_logic_unit#cite_note-10">[10]</a></sup><sup id="cite_ref-11"><a href="https://en.wikipedia.org/wiki/Arithmetic_logic_unit#cite_note-11">[11]</a></sup> (e.g., [actin](https://en.wikipedia.org/wiki/Actin "Actin")\-based).<sup id="cite_ref-12"><a href="https://en.wikipedia.org/wiki/Arithmetic_logic_unit#cite_note-12">[12]</a></sup>

## See also\[[edit](https://en.wikipedia.org/w/index.php?title=Arithmetic_logic_unit&action=edit&section=17 "Edit section: See also")\]

-   [Adder (electronics)](https://en.wikipedia.org/wiki/Adder_(electronics) "Adder (electronics)")
-   [Address generation unit](https://en.wikipedia.org/wiki/Address_generation_unit "Address generation unit") (AGU)
-   [Load–store unit](https://en.wikipedia.org/wiki/Load%E2%80%93store_unit "Load–store unit")
-   [Binary multiplier](https://en.wikipedia.org/wiki/Binary_multiplier "Binary multiplier")
-   [Execution unit](https://en.wikipedia.org/wiki/Execution_unit "Execution unit")

## References\[[edit](https://en.wikipedia.org/w/index.php?title=Arithmetic_logic_unit&action=edit&section=18 "Edit section: References")\]

1.  ^ [Jump up to: <sup><i><b>a</b></i></sup>](https://en.wikipedia.org/wiki/Arithmetic_logic_unit#cite_ref-A.P.GodseD.A.Godse2009_1-0) [<sup><i><b>b</b></i></sup>](https://en.wikipedia.org/wiki/Arithmetic_logic_unit#cite_ref-A.P.GodseD.A.Godse2009_1-1) A.P.Godse; D.A.Godse (2009). ["3"](https://books.google.com/books?id=-M0nkJY95GgC&pg=RA10-PA2). _Digital Logic Design_. Technical Publications. pp. 9–3. [ISBN](https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)") [978-81-8431-738-1](https://en.wikipedia.org/wiki/Special:BookSources/978-81-8431-738-1 "Special:BookSources/978-81-8431-738-1").
2.  ^ [Jump up to: <sup><i><b>a</b></i></sup>](https://en.wikipedia.org/wiki/Arithmetic_logic_unit#cite_ref-let2pt_2-0) [<sup><i><b>b</b></i></sup>](https://en.wikipedia.org/wiki/Arithmetic_logic_unit#cite_ref-let2pt_2-1) [_Leadership Education and Training (LET) 2: Programmed Text_](https://books.google.com/books?id=2DSRtmn3Ri8C&pg=PA371). Headquarters, Department of the Army. 2001. pp. 371–.
3.  ^ [Jump up to: <sup><i><b>a</b></i></sup>](https://en.wikipedia.org/wiki/Arithmetic_logic_unit#cite_ref-A.P.GodseD.A.Godse2009-2_3-0) [<sup><i><b>b</b></i></sup>](https://en.wikipedia.org/wiki/Arithmetic_logic_unit#cite_ref-A.P.GodseD.A.Godse2009-2_3-1) A.P.Godse; D.A.Godse (2009). "Appendix". [_Digital Logic Circuits_](https://books.google.com/books?id=6hjTpx_Whf8C&pg=RA14-PA1). Technical Publications. pp. C–1. [ISBN](https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)") [978-81-8431-650-6](https://en.wikipedia.org/wiki/Special:BookSources/978-81-8431-650-6 "Special:BookSources/978-81-8431-650-6").
4.  **[^](https://en.wikipedia.org/wiki/Arithmetic_logic_unit#cite_ref-4 "Jump up")** ["1. An Introduction to Computer Architecture - Designing Embedded Hardware, 2nd Edition \[Book\]"](https://www.oreilly.com/library/view/designing-embedded-hardware/0596007558/ch01.html). _www.oreilly.com_. Retrieved 2020-09-03.
5.  **[^](https://en.wikipedia.org/wiki/Arithmetic_logic_unit#cite_ref-hh_5-0 "Jump up")** [Horowitz, Paul](https://en.wikipedia.org/wiki/Paul_Horowitz "Paul Horowitz"); [Winfield Hill](https://en.wikipedia.org/wiki/Winfield_Hill "Winfield Hill") (1989). "14.1.1". [_The Art of Electronics_](https://en.wikipedia.org/wiki/The_Art_of_Electronics "The Art of Electronics") (2nd ed.). Cambridge University Press. pp. 990–. [ISBN](https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)") [978-0-521-37095-0](https://en.wikipedia.org/wiki/Special:BookSources/978-0-521-37095-0 "Special:BookSources/978-0-521-37095-0").
6.  **[^](https://en.wikipedia.org/wiki/Arithmetic_logic_unit#cite_ref-6 "Jump up")** Philip Levis (November 8, 2004). ["Jonathan von Neumann and EDVAC"](https://web.archive.org/web/20150923211408/http://www.cs.berkeley.edu/~christos/classics/paper.pdf) (PDF). _cs.berkeley.edu_. pp. 1, 3. Archived from [the original](http://www.cs.berkeley.edu/~christos/classics/paper.pdf) (PDF) on September 23, 2015. Retrieved January 20, 2015.
7.  **[^](https://en.wikipedia.org/wiki/Arithmetic_logic_unit#cite_ref-7 "Jump up")** Lee Boysel (2007-10-12). ["Making Your First Million (and other tips for aspiring entrepreneurs)"](https://web.archive.org/web/20121115072151/http://inst-tech.engin.umich.edu/leccap/view/ece-inv-lectures/1036). _U. Mich. EECS Presentation / ECE Recordings_. Archived from [the original](http://inst-tech.engin.umich.edu/leccap/view/ece-inv-lectures/1036) on 2012-11-15.
8.  **[^](https://en.wikipedia.org/wiki/Arithmetic_logic_unit#cite_ref-8 "Jump up")** Ken Shirriff. ["The Z-80 has a 4-bit ALU. Here's how it works."](http://www.righto.com/2013/09/the-z-80-has-4-bit-alu-heres-how-it.html) 2013, righto.com
9.  **[^](https://en.wikipedia.org/wiki/Arithmetic_logic_unit#cite_ref-9 "Jump up")** Reif, John H. (2009), ["Mechanical Computing: The Computational Complexity of Physical Devices"](https://doi.org/10.1007/978-0-387-30440-3_325), in Meyers, Robert A. (ed.), _Encyclopedia of Complexity and Systems Science_, New York, NY: Springer, pp. 5466–5482, [doi](https://en.wikipedia.org/wiki/Doi_(identifier) "Doi (identifier)"):[10.1007/978-0-387-30440-3\_325](https://doi.org/10.1007%2F978-0-387-30440-3_325), [ISBN](https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)") [978-0-387-30440-3](https://en.wikipedia.org/wiki/Special:BookSources/978-0-387-30440-3 "Special:BookSources/978-0-387-30440-3"), retrieved 2020-09-03
10.  **[^](https://en.wikipedia.org/wiki/Arithmetic_logic_unit#cite_ref-10 "Jump up")** Lin, Chun-Liang; Kuo, Ting-Yu; Li, Wei-Xian (2018-08-14). ["Synthesis of control unit for future biocomputer"](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC6092829). _Journal of Biological Engineering_. **12** (1): 14. [doi](https://en.wikipedia.org/wiki/Doi_(identifier) "Doi (identifier)"):[10.1186/s13036-018-0109-4](https://doi.org/10.1186%2Fs13036-018-0109-4). [ISSN](https://en.wikipedia.org/wiki/ISSN_(identifier) "ISSN (identifier)") [1754-1611](https://www.worldcat.org/issn/1754-1611). [PMC](https://en.wikipedia.org/wiki/PMC_(identifier) "PMC (identifier)") [6092829](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC6092829). [PMID](https://en.wikipedia.org/wiki/PMID_(identifier) "PMID (identifier)") [30127848](https://pubmed.ncbi.nlm.nih.gov/30127848).
11.  **[^](https://en.wikipedia.org/wiki/Arithmetic_logic_unit#cite_ref-11 "Jump up")** Gerd Hg Moe-Behrens. ["The biological microprocessor, or how to build a computer with biological parts"](https://www.researchgate.net/publication/261257537).
12.  **[^](https://en.wikipedia.org/wiki/Arithmetic_logic_unit#cite_ref-12 "Jump up")** Das, Biplab; Paul, Avijit Kumar; De, Debashis (2019-08-16). ["An unconventional Arithmetic Logic Unit design and computing in Actin Quantum Cellular Automata"](https://doi.org/10.1007/s00542-019-04590-1). _Microsystem Technologies_. [doi](https://en.wikipedia.org/wiki/Doi_(identifier) "Doi (identifier)"):[10.1007/s00542-019-04590-1](https://doi.org/10.1007%2Fs00542-019-04590-1). [ISSN](https://en.wikipedia.org/wiki/ISSN_(identifier) "ISSN (identifier)") [1432-1858](https://www.worldcat.org/issn/1432-1858). [S2CID](https://en.wikipedia.org/wiki/S2CID_(identifier) "S2CID (identifier)") [202099203](https://api.semanticscholar.org/CorpusID:202099203).

## Further reading\[[edit](https://en.wikipedia.org/w/index.php?title=Arithmetic_logic_unit&action=edit&section=19 "Edit section: Further reading")\]

-   Hwang, Enoch (2006). [_Digital Logic and Microprocessor Design with VHDL_](http://faculty.lasierra.edu/~ehwang/digitaldesign). Thomson. [ISBN](https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)") [0-534-46593-5](https://en.wikipedia.org/wiki/Special:BookSources/0-534-46593-5 "Special:BookSources/0-534-46593-5").
-   [Stallings, William](https://en.wikipedia.org/wiki/William_Stallings "William Stallings") (2006). [_Computer Organization & Architecture: Designing for Performance_](http://williamstallings.com/COA/COA7e.html) (7th ed.). Pearson Prentice Hall. [ISBN](https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)") [0-13-185644-8](https://en.wikipedia.org/wiki/Special:BookSources/0-13-185644-8 "Special:BookSources/0-13-185644-8").

## External links\[[edit](https://en.wikipedia.org/w/index.php?title=Arithmetic_logic_unit&action=edit&section=20 "Edit section: External links")\]
