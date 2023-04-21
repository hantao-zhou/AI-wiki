---
created: 2023-04-21T17:06:27 (UTC +08:00)
tags: []
source: https://en.wikipedia.org/wiki/Adder_(electronics)#Half_adder
author: Contributors to Wikimedia projects
---

# Adder (electronics) - Wikipedia

> ## Excerpt
> From Wikipedia, the free encyclopedia

---
From Wikipedia, the free encyclopedia

An **adder**, or **summer**,<sup id="cite_ref-1"><a href="https://en.wikipedia.org/wiki/Adder_(electronics)#cite_note-1">[1]</a></sup> is a [digital circuit](https://en.wikipedia.org/wiki/Digital_circuit "Digital circuit") that performs [addition](https://en.wikipedia.org/wiki/Addition "Addition") of numbers. In many [computers](https://en.wikipedia.org/wiki/Computer "Computer") and other kinds of [processors](https://en.wikipedia.org/wiki/Microprocessor "Microprocessor") adders are used in the [arithmetic logic units](https://en.wikipedia.org/wiki/Arithmetic_logic_units "Arithmetic logic units") (ALUs). They are also used in other parts of the processor, where they are used to calculate [addresses](https://en.wikipedia.org/wiki/Address_space "Address space"), [table indices](https://en.wikipedia.org/wiki/Database_index "Database index"), [increment and decrement operators](https://en.wikipedia.org/wiki/Increment_and_decrement_operators "Increment and decrement operators") and similar operations.

Although adders can be constructed for many [number representations](https://en.wikipedia.org/wiki/Number_representation "Number representation"), such as [binary-coded decimal](https://en.wikipedia.org/wiki/Binary-coded_decimal "Binary-coded decimal") or [excess-3](https://en.wikipedia.org/wiki/Excess-3 "Excess-3"), the most common adders operate on [binary numbers](https://en.wikipedia.org/wiki/Binary_number "Binary number"). In cases where [two's complement](https://en.wikipedia.org/wiki/Two%27s_complement "Two's complement") or [ones' complement](https://en.wikipedia.org/wiki/Ones%27_complement "Ones' complement") is being used to represent [negative numbers](https://en.wikipedia.org/wiki/Negative_number "Negative number"), it is trivial to modify an adder into an [adder–subtractor](https://en.wikipedia.org/wiki/Adder%E2%80%93subtractor "Adder–subtractor"). Other [signed number representations](https://en.wikipedia.org/wiki/Signed_number_representations "Signed number representations") require more logic around the basic adder.

## Binary adders\[[edit](https://en.wikipedia.org/w/index.php?title=Adder_(electronics)&action=edit&section=1 "Edit section: Binary adders")\]

### Half adder\[[edit](https://en.wikipedia.org/w/index.php?title=Adder_(electronics)&action=edit&section=2 "Edit section: Half adder")\]

The **half adder** adds two single binary digits ![A](https://wikimedia.org/api/rest_v1/media/math/render/svg/7daff47fa58cdfd29dc333def748ff5fa4c923e3) and ![B](https://wikimedia.org/api/rest_v1/media/math/render/svg/47136aad860d145f75f3eed3022df827cee94d7a). It has two outputs, sum (![S](https://wikimedia.org/api/rest_v1/media/math/render/svg/4611d85173cd3b508e67077d4a1252c9c05abca2)) and carry (![C](https://wikimedia.org/api/rest_v1/media/math/render/svg/4fc55753007cd3c18576f7933f6f089196732029)). The carry signal represents an [overflow](https://en.wikipedia.org/wiki/Integer_overflow "Integer overflow") into the next digit of a multi-digit addition. The value of the sum is ![{\displaystyle 2C+S}](https://wikimedia.org/api/rest_v1/media/math/render/svg/245b019e3a3dc97c009b4a2d4bb7aedd9c111535). The simplest half-adder design, pictured on the right, incorporates an [XOR gate](https://en.wikipedia.org/wiki/XOR_gate "XOR gate") for ![S](https://wikimedia.org/api/rest_v1/media/math/render/svg/4611d85173cd3b508e67077d4a1252c9c05abca2) and an [AND gate](https://en.wikipedia.org/wiki/AND_gate "AND gate") for ![C](https://wikimedia.org/api/rest_v1/media/math/render/svg/4fc55753007cd3c18576f7933f6f089196732029). The Boolean logic for the sum (in this case ![S](https://wikimedia.org/api/rest_v1/media/math/render/svg/4611d85173cd3b508e67077d4a1252c9c05abca2)) will be ![A\oplus B](https://wikimedia.org/api/rest_v1/media/math/render/svg/f0512d6bdd29ff000dea0bf68b853618dcaabc3e) whereas for the carry (![C](https://wikimedia.org/api/rest_v1/media/math/render/svg/4fc55753007cd3c18576f7933f6f089196732029)) will be ![A\cdot B](https://wikimedia.org/api/rest_v1/media/math/render/svg/75a90e903f21f11a0f4ab3caca1e6943ba7a9849). With the addition of an [OR gate](https://en.wikipedia.org/wiki/OR_gate "OR gate") to combine their carry outputs, two half adders can be combined to make a full adder.<sup id="cite_ref-Lancaster_2004_2-0"><a href="https://en.wikipedia.org/wiki/Adder_(electronics)#cite_note-Lancaster_2004-2">[2]</a></sup> The half adder adds two input bits and generates a carry and sum, which are the two outputs of a half adder. The input [variables](https://en.wikipedia.org/wiki/Variable_(computer_science) "Variable (computer science)") of a half adder are called the augend and addend bits. The output variables are the sum and carry.

The [truth table](https://en.wikipedia.org/wiki/Truth_table "Truth table") for the half adder is:


| **A** | **B** | **C**<sub>out</sub> | **S** |
| ----- | ----- | ------------------- | ----- |
| 0     | 0     | 0                   | 0     |
| 0     | 1     | 0                   | 1     |
| 1     | 0     | 0                   | 1     |
| 1     | 1     | 1                   | 0     |

Various half adder digial logic circuits:

-   [![Half adder in action.](https://upload.wikimedia.org/wikipedia/commons/thumb/9/92/Halfadder.gif/218px-Halfadder.gif)](https://en.wikipedia.org/wiki/File:Halfadder.gif "Half adder in action.")
    
    Half adder in action.
    

-   [![Schematic of half adder implemented with five NAND gates.](https://upload.wikimedia.org/wikipedia/commons/thumb/5/55/Half_adder_using_NAND_gates_only.jpg/220px-Half_adder_using_NAND_gates_only.jpg)](https://en.wikipedia.org/wiki/File:Half_adder_using_NAND_gates_only.jpg "Schematic of half adder implemented with five NAND gates.")
    
    Schematic of half adder implemented with five [NAND gates](https://en.wikipedia.org/wiki/NAND_gate "NAND gate").
    

### Full adder\[[edit](https://en.wikipedia.org/w/index.php?title=Adder_(electronics)&action=edit&section=3 "Edit section: Full adder")\]

A **full adder** adds binary numbers and accounts for values carried in as well as out. A one-bit full-adder adds three one-bit numbers, often written as ![A](https://wikimedia.org/api/rest_v1/media/math/render/svg/7daff47fa58cdfd29dc333def748ff5fa4c923e3), ![B](https://wikimedia.org/api/rest_v1/media/math/render/svg/47136aad860d145f75f3eed3022df827cee94d7a), and ![{\displaystyle C_{in}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/c89dce295f8c5cacce1b3e1e8be7cf9859fb170a); ![A](https://wikimedia.org/api/rest_v1/media/math/render/svg/7daff47fa58cdfd29dc333def748ff5fa4c923e3) and ![B](https://wikimedia.org/api/rest_v1/media/math/render/svg/47136aad860d145f75f3eed3022df827cee94d7a) are the operands, and ![{\displaystyle C_{in}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/c89dce295f8c5cacce1b3e1e8be7cf9859fb170a) is a bit carried in from the previous less-significant stage.<sup id="cite_ref-Mano_1979_3-0"><a href="https://en.wikipedia.org/wiki/Adder_(electronics)#cite_note-Mano_1979-3">[3]</a></sup> The full adder is usually a component in a cascade of adders, which add 8, 16, 32, etc. bit binary numbers. The circuit produces a two-bit output. Output carry and sum are typically represented by the signals ![C_{{out}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/8d9603349e295df10584185a5f030673f5f48a55) and ![S](https://wikimedia.org/api/rest_v1/media/math/render/svg/4611d85173cd3b508e67077d4a1252c9c05abca2), where the sum equals ![{\displaystyle 2C_{out}+S}](https://wikimedia.org/api/rest_v1/media/math/render/svg/3c8f1a09a0d12d47ffd133eb06eb45039cab1df3).

A full adder can be implemented in many different ways such as with a custom [transistor](https://en.wikipedia.org/wiki/Transistor "Transistor")\-level circuit or composed of other gates. The most common implementation is with:

![S=A\oplus B\oplus C_{in}](https://wikimedia.org/api/rest_v1/media/math/render/svg/990290db40d42d06d3a1e308db603e962455e729)

![C_{out}=(A\cdot B)+(C_{in}\cdot (A\oplus B))](https://wikimedia.org/api/rest_v1/media/math/render/svg/9e5fc9a394d89a7b7c78a9fe64105abb9fc2a580)

The above expressions for ![S](https://wikimedia.org/api/rest_v1/media/math/render/svg/4611d85173cd3b508e67077d4a1252c9c05abca2) and ![{\displaystyle C_{in}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/c89dce295f8c5cacce1b3e1e8be7cf9859fb170a) can be derived from using a [Karnaugh map](https://en.wikipedia.org/wiki/Karnaugh_map "Karnaugh map") to simplify the truth table.

In this implementation, the final [OR gate](https://en.wikipedia.org/wiki/OR_gate "OR gate") before the carry-out output may be replaced by an [XOR gate](https://en.wikipedia.org/wiki/XOR_gate "XOR gate") without altering the resulting logic. This is because when A and B are both 1, the term ![(A \oplus B)](https://wikimedia.org/api/rest_v1/media/math/render/svg/966575de8d90ba0483c7eb54bd43ec27f7404e50) is always 0, and hence ![{\displaystyle (C_{in}\cdot (A\oplus B))}](https://wikimedia.org/api/rest_v1/media/math/render/svg/d054eb52746d55ab27530efeb29786d90795dfca) can only be 0. Thus, the inputs to the final OR gate can never be both 1's (this is the only combination for which the OR and XOR outputs differ).

Due to the [functional completeness](https://en.wikipedia.org/wiki/Functional_completeness "Functional completeness") property of the NAND and NOR gates, a full adder can also be implemented using nine [NAND gates](https://en.wikipedia.org/wiki/NAND_gates "NAND gates"),<sup id="cite_ref-4"><a href="https://en.wikipedia.org/wiki/Adder_(electronics)#cite_note-4">[4]</a></sup> or nine [NOR gates](https://en.wikipedia.org/wiki/NOR_gates "NOR gates").

Using only two types of gates is convenient if the circuit is being implemented using simple [integrated circuit](https://en.wikipedia.org/wiki/Integrated_circuit "Integrated circuit") chips which contain only one gate type per chip.

A full adder can also be constructed from two half adders by connecting ![A](https://wikimedia.org/api/rest_v1/media/math/render/svg/7daff47fa58cdfd29dc333def748ff5fa4c923e3) and ![B](https://wikimedia.org/api/rest_v1/media/math/render/svg/47136aad860d145f75f3eed3022df827cee94d7a) to the input of one half adder, then taking its sum-output ![S](https://wikimedia.org/api/rest_v1/media/math/render/svg/4611d85173cd3b508e67077d4a1252c9c05abca2) as one of the inputs to the second half adder and ![{\displaystyle C_{in}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/c89dce295f8c5cacce1b3e1e8be7cf9859fb170a) as its other input, and finally the carry outputs from the two half-adders are connected to an OR gate. The sum-output from the second half adder is the final sum output (![S](https://wikimedia.org/api/rest_v1/media/math/render/svg/4611d85173cd3b508e67077d4a1252c9c05abca2)) of the full adder and the output from the OR gate is the final carry output (![C_{{out}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/8d9603349e295df10584185a5f030673f5f48a55)). The critical path of a full adder runs through both XOR gates and ends at the sum bit ![S](https://wikimedia.org/api/rest_v1/media/math/render/svg/4611d85173cd3b508e67077d4a1252c9c05abca2). Assumed that an XOR gate takes 1 delays to complete, the delay imposed by the critical path of a full adder is equal to:

![{\displaystyle T_{\text{FA}}=2\cdot T_{\text{XOR}}=2D}](https://wikimedia.org/api/rest_v1/media/math/render/svg/01a19499534da6019dfb4a49ecdce0167ee69e95)

The critical path of a carry runs through one XOR gate in adder and through 2 gates (AND and OR) in carry-block and therefore, if AND or OR gates take 1 delay to complete, has a delay of:

![{\displaystyle T_{\text{c}}=T_{\text{XOR}}+T_{\text{AND}}+T_{\text{OR}}=D+D+D=3D}](https://wikimedia.org/api/rest_v1/media/math/render/svg/d4228d4c1af9ccf5354ba13d56ba2d5c7245c926)

The [truth table](https://en.wikipedia.org/wiki/Truth_table "Truth table") for the full adder is:

| **Inputs** | **Outputs** |
| --- | --- |
| **A** | **B** | **C**<sub>in</sub> | **C**<sub>out</sub> | **S** |
| 0 | 0 | 0 | 0 | 0 |
| 0 | 0 | 1 | 0 | 1 |
| 0 | 1 | 0 | 0 | 1 |
| 0 | 1 | 1 | 1 | 0 |
| 1 | 0 | 0 | 0 | 1 |
| 1 | 0 | 1 | 1 | 0 |
| 1 | 1 | 0 | 1 | 0 |
| 1 | 1 | 1 | 1 | 1 |

Inverting all inputs of a full adder also inverts all of its outputs, which can be used in the design of fast ripple-carry adders, because there is no need to invert the carry.<sup id="cite_ref-Fischer_5-0"><a href="https://en.wikipedia.org/wiki/Adder_(electronics)#cite_note-Fischer-5">[5]</a></sup>

Various full adder digial logic circuits:

-   [![Full adder in action.](https://upload.wikimedia.org/wikipedia/commons/thumb/5/57/Fulladder.gif/220px-Fulladder.gif)](https://en.wikipedia.org/wiki/File:Fulladder.gif "Full adder in action.")
    
    Full adder in action.
    

-   [![Schematic of full adder implemented with nine NAND gates.](https://upload.wikimedia.org/wikipedia/commons/thumb/6/69/Full_Adder_using_NAND_gates.svg/220px-Full_Adder_using_NAND_gates.svg.png)](https://en.wikipedia.org/wiki/File:Full_Adder_using_NAND_gates.svg "Schematic of full adder implemented with nine NAND gates.")
    
    Schematic of full adder implemented with nine [NAND gates](https://en.wikipedia.org/wiki/NAND_gate "NAND gate").
    
-   [![Schematic of full adder implemented with nine NOR gates.](https://upload.wikimedia.org/wikipedia/commons/thumb/a/ad/Full_Adder_using_NOR_gates.svg/220px-Full_Adder_using_NOR_gates.svg.png)](https://en.wikipedia.org/wiki/File:Full_Adder_using_NOR_gates.svg "Schematic of full adder implemented with nine NOR gates.")
    
    Schematic of full adder implemented with nine [NOR gates](https://en.wikipedia.org/wiki/NOR_gate "NOR gate").
    
-   [![Full adder with inverted outputs with single-transistor carry propagation delay in CMOS[5]](https://upload.wikimedia.org/wikipedia/commons/thumb/e/e7/Inverting_full_adder_CMOS_24T.svg/220px-Inverting_full_adder_CMOS_24T.svg.png)](https://en.wikipedia.org/wiki/File:Inverting_full_adder_CMOS_24T.svg "Full adder with inverted outputs with single-transistor carry propagation delay in CMOS[5]")
    
    Full adder with inverted outputs with single-transistor carry propagation delay in [CMOS](https://en.wikipedia.org/wiki/CMOS "CMOS")<sup id="cite_ref-Fischer_5-1"><a href="https://en.wikipedia.org/wiki/Adder_(electronics)#cite_note-Fischer-5">[5]</a></sup>
    
-   [![Schematic symbol for a 1-bit full adder with Cin and Cout drawn on sides of block to emphasize their use in a multi-bit adder](https://upload.wikimedia.org/wikipedia/commons/thumb/4/48/1-bit_full-adder.svg/192px-1-bit_full-adder.svg.png)](https://en.wikipedia.org/wiki/File:1-bit_full-adder.svg "Schematic symbol for a 1-bit full adder with Cin and Cout drawn on sides of block to emphasize their use in a multi-bit adder")
    
    [Schematic symbol](https://en.wikipedia.org/wiki/Electronic_symbol "Electronic symbol") for a 1-bit full adder with _C_<sub>in</sub> and _C_<sub>out</sub> drawn on sides of block to emphasize their use in a multi-bit adder
    

### Adders supporting multiple bits\[[edit](https://en.wikipedia.org/w/index.php?title=Adder_(electronics)&action=edit&section=4 "Edit section: Adders supporting multiple bits")\]

#### Ripple-carry adder\[[edit](https://en.wikipedia.org/w/index.php?title=Adder_(electronics)&action=edit&section=5 "Edit section: Ripple-carry adder")\]

[![4-bit adder with logical block diagram shown](https://upload.wikimedia.org/wikipedia/commons/thumb/5/5d/4-bit_ripple_carry_adder.svg/220px-4-bit_ripple_carry_adder.svg.png)](https://en.wikipedia.org/wiki/File:4-bit_ripple_carry_adder.svg)

4-bit adder with logical block diagram shown

[![](https://upload.wikimedia.org/wikipedia/commons/thumb/8/85/RippleCarry2.gif/220px-RippleCarry2.gif)](https://en.wikipedia.org/wiki/File:RippleCarry2.gif)

Decimal 4-digit ripple carry adder. FA = full adder, HA = half adder.

It is possible to create a logical circuit using multiple full adders to add _N_\-bit numbers. Each full adder inputs a ![{\displaystyle C_{in}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/c89dce295f8c5cacce1b3e1e8be7cf9859fb170a), which is the ![C_{{out}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/8d9603349e295df10584185a5f030673f5f48a55) of the previous adder. This kind of adder is called a **ripple-carry adder** (RCA), since each carry bit "ripples" to the next full adder. Note that the first (and only the first) full adder may be replaced by a half adder (under the assumption that ![{\displaystyle C_{in}=0}](https://wikimedia.org/api/rest_v1/media/math/render/svg/19705bad4890d4935d18ce610a6c5d60736221ea)).

The layout of a ripple-carry adder is simple, which allows fast design time; however, the ripple-carry adder is relatively slow, since each full adder must wait for the carry bit to be calculated from the previous full adder. The [gate delay](https://en.wikipedia.org/wiki/Gate_delay "Gate delay") can easily be calculated by inspection of the full adder circuit. Each full adder requires three levels of logic. In a 32-bit ripple-carry adder, there are 32 full adders, so the critical path (worst case) delay is 3 (from input to carry in first adder) + 31 × 2 (for carry propagation in latter adders) = 65 gate delays.<sup id="cite_ref-Adder_6-0"><a href="https://en.wikipedia.org/wiki/Adder_(electronics)#cite_note-Adder-6">[6]</a></sup> The general equation for the worst-case delay for a _n_\-bit carry-ripple adder, accounting for both the sum and carry bits, is:

![{\displaystyle T_{\text{CRA}}(n)=T_{\text{HA}}+(n-1)\cdot T_{\text{c}}+T_{\text{s}}=}](https://wikimedia.org/api/rest_v1/media/math/render/svg/26da5a90eba71eacba0baffc6bf1c9a1c0a6bbb5)![{\displaystyle T_{\text{FA}}+(n-1)\cdot T_{c}=}](https://wikimedia.org/api/rest_v1/media/math/render/svg/11c7d99f1f283d1f5e65be8207b4b384ffd17a5a)![{\displaystyle 3D+(n-1)\cdot 2D=(2n+1)\cdot D}](https://wikimedia.org/api/rest_v1/media/math/render/svg/942f75f5cbe38cfa328a7e3db3a036c35cc2d7d9)

A design with alternating carry polarities and optimized [AND-OR-Invert](https://en.wikipedia.org/wiki/AND-OR-Invert "AND-OR-Invert") gates can be about twice as fast.<sup id="cite_ref-Burgess_2011_7-0"><a href="https://en.wikipedia.org/wiki/Adder_(electronics)#cite_note-Burgess_2011-7">[7]</a></sup><sup id="cite_ref-Fischer_5-2"><a href="https://en.wikipedia.org/wiki/Adder_(electronics)#cite_note-Fischer-5">[5]</a></sup>

#### Carry-lookahead adder\[[edit](https://en.wikipedia.org/w/index.php?title=Adder_(electronics)&action=edit&section=6 "Edit section: Carry-lookahead adder")\]

[![](https://upload.wikimedia.org/wikipedia/commons/thumb/0/04/4-bit_carry_lookahead_adder.svg/220px-4-bit_carry_lookahead_adder.svg.png)](https://en.wikipedia.org/wiki/File:4-bit_carry_lookahead_adder.svg)

4-bit adder with carry lookahead

[![](https://upload.wikimedia.org/wikipedia/commons/thumb/5/58/64-bit_lookahead_carry_unit.svg/220px-64-bit_lookahead_carry_unit.svg.png)](https://en.wikipedia.org/wiki/File:64-bit_lookahead_carry_unit.svg)

64-bit adder with carry lookahead

To reduce the computation time, engineers devised faster ways to add two binary numbers by using [carry-lookahead adders](https://en.wikipedia.org/wiki/Carry-lookahead_adder "Carry-lookahead adder") (CLA). They work by creating two signals (![P](https://wikimedia.org/api/rest_v1/media/math/render/svg/b4dc73bf40314945ff376bd363916a738548d40a) and ![G](https://wikimedia.org/api/rest_v1/media/math/render/svg/f5f3c8921a3b352de45446a6789b104458c9f90b)) for each bit position, based on whether a carry is propagated through from a less significant bit position (at least one input is a 1), generated in that bit position (both inputs are 1), or killed in that bit position (both inputs are 0). In most cases, ![P](https://wikimedia.org/api/rest_v1/media/math/render/svg/b4dc73bf40314945ff376bd363916a738548d40a) is simply the sum output of a half adder and ![G](https://wikimedia.org/api/rest_v1/media/math/render/svg/f5f3c8921a3b352de45446a6789b104458c9f90b) is the carry output of the same adder. After ![P](https://wikimedia.org/api/rest_v1/media/math/render/svg/b4dc73bf40314945ff376bd363916a738548d40a) and ![G](https://wikimedia.org/api/rest_v1/media/math/render/svg/f5f3c8921a3b352de45446a6789b104458c9f90b) are generated, the carries for every bit position are created. Some advanced carry-lookahead architectures are the [Manchester carry chain](https://en.wikipedia.org/wiki/Manchester_carry_chain "Manchester carry chain"), [Brent–Kung adder](https://en.wikipedia.org/wiki/Brent%E2%80%93Kung_adder "Brent–Kung adder") (BKA),<sup id="cite_ref-Brent-Kung_1982_8-0"><a href="https://en.wikipedia.org/wiki/Adder_(electronics)#cite_note-Brent-Kung_1982-8">[8]</a></sup> and the [Kogge–Stone adder](https://en.wikipedia.org/wiki/Kogge%E2%80%93Stone_adder "Kogge–Stone adder") (KSA).<sup id="cite_ref-Kogge-Stone_1973_9-0"><a href="https://en.wikipedia.org/wiki/Adder_(electronics)#cite_note-Kogge-Stone_1973-9">[9]</a></sup><sup id="cite_ref-ULVD_2015_10-0"><a href="https://en.wikipedia.org/wiki/Adder_(electronics)#cite_note-ULVD_2015-10">[10]</a></sup>

Some other multi-bit adder architectures break the adder into blocks. It is possible to vary the length of these blocks based on the [propagation delay](https://en.wikipedia.org/wiki/Propagation_delay "Propagation delay") of the circuits to optimize computation time. These block based adders include the [carry-skip (or carry-bypass) adder](https://en.wikipedia.org/wiki/Carry-skip_adder "Carry-skip adder") which will determine ![P](https://wikimedia.org/api/rest_v1/media/math/render/svg/b4dc73bf40314945ff376bd363916a738548d40a) and ![G](https://wikimedia.org/api/rest_v1/media/math/render/svg/f5f3c8921a3b352de45446a6789b104458c9f90b) values for each block rather than each bit, and the [carry-select adder](https://en.wikipedia.org/wiki/Carry-select_adder "Carry-select adder") which pre-generates the sum and carry values for either possible carry input (0 or 1) to the block, using multiplexers to select the appropriate result _when_ the carry bit is known.

By combining multiple carry-lookahead adders, even larger adders can be created. This can be used at multiple levels to make even larger adders. For example, the following adder is a 64-bit adder that uses four 16-bit CLAs with two levels of [lookahead carry units](https://en.wikipedia.org/wiki/Lookahead_carry_unit "Lookahead carry unit").

Other adder designs include the [carry-select adder](https://en.wikipedia.org/wiki/Carry-select_adder "Carry-select adder"), [conditional sum adder](https://en.wikipedia.org/wiki/Conditional_sum_adder "Conditional sum adder"), [carry-skip adder](https://en.wikipedia.org/wiki/Carry-skip_adder "Carry-skip adder"), and carry-complete adder.

#### Carry-save adders\[[edit](https://en.wikipedia.org/w/index.php?title=Adder_(electronics)&action=edit&section=7 "Edit section: Carry-save adders")\]

If an adding circuit is to compute the sum of three or more numbers, it can be advantageous to not propagate the carry result. Instead, three-input adders are used, generating two results: a sum and a carry. The sum and the carry may be fed into two inputs of the subsequent 3-number adder without having to wait for propagation of a carry signal. After all stages of addition, however, a conventional adder (such as the ripple-carry or the lookahead) must be used to combine the final sum and carry results.

### 3:2 compressors\[[edit](https://en.wikipedia.org/w/index.php?title=Adder_(electronics)&action=edit&section=8 "Edit section: 3:2 compressors")\]

A full adder can be viewed as a _3:2 lossy compressor_: it sums three one-bit inputs and returns the result as a single two-bit number; that is, it maps 8 input values to 4 output values. Thus, for example, a binary input of 101 results in an output of 1 + 0 + 1 = 10 (decimal number 2). The carry-out represents bit one of the result, while the sum represents bit zero. Likewise, a half adder can be used as a _2:2 lossy compressor_, compressing four possible inputs into three possible outputs.

Such compressors can be used to speed up the summation of three or more addends. If the number of addends is exactly three, the layout is known as the [carry-save adder](https://en.wikipedia.org/wiki/Carry-save_adder "Carry-save adder"). If the number of addends is four or more, more than one layer of compressors is necessary, and there are various possible designs for the circuit: the most common are [Dadda](https://en.wikipedia.org/wiki/Dadda_tree "Dadda tree") and [Wallace trees](https://en.wikipedia.org/wiki/Wallace_tree "Wallace tree"). This kind of circuit is most notably used in [multiplier circuits](https://en.wikipedia.org/wiki/Binary_multiplier "Binary multiplier"), which is why these circuits are also known as Dadda and Wallace multipliers.

## Quantum adders\[[edit](https://en.wikipedia.org/w/index.php?title=Adder_(electronics)&action=edit&section=9 "Edit section: Quantum adders")\]

[![](https://upload.wikimedia.org/wikipedia/commons/thumb/0/0a/Quantum_Full_Adder.png/220px-Quantum_Full_Adder.png)](https://en.wikipedia.org/wiki/File:Quantum_Full_Adder.png)

Quantum full adder, using [Toffoli](https://en.wikipedia.org/wiki/Toffoli_gate "Toffoli gate") and [CNOT](https://en.wikipedia.org/wiki/CNOT "CNOT") gates. The CNOT-gate that is surrounded by a dotted square in this picture can be omitted if [uncomputation](https://en.wikipedia.org/wiki/Uncomputation "Uncomputation") to restore the _B output_ is not required.

Using only the [Toffoli](https://en.wikipedia.org/wiki/Toffoli_gate "Toffoli gate") and [CNOT](https://en.wikipedia.org/wiki/CNOT "CNOT") [quantum logic gates](https://en.wikipedia.org/wiki/Quantum_logic_gate "Quantum logic gate"), it is possible to produce quantum full- and half-adders.<sup id="cite_ref-11"><a href="https://en.wikipedia.org/wiki/Adder_(electronics)#cite_note-11">[11]</a></sup><sup id="cite_ref-12"><a href="https://en.wikipedia.org/wiki/Adder_(electronics)#cite_note-12">[12]</a></sup><sup id="cite_ref-13"><a href="https://en.wikipedia.org/wiki/Adder_(electronics)#cite_note-13">[13]</a></sup> The same circuits can also be implemented in classical [reversible computation](https://en.wikipedia.org/wiki/Reversible_computation "Reversible computation"), as both CNOT and Toffoli are also classical [logic gates](https://en.wikipedia.org/wiki/Logic_gate "Logic gate").

Since the [quantum Fourier transform](https://en.wikipedia.org/wiki/Quantum_Fourier_transform "Quantum Fourier transform") have a low [circuit complexity](https://en.wikipedia.org/wiki/Circuit_complexity "Circuit complexity"), it can efficiently be used for adding numbers as well.<sup id="cite_ref-14"><a href="https://en.wikipedia.org/wiki/Adder_(electronics)#cite_note-14">[14]</a></sup><sup id="cite_ref-15"><a href="https://en.wikipedia.org/wiki/Adder_(electronics)#cite_note-15">[15]</a></sup>

## Analog adders\[[edit](https://en.wikipedia.org/w/index.php?title=Adder_(electronics)&action=edit&section=10 "Edit section: Analog adders")\]

Just as in Binary adders, combining two input currents effectively adds those currents together. Within the constraints of the hardware, non-binary signals (i.e. with a base higher than 2) can be added together to calculate a sum. Also known as a "summing amplifier",<sup id="cite_ref-16"><a href="https://en.wikipedia.org/wiki/Adder_(electronics)#cite_note-16">[16]</a></sup> this technique can be used to reduce the number of transistors in an addition circuit.

## See also\[[edit](https://en.wikipedia.org/w/index.php?title=Adder_(electronics)&action=edit&section=11 "Edit section: See also")\]

-   [Binary multiplier](https://en.wikipedia.org/wiki/Binary_multiplier "Binary multiplier")
-   [Subtractor](https://en.wikipedia.org/wiki/Subtractor "Subtractor")
-   [Electronic mixer](https://en.wikipedia.org/wiki/Electronic_mixer "Electronic mixer") — for adding analog signals

## References\[[edit](https://en.wikipedia.org/w/index.php?title=Adder_(electronics)&action=edit&section=12 "Edit section: References")\]

1.  **[^](https://en.wikipedia.org/wiki/Adder_(electronics)#cite_ref-1 "Jump up")** Singh, Ajay Kumar (2010). [_Digital VLSI Design_](https://books.google.com/books?id=Gr023E8Kd5QC&dq=adder+summer+circuit&pg=PA321). Prentice Hall India. p. 321. [ISBN](https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)") [9788120341876](https://en.wikipedia.org/wiki/Special:BookSources/9788120341876 "Special:BookSources/9788120341876") – via Google Books.
2.  **[^](https://en.wikipedia.org/wiki/Adder_(electronics)#cite_ref-Lancaster_2004_2-0 "Jump up")** Lancaster, Geoffrey A. (2004). [_Excel HSC Software Design and Development_](https://books.google.com/books?id=PZkDpS4m0fMC&pg=PA180). Pascal Press. p. 180. [ISBN](https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)") [978-1-74125175-3](https://en.wikipedia.org/wiki/Special:BookSources/978-1-74125175-3 "Special:BookSources/978-1-74125175-3").
3.  **[^](https://en.wikipedia.org/wiki/Adder_(electronics)#cite_ref-Mano_1979_3-0 "Jump up")** Mano, M. Morris (1979). [_Digital Logic and Computer Design_](https://archive.org/details/digitallogiccomp00mano/page/119). [Prentice-Hall](https://en.wikipedia.org/wiki/Prentice-Hall "Prentice-Hall"). pp. [119–123](https://archive.org/details/digitallogiccomp00mano/page/119). [ISBN](https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)") [978-0-13-214510-7](https://en.wikipedia.org/wiki/Special:BookSources/978-0-13-214510-7 "Special:BookSources/978-0-13-214510-7").
4.  **[^](https://en.wikipedia.org/wiki/Adder_(electronics)#cite_ref-4 "Jump up")** Teja, Ravi (2021-04-15), [_Half Adder and Full Adder Circuits_](https://www.electronicshub.org/half-adder-and-full-adder-circuits/#Full_Adder_using_NAND_Gates), retrieved 2021-07-27
5.  ^ [Jump up to: <sup><i><b>a</b></i></sup>](https://en.wikipedia.org/wiki/Adder_(electronics)#cite_ref-Fischer_5-0) [<sup><i><b>b</b></i></sup>](https://en.wikipedia.org/wiki/Adder_(electronics)#cite_ref-Fischer_5-1) [<sup><i><b>c</b></i></sup>](https://en.wikipedia.org/wiki/Adder_(electronics)#cite_ref-Fischer_5-2) Fischer, P. ["Einfache Schaltungsblöcke"](https://web.archive.org/web/20210905175605/https://sus.ziti.uni-heidelberg.de/Lehre/WS1617_DST/DST_Fischer_06_Einfache_Bloecke_FF.pptx.pdf) (PDF). Universität Heidelberg. Archived from [the original](https://sus.ziti.uni-heidelberg.de/Lehre/WS1617_DST/DST_Fischer_06_Einfache_Bloecke_FF.pptx.pdf) (PDF) on 2021-09-05. Retrieved 2021-09-05.
6.  **[^](https://en.wikipedia.org/wiki/Adder_(electronics)#cite_ref-Adder_6-0 "Jump up")** Satpathy, Pinaki (2016). [_Design and Implementation of Carry Select Adder Using T-Spice_](https://books.google.com/books?id=F_AWDQAAQBAJ&pg=PA22). Anchor Academic Publishing. p. 22. [ISBN](https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)") [978-3-96067058-2](https://en.wikipedia.org/wiki/Special:BookSources/978-3-96067058-2 "Special:BookSources/978-3-96067058-2").
7.  **[^](https://en.wikipedia.org/wiki/Adder_(electronics)#cite_ref-Burgess_2011_7-0 "Jump up")** Burgess, Neil (2011). [_Fast Ripple-Carry Adders in Standard-Cell CMOS VLSI_](http://ieeexplore.ieee.org/Xplore/login.jsp?url=http%3A%2F%2Fieeexplore.ieee.org%2Fiel5%2F5991607%2F5992089%2F05992115.pdf%3Farnumber%3D5992115&authDecision=-203). [20th IEEE Symposium on Computer Arithmetic](https://en.wikipedia.org/wiki/20th_IEEE_Symposium_on_Computer_Arithmetic "20th IEEE Symposium on Computer Arithmetic"). pp. 103–111.
8.  **[^](https://en.wikipedia.org/wiki/Adder_(electronics)#cite_ref-Brent-Kung_1982_8-0 "Jump up")** [Brent, Richard Peirce](https://en.wikipedia.org/wiki/Richard_Peirce_Brent "Richard Peirce Brent"); Kung, Hsiang Te (March 1982). ["A Regular Layout for Parallel Adders"](https://web.archive.org/web/20170924184528/http://www.dtic.mil/get-tr-doc/pdf?AD=ADA074455). _[IEEE Transactions on Computers](https://en.wikipedia.org/wiki/IEEE_Transactions_on_Computers "IEEE Transactions on Computers")_. **C-31** (3): 260–264. [doi](https://en.wikipedia.org/wiki/Doi_(identifier) "Doi (identifier)"):[10.1109/TC.1982.1675982](https://doi.org/10.1109%2FTC.1982.1675982). [ISSN](https://en.wikipedia.org/wiki/ISSN_(identifier) "ISSN (identifier)") [0018-9340](https://www.worldcat.org/issn/0018-9340). [S2CID](https://en.wikipedia.org/wiki/S2CID_(identifier) "S2CID (identifier)") [17348212](https://api.semanticscholar.org/CorpusID:17348212). Archived from [the original](http://www.dtic.mil/get-tr-doc/pdf?AD=ADA074455) on September 24, 2017.
9.  **[^](https://en.wikipedia.org/wiki/Adder_(electronics)#cite_ref-Kogge-Stone_1973_9-0 "Jump up")** [Kogge, Peter Michael](https://en.wikipedia.org/wiki/Peter_Michael_Kogge "Peter Michael Kogge"); Stone, Harold S. (August 1973). "A Parallel Algorithm for the Efficient Solution of a General Class of Recurrence Equations". _[IEEE Transactions on Computers](https://en.wikipedia.org/wiki/IEEE_Transactions_on_Computers "IEEE Transactions on Computers")_. **C-22** (8): 786–793. [doi](https://en.wikipedia.org/wiki/Doi_(identifier) "Doi (identifier)"):[10.1109/TC.1973.5009159](https://doi.org/10.1109%2FTC.1973.5009159). [S2CID](https://en.wikipedia.org/wiki/S2CID_(identifier) "S2CID (identifier)") [206619926](https://api.semanticscholar.org/CorpusID:206619926).
10.  **[^](https://en.wikipedia.org/wiki/Adder_(electronics)#cite_ref-ULVD_2015_10-0 "Jump up")** Reynders, Nele; Dehaene, Wim (2015). _Ultra-Low-Voltage Design of Energy-Efficient Digital Circuits_. _Analog Circuits and Signal Processing Series_. Analog Circuits And Signal Processing (ACSP) (1 ed.). Cham, Switzerland: [Springer International Publishing AG Switzerland](https://en.wikipedia.org/wiki/Springer_International_Publishing_AG_Switzerland "Springer International Publishing AG Switzerland"). [doi](https://en.wikipedia.org/wiki/Doi_(identifier) "Doi (identifier)"):[10.1007/978-3-319-16136-5](https://doi.org/10.1007%2F978-3-319-16136-5). [ISBN](https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)") [978-3-319-16135-8](https://en.wikipedia.org/wiki/Special:BookSources/978-3-319-16135-8 "Special:BookSources/978-3-319-16135-8"). [ISSN](https://en.wikipedia.org/wiki/ISSN_(identifier) "ISSN (identifier)") [1872-082X](https://www.worldcat.org/issn/1872-082X). [LCCN](https://en.wikipedia.org/wiki/LCCN_(identifier) "LCCN (identifier)") [2015935431](https://lccn.loc.gov/2015935431).
11.  **[^](https://en.wikipedia.org/wiki/Adder_(electronics)#cite_ref-11 "Jump up")** Feynman, Richard P. (1986). "Quantum mechanical computers". _Foundations of Physics_. Springer Science and Business Media LLC. **16** (6): 507–531. [Bibcode](https://en.wikipedia.org/wiki/Bibcode_(identifier) "Bibcode (identifier)"):[1986FoPh...16..507F](https://ui.adsabs.harvard.edu/abs/1986FoPh...16..507F). [doi](https://en.wikipedia.org/wiki/Doi_(identifier) "Doi (identifier)"):[10.1007/bf01886518](https://doi.org/10.1007%2Fbf01886518). [ISSN](https://en.wikipedia.org/wiki/ISSN_(identifier) "ISSN (identifier)") [0015-9018](https://www.worldcat.org/issn/0015-9018). [S2CID](https://en.wikipedia.org/wiki/S2CID_(identifier) "S2CID (identifier)") [122076550](https://api.semanticscholar.org/CorpusID:122076550).
12.  **[^](https://en.wikipedia.org/wiki/Adder_(electronics)#cite_ref-12 "Jump up")** ["Code example: Quantum full adder"](https://www.quantum-inspire.com/kbase/full-adder/). QuTech (Delft University of Technology (TU Delft) and the Netherlands Organisation for Applied Scientific Research (TNO)).
13.  **[^](https://en.wikipedia.org/wiki/Adder_(electronics)#cite_ref-13 "Jump up")** Dibyendu Chatterjee, Arijit Roy (2015). ["A transmon-based quantum half-adder scheme"](https://paperity.org/p/73955611/a-transmon-based-quantum-half-adder-scheme). _[Progress of Theoretical and Experimental Physics](https://en.wikipedia.org/wiki/Progress_of_Theoretical_and_Experimental_Physics "Progress of Theoretical and Experimental Physics")_. **2015** (9): 093A02. [Bibcode](https://en.wikipedia.org/wiki/Bibcode_(identifier) "Bibcode (identifier)"):[2015PTEP.2015i3A02C](https://ui.adsabs.harvard.edu/abs/2015PTEP.2015i3A02C). [doi](https://en.wikipedia.org/wiki/Doi_(identifier) "Doi (identifier)"):[10.1093/ptep/ptv122](https://doi.org/10.1093%2Fptep%2Fptv122).
14.  **[^](https://en.wikipedia.org/wiki/Adder_(electronics)#cite_ref-14 "Jump up")** Draper, Thomas G. (7 Aug 2000). "Addition on a Quantum Computer". [arXiv](https://en.wikipedia.org/wiki/ArXiv_(identifier) "ArXiv (identifier)"):[quant-ph/0008033](https://arxiv.org/abs/quant-ph/0008033).
15.  **[^](https://en.wikipedia.org/wiki/Adder_(electronics)#cite_ref-15 "Jump up")** Ruiz-Perez, Lidia; Juan Carlos, Garcia-Escartin (2 May 2017). "Quantum arithmetic with the quantum Fourier transform". _Quantum Information Processing_. **16** (6): 152. [arXiv](https://en.wikipedia.org/wiki/ArXiv_(identifier) "ArXiv (identifier)"):[1411.5949v2](https://arxiv.org/abs/1411.5949v2). [Bibcode](https://en.wikipedia.org/wiki/Bibcode_(identifier) "Bibcode (identifier)"):[2017QuIP...16..152R](https://ui.adsabs.harvard.edu/abs/2017QuIP...16..152R). [doi](https://en.wikipedia.org/wiki/Doi_(identifier) "Doi (identifier)"):[10.1007/s11128-017-1603-1](https://doi.org/10.1007%2Fs11128-017-1603-1). [S2CID](https://en.wikipedia.org/wiki/S2CID_(identifier) "S2CID (identifier)") [10948948](https://api.semanticscholar.org/CorpusID:10948948).
16.  **[^](https://en.wikipedia.org/wiki/Adder_(electronics)#cite_ref-16 "Jump up")** ["Summing Amplifier is an Op-amp Voltage Adder"](https://www.electronics-tutorials.ws/opamp/opamp_4.html). 22 August 2013.

## Further reading\[[edit](https://en.wikipedia.org/w/index.php?title=Adder_(electronics)&action=edit&section=13 "Edit section: Further reading")\]

-   Liu, Tso-Kai; Hohulin, Keith R.; Shiau, Lih-Er; Muroga, Saburo (January 1974). "Optimal One-Bit Full-Adders with Different Types of Gates". _[IEEE Transactions on Computers](https://en.wikipedia.org/wiki/IEEE_Transactions_on_Computers "IEEE Transactions on Computers")_. Bell Laboratories: [IEEE](https://en.wikipedia.org/wiki/IEEE "IEEE"). **C-23** (1): 63–70. [doi](https://en.wikipedia.org/wiki/Doi_(identifier) "Doi (identifier)"):[10.1109/T-C.1974.223778](https://doi.org/10.1109%2FT-C.1974.223778). [ISSN](https://en.wikipedia.org/wiki/ISSN_(identifier) "ISSN (identifier)") [0018-9340](https://www.worldcat.org/issn/0018-9340). [S2CID](https://en.wikipedia.org/wiki/S2CID_(identifier) "S2CID (identifier)") [7746693](https://api.semanticscholar.org/CorpusID:7746693).
-   Lai, Hung Chi; Muroga, Saburo (September 1979). "Minimum Binary Parallel Adders with NOR (NAND) Gates". _[IEEE Transactions on Computers](https://en.wikipedia.org/wiki/IEEE_Transactions_on_Computers "IEEE Transactions on Computers")_. [IEEE](https://en.wikipedia.org/wiki/IEEE "IEEE"). **C-28** (9): 648–659. [doi](https://en.wikipedia.org/wiki/Doi_(identifier) "Doi (identifier)"):[10.1109/TC.1979.1675433](https://doi.org/10.1109%2FTC.1979.1675433). [S2CID](https://en.wikipedia.org/wiki/S2CID_(identifier) "S2CID (identifier)") [23026844](https://api.semanticscholar.org/CorpusID:23026844).
-   Mead, Carver; Conway, Lynn (1980) \[December 1979\]. [_Introduction to VLSI Systems_](https://archive.org/details/introductiontovl00mead) (1 ed.). Reading, MA, USA: [Addison-Wesley](https://en.wikipedia.org/wiki/Addison-Wesley "Addison-Wesley"). [Bibcode](https://en.wikipedia.org/wiki/Bibcode_(identifier) "Bibcode (identifier)"):[1980aw...book.....M](https://ui.adsabs.harvard.edu/abs/1980aw...book.....M). [ISBN](https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)") [978-0-20104358-7](https://en.wikipedia.org/wiki/Special:BookSources/978-0-20104358-7 "Special:BookSources/978-0-20104358-7"). Retrieved 2018-05-12.
-   Davio, Marc; Dechamps, Jean-Pierre; Thayse, André (1983). _Digital Systems, with algorithm implementation_ (1 ed.). [Philips Research Laboratory](https://en.wikipedia.org/wiki/Philips_Research_Laboratory "Philips Research Laboratory"), Brussels, Belgium: [John Wiley & Sons](https://en.wikipedia.org/wiki/John_Wiley_%26_Sons "John Wiley & Sons"), a Wiley-Interscience Publication. [ISBN](https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)") [978-0-471-10413-1](https://en.wikipedia.org/wiki/Special:BookSources/978-0-471-10413-1 "Special:BookSources/978-0-471-10413-1"). [LCCN](https://en.wikipedia.org/wiki/LCCN_(identifier) "LCCN (identifier)") [82-2710](https://lccn.loc.gov/82-2710).
-   Gosling, John (January 1971). "Review of High-Speed Addition Techniques". _[Proc. IEE](https://en.wikipedia.org/wiki/Proceedings_of_the_Institution_of_Electrical_Engineers "Proceedings of the Institution of Electrical Engineers")_. **188** (1): 29–35. [doi](https://en.wikipedia.org/wiki/Doi_(identifier) "Doi (identifier)"):[10.1049/piee.1971.0004](https://doi.org/10.1049%2Fpiee.1971.0004).

## External links\[[edit](https://en.wikipedia.org/w/index.php?title=Adder_(electronics)&action=edit&section=14 "Edit section: External links")\]

-   [Hardware algorithms for arithmetic modules](https://www.ecsis.riec.tohoku.ac.jp/topics/amg/i-amg/doc/algorithm), includes description of several adder layouts with figures.
-   [8-bit Full Adder and Subtractor](http://dev.code.ultimater.net/electronics/8-bit-full-adder-and-subtractor/), a demonstration of an interactive Full Adder built in JavaScript solely for learning purposes.
-   [Interactive Full Adder Simulation](https://web.archive.org/web/20190416182054/http://teahlab.com/Full_Adder/) (requires Java), Interactive Full Adder circuit constructed with Teahlab's online circuit simulator.
-   [Interactive Half Adder Simulation](https://web.archive.org/web/20190416182052/http://teahlab.com/Half_Adder/) (requires Java), Half Adder circuit built with Teahlab's circuit simulator.
-   [4-bit Full Adder Simulation](http://www.edaplayground.com/s/example/368) built in Verilog, and the accompanying [Ripple Carry Full Adder Video Tutorial](https://www.youtube.com/watch?v=bL3ihMA8_Gs&hd=1)
-   Shirriff, Ken (November 2020). ["Reverse-engineering the carry-lookahead circuit in the Intel 8008 processor"](http://www.righto.com/2020/11/reverse-engineering-carry-lookahead.html).
