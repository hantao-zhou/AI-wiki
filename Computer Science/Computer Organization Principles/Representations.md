---
created: 2023-04-22T12:32:59 (UTC +08:00)
tags: [Data Structures,Algorithms,Python,Java,C,C++,JavaScript,Android Development,SQL,Data Science,Machine Learning,PHP,Web Development,System Design,Tutorial,Technical Blogs,Interview Experience,Interview Preparation,Programming,Competitive Programming,SDE Sheet,Job-a-thon,Coding Contests,GATE CSE,HTML,CSS,React,NodeJS,Placement,Aptitude,Quiz,Computer Science,Programming Examples,GeeksforGeeks Courses,Puzzles]
source: https://www.geeksforgeeks.org/fixed-point-representation/
author: mrrobot01@mrrobot01
---

# Fixed Point Representation - GeeksforGeeks

> ## Excerpt
> Real numbers have a fractional component. This article explains the real number representation method using fixed points. In digital signal processing  DSP  and gaming applications  where performance is usually more important than precision  fixed point data encoding is extensively used. The Binary Point  Fractional values such as 26.5 are represented

---
**Real numbers** have a fractional component. This article explains the real number representation method using fixed points. In digital signal processing (DSP) and gaming applications, where performance is usually more important than precision, fixed point data encoding is extensively used.

**The Binary Point:** Fractional values such as 26.5 are represented using the binary point concept. The decimal point in a decimal numeral system and a binary point are comparable. It serves as a divider between a number’s integer and fractional parts.

For instance, the weight of the coefficient 6 in the number 26.5 is 10<sup>0</sup>, or 1. The weight of the coefficient 5 is 10<sup>-1 </sup> or (5/10 = 1/2 = 0.5).

> 2 \* 10<sup>1</sup> + 6 \* 10<sup>0</sup> + 5 \* 10<sup>-1 </sup> \= 26.5
> 
> 2 \* 10 + 6 \* 1 + 0.5 = 26.5

A “binary point” can be created using our binary representation and the same decimal point concept. A binary point, like in the decimal system, represents the coefficient of the expression 2<sup>0</sup> = 1. The weight of each digit (or bit) to the left of the binary point is 2<sup>0</sup>, 2<sup>1</sup>, 2<sup>2</sup>, and so forth. The binary point’s rightmost digits (or bits) have weights of 2<sup>-1</sup>, 2<sup>-2</sup>, 2<sup>-3</sup>, and so on. 

For illustration, the number **11010.1<sub>2</sub>** represents the value:

> **11010.1<sub>2</sub>**
> 
> \= 1 \* 2<sup>4</sup> + 1 \* 2<sup>3</sup> + 0 \* 2<sup>2</sup> + 1 \* 2<sup>1</sup> + 0\* 2<sup>0</sup> + 1 \* 2<sup>-1</sup>
> 
> \= 16 + 8 + 2 + 0.5
> 
> \= 26.5

![](https://media.geeksforgeeks.org/wp-content/uploads/20220728214912/geeksforgeeksfixedpointrepresentation1.png)

### Shifting Pattern:

When an integer is shifted right by one bit in a binary system, it is comparable to being divided by two. Since we cannot represent a digit to the right of a binary point in the case of integers since there is no fractional portion, this shifting operation is an integer division.

-   A number is always divided by two when the bit pattern of the number is shifted to the right by one bit.
-   A number is multiplied by two when it is moved left one bit.

### How to write Fixed Point Number?

Understanding fixed point number representation requires knowledge of the shifting process described above. Simply by implicitly establishing the binary point to be at a specific place of a numeral, we can define a fixed point number type to represent a real number in computers (or any hardware, in general). Then we will just use this implicit standard to express numbers.

Two arguments are all that are required to theoretically create a fixed point type:

1.  Width of the number representation.
2.  Binary point position within the number.

the notation fixed<w, b>, where “w” stands for the overall amount of bits used (the width of a number) and “b” stands for the location of the binary point counting from the least significant bit (counting from 0).

### Unsigned representation:

For example, fixed<8,3> signifies an 8-bit fixed-point number, the rightmost 3 bits of which are fractional.

**Representation of a real number:**

> **00010.1102**  
> \= 1 \* 2<sup>1</sup> + 1 \* 2<sup>-1</sup> + 1 \* 2<sup>-2</sup>
> 
> \= 2 + 0.5 + 0.25
> 
> \= 2.75

![](https://media.geeksforgeeks.org/wp-content/uploads/20220728220542/geeksforgeeksbinarypointrepresentation.png)

### Signed representation: 

Negative integers in binary number systems must be encoded using signed number representations. In mathematics, negative numbers are denoted by a minus sign (“-“) before them. In contrast, numbers are exclusively represented as bit sequences in computer hardware, with no additional symbols.

Signed binary numbers (+ve or -ve) can be represented in one of three ways:

1.  Sign-Magnitude form
2.  1’s complement form
3.  2’s complement form

**Sign-Magnitude form**: In sign-magnitude form, the number’s sign is represented by the MSB (Most Significant Bit also called as Leftmost Bit), while its magnitude is shown by the remaining bits (In the case of 8-bit representation Leftmost bit is the sign bit and remaining bits are magnitude bit).

> 55 <sub>10</sub> = 00110111<sub>2</sub>
> 
> −55 <sub>10</sub> = 10110111<sub>2</sub>

**1’s complement form**: By complementing each bit in a signed binary integer, the 1’s complement of a number can be derived. A result is a negative number when a positive number is complemented by 1. Similar to this, complementing a negative number by 1 results in a positive number.

> 55 <sub>10</sub> = 00110111<sub>2</sub>
> 
> −55 <sub>10</sub> = 11001000<sub>2</sub>

**2’s complement form**: By adding one to the signed binary number’s 1’s complement, a binary number can be converted to its 2’s complement. Therefore, a positive number’s 2’s complement results in a negative number. The complement of a negative number by two yields a positive number.

> 55 <sub>10</sub> = 11001000 + 1 (1’s complement + 1 = 2’s complement)
> 
> \-55 <sub>10</sub> = 11001001 <sub>2</sub>

### Fixed Point representation of negative number:

Consider the number -2.5, fixed<w,b> width = 4 bit, binary point = 1 bit (assume the binary point is at position 1). First, represent 2.5 in binary, then find its 2’s complement and you will get the binary fixed-point representation of -2.5.

>  2.5 <sub>10</sub> = 0101 <sub>2</sub>
> 
> \-2.5 <sub>10</sub> = 1010 <sub>2</sub> + 1 (1’s complement + 1 = 2’s complement)
> 
> \-2.5 <sub>10</sub> = 1011 <sub>2</sub>

![](https://media.geeksforgeeks.org/wp-content/uploads/20220728225828/geeksforgeeksbinarypointrepresentationofnegativenumber.png)

### 1’s complement representation range:

One bit is essentially used as a sign bit for 1’s complement numbers, leaving you with only 7 bits to store the actual number in an 8-bit number.

Therefore, the biggest number is just 127 (anything greater would require 8 bits, making it appear to be a negative number).

The least figure is likely to be -127 or -128 as well.

> **1’s complement:**
> 
> 127 = 01111111 : 1s complement is 10000000
> 
> 128 = 10000000 : 1s complement is 01111111

We can see that storing -128 in 1’s complement is impossible (since the top bit is unset and it looks like a positive number)

_**The 1’s complement range is -127 to 127.**_

### 2’s complement representation range:

Additionally, one bit in 2’s complement numbers is effectively used as a sign bit, leaving you with only 7 bits to store the actual number in an 8-bit integer.

> **2’s complement:**
> 
> 127 = 01111111 : 2s complement is 10000001
> 
> 128 = 10000000 : 2s complement is 10000000

we can see that we can store -128 in 2s complement.

_**The 2s complement range is -128 to 127.**_

### Advantages of Fixed Point Representation:

-   Integer representation and fixed point numbers are indeed close relatives.
-   Because of this, fixed point numbers can also be calculated using all the arithmetic operations a computer can perform on integers.
-   They are just as simple and effective as computer integer arithmetic.
-   To conduct real number arithmetic using fixed point format, we can reuse all the hardware designed for integer arithmetic.

### Disadvantages of Fixed Point Representation:

-   Loss in range and precision when compared to representations of floating point numbers.

---
created: 2023-04-22T12:33:34 (UTC +08:00)
tags: []
source: https://en.wikipedia.org/wiki/Ones%27_complement
author: Contributors to Wikimedia projects
---

# Ones' complement - Wikipedia

> ## Excerpt
> From Wikipedia, the free encyclopedia

---
From Wikipedia, the free encyclopedia

Three-bit ones'-complement integers
| Bits | Unsigned value | Ones' complement  value |
| --- | --- | --- |
| 000 | 0 | 0 |
| 001 | 1 | 1 |
| 010 | 2 | 2 |
| 011 | 3 | 3 |
| 100 | 4 | −3 |
| 101 | 5 | −2 |
| 110 | 6 | −1 |
| 111 | 7 | −0 |

8-bit ones'-complement integers
| Bits | Unsigned  value | Ones'  complement  value |
| --- | --- | --- |
| 0000 0000 | 0  | 0  |
| 0000 0001 | 1  | 1  |
| 0000 0010 | 2  | 2  |
| 0111 1110 | 126  | 126  |
| 0111 1111 | 127  | 127  |
| 1000 0000 | 128  | −127  |
| 1000 0001 | 129  | −126  |
| 1111 1101 | 253  | −2  |
| 1111 1110 | 254  | −1  |
| 1111 1111 | 255  | −0  |

The **ones' complement** of a [binary number](https://en.wikipedia.org/wiki/Binary_number "Binary number") is the value obtained by inverting all the bits in the [binary](https://en.wikipedia.org/wiki/Binary_number "Binary number") representation of the number (swapping 0s and 1s). The name "ones' complement" refers to the fact that such an inverted value, if added to the original, would always produce an "all ones" number (the term "[complement](https://en.wikipedia.org/wiki/Method_of_complements "Method of complements")" refers to such pairs of mutually [additive inverse](https://en.wikipedia.org/wiki/Additive_inverse "Additive inverse") numbers, here in respect to a non-0 base number). This mathematical operation is primarily of interest in [computer science](https://en.wikipedia.org/wiki/Computer_science "Computer science"), where it has varying effects depending on how a specific computer represents numbers.

A **ones' complement system** or **ones' complement arithmetic** is a system in which negative numbers are represented by the inverse of the binary representations of their corresponding positive numbers. In such a system, a number is negated (converted from positive to negative or vice versa) by computing its ones' complement. An N-bit ones' complement numeral system can only represent integers in the range −(2<sup>N−1</sup>−1) to 2<sup>N−1</sup>−1 while [two's complement](https://en.wikipedia.org/wiki/Two%27s_complement "Two's complement") can express −2<sup>N−1</sup> to 2<sup>N−1</sup>−1. It is one of three common representations for [negative integers in binary computers](https://en.wikipedia.org/wiki/Signed_number_representations "Signed number representations"), along with [two's complement](https://en.wikipedia.org/wiki/Two%27s_complement "Two's complement") and [sign-magnitude](https://en.wikipedia.org/wiki/Sign-magnitude "Sign-magnitude").

The **ones' complement binary** [numeral system](https://en.wikipedia.org/wiki/Numeral_system "Numeral system") is characterized by the [bit complement](https://en.wikipedia.org/wiki/Bit_complement "Bit complement") of any integer value being the arithmetic negative of the value. That is, inverting all of the bits of a number (the logical complement) produces the same result as subtracting the value from 0.

Many early computers, including the [UNIVAC 1101](https://en.wikipedia.org/wiki/UNIVAC_1101 "UNIVAC 1101"), [CDC 160](https://en.wikipedia.org/wiki/CDC_160 "CDC 160"), [CDC 6600](https://en.wikipedia.org/wiki/CDC_6600 "CDC 6600"), the [LINC](https://en.wikipedia.org/wiki/LINC "LINC"), the [PDP-1](https://en.wikipedia.org/wiki/PDP-1 "PDP-1"), and the [UNIVAC 1107](https://en.wikipedia.org/wiki/UNIVAC_1100/2200_series#1107 "UNIVAC 1100/2200 series"), used ones' complement arithmetic. Successors of the CDC 6600 continued to use ones' complement arithmetic until the late 1980s, and the descendants of the UNIVAC 1107 (the [UNIVAC 1100/2200 series](https://en.wikipedia.org/wiki/UNIVAC_1100/2200_series "UNIVAC 1100/2200 series")) still do, but the majority of modern computers use [two's complement](https://en.wikipedia.org/wiki/Two%27s_complement "Two's complement").

## Number representation\[[edit](https://en.wikipedia.org/w/index.php?title=Ones%27_complement&action=edit&section=1 "Edit section: Number representation")\]

Positive numbers are the same simple, binary system used by two's complement and sign-magnitude. Negative values are the bit complement of the corresponding positive value. The largest positive value is characterized by the sign (high-order) bit being off (0) and all other bits being on (1). The lowest negative value is characterized by the sign bit being 1, and all other bits being 0. The table below shows all possible values in a four-bit system, from −7 to +7.

```
     +      −
 0   0000   1111   — Note that both +0 and −0 return TRUE when tested for zero
 1   0001   1110   — and FALSE when tested for non-zero. 
 2   0010   1101
 3   0011   1100
 4   0100   1011
 5   0101   1010
 6   0110   1001
 7   0111   1000

```

## Basics\[[edit](https://en.wikipedia.org/w/index.php?title=Ones%27_complement&action=edit&section=2 "Edit section: Basics")\]

Adding two values is straightforward. Simply align the values on the least significant bit and add, propagating any carry to the bit one position left. If the carry extends past the end of the word it is said to have "wrapped around", a condition called an "[end-around carry](https://en.wikipedia.org/wiki/End-around_carry "End-around carry")". When this occurs, the bit must be added back in at the right-most bit. This phenomenon does not occur in two's complement arithmetic.

```
  0001 0110     22
+ 0000 0011      3
===========   ====
  0001 1001     25

```

Subtraction is similar, except that borrows, rather than carries, are propagated to the left. If the borrow extends past the end of the word it is said to have "wrapped around", a condition called an "**end-around borrow**". When this occurs, the bit must be subtracted from the right-most bit. This phenomenon does not occur in two's complement arithmetic.

```
  0000 0110      6
− 0001 0011     19
===========   ====
1 1111 0011    −12    —An end-around borrow is produced, and the sign bit of the intermediate result is 1.
− 0000 0001      1    —Subtract the end-around borrow from the result.
===========   ====
  1111 0010    −13    —The correct result (6 − 19 = -13)

```

It is easy to demonstrate that the bit complement of a positive value is the negative magnitude of the positive value. The computation of 19 + 3 produces the same result as 19 − (−3).

Add 3 to 19.

```
  0001 0011     19
+ 0000 0011      3
===========   ====
  0001 0110     22

```

Subtract −3 from 19.

```
  0001 0011     19
− 1111 1100     −3
===========   ====
1 0001 0111     23    —An end-around borrow is produced.
− 0000 0001      1    —Subtract the end-around borrow from the result.
===========   ====
  0001 0110     22    —The correct result (19 − (−3) = 22).

```

## Negative zero\[[edit](https://en.wikipedia.org/w/index.php?title=Ones%27_complement&action=edit&section=3 "Edit section: Negative zero")\]

Negative zero is the condition where all bits in a signed word are 1. This follows the ones' complement rules that a value is negative when the left-most bit is 1, and that a negative number is the bit complement of the number's magnitude. The value also behaves as zero when computing. Adding or subtracting negative zero to/from another value produces the original value.

Adding negative zero:

```
  0001 0110     22
+ 1111 1111     −0
===========   ====
1 0001 0101     21    An end-around carry is produced.
+ 0000 0001      1
===========   ====
  0001 0110     22    The correct result (22 + (−0) = 22)

```

Subtracting negative zero:

```
  0001 0110     22
− 1111 1111     −0
===========   ====
1 0001 0111     23    An end-around borrow is produced.
− 0000 0001      1
===========   ====
  0001 0110     22    The correct result (22 − (−0) = 22)

```

Negative zero is easily produced in a 1's complement adder. Simply add the positive and negative of the same magnitude.

```
  0001 0110     22
+ 1110 1001    −22
===========   ====
  1111 1111     −0    Negative zero.

```

Although the math always produces the correct results, a side effect of negative zero is that software must test for negative zero.

## Avoiding negative zero\[[edit](https://en.wikipedia.org/w/index.php?title=Ones%27_complement&action=edit&section=4 "Edit section: Avoiding negative zero")\]

The generation of negative zero becomes a non-issue if addition is achieved with a complementing subtractor. The first operand is passed to the subtract unmodified, the second operand is complemented, and the subtraction generates the correct result, avoiding negative zero. The previous example added 22 and −22 and produced −0.

```
  0001 0110     22         0001 0110     22                  1110 1001   −22         1110 1001   −22
+ 1110 1001    −22       − 0001 0110     22                + 0001 0110    22       − 1110 1001   −22
===========   ====  but  ===========   ====   likewise,    ===========   ===  but  ===========   ===
  1111 1111     −0         0000 0000      0                  1111 1111    −0         0000 0000     0

```

"Corner cases" arise when one or both operands are zero and/or negative zero.

```
  0001 0010     18         0001 0010     18
− 0000 0000      0       − 1111 1111     −0
===========   ====       ===========   ====
  0001 0010     18       1 0001 0011     19
                         − 0000 0001      1
                         ===========   ====
                           0001 0010     18

```

Subtracting +0 is trivial (as shown above). If the second operand is negative zero it is inverted and the original value of the first operand is the result. Subtracting −0 is also trivial. The result can be only one of two cases. In case 1, operand 1 is −0 so the result is produced simply by subtracting 1 from 1 at every bit position. In case 2, the subtraction will generate a value that is 1 larger than operand 1 and an [end-around borrow](https://en.wikipedia.org/wiki/End-around_borrow "End-around borrow"). Completing the borrow generates the same value as operand 1.

The next example shows what happens when both operands are plus or minus zero:

```
  0000 0000      0         0000 0000      0         1111 1111     −0         1111 1111     −0
+ 0000 0000      0       + 1111 1111     −0       + 0000 0000      0       + 1111 1111     −0
===========   ====       ===========   ====       ===========   ====       ===========   ====
  0000 0000      0         1111 1111     −0         1111 1111     −0       1 1111 1110     −1
                                                                           + 0000 0001      1
                                                                           ==================
                                                                             1111 1111     −0

```

```
  0000 0000      0         0000 0000      0         1111 1111     −0         1111 1111     −0
− 1111 1111     −0       − 0000 0000      0       − 1111 1111     −0       − 0000 0000      0
===========   ====       ===========   ====       ===========   ====       ===========   ====
1 0000 0001      1         0000 0000      0         0000 0000      0         1111 1111     −0
− 0000 0001      1
===========   ====
  0000 0000      0

```

This example shows that of the four possible conditions when adding only ±0, an adder will produce −0 in three of them. A complementing subtractor will produce −0 only when both operands are −0.

## See also\[[edit](https://en.wikipedia.org/w/index.php?title=Ones%27_complement&action=edit&section=5 "Edit section: See also")\]

-   [Signed number representations](https://en.wikipedia.org/wiki/Signed_number_representations "Signed number representations")
-   [Two's complement](https://en.wikipedia.org/wiki/Two%27s_complement "Two's complement")
-   [IEEE floating point](https://en.wikipedia.org/wiki/IEEE_floating_point "IEEE floating point")

## References\[[edit](https://en.wikipedia.org/w/index.php?title=Ones%27_complement&action=edit&section=6 "Edit section: References")\]

-   [Donald Knuth](https://en.wikipedia.org/wiki/Donald_Knuth "Donald Knuth"): _[The Art of Computer Programming](https://en.wikipedia.org/wiki/The_Art_of_Computer_Programming "The Art of Computer Programming")_, Volume 2: Seminumerical Algorithms, chapter 4.1


---
created: 2023-04-22T12:34:32 (UTC +08:00)
tags: []
source: https://en.wikipedia.org/wiki/Two%27s_complement
author: Contributors to Wikimedia projects
---

# Two's complement - Wikipedia

> ## Excerpt
> Two's complement is a mathematical operation to reversibly convert a positive binary number into a negative binary number with equivalent negative value, using the binary digit with the greatest place value as the sign to indicate whether the binary number is positive or negative. It is used in computer science as the most common method of representing signed (positive, negative, and zero) integers on computers,[1] and more generally, fixed point binary values. When the most significant bit is 1, the number is signed as negative; and when the most significant bit is 0 the number is signed as positive (see Converting from two's complement representation, below).

---
**Two's complement** is a [mathematical operation](https://en.wikipedia.org/wiki/Mathematical_operation "Mathematical operation") to reversibly convert a positive [binary number](https://en.wikipedia.org/wiki/Binary_number "Binary number") into a negative binary number with equivalent negative value, using the [binary digit with the _greatest_ place value](https://en.wikipedia.org/wiki/Most_Significant_Bit "Most Significant Bit") as the _sign_ to indicate whether the binary number is positive or negative. It is used in [computer science](https://en.wikipedia.org/wiki/Computer_science "Computer science") as the most common [method of representing signed](https://en.wikipedia.org/wiki/Signed_number_representations "Signed number representations") (positive, negative, and zero) [integers](https://en.wikipedia.org/wiki/Integer_(computer_science) "Integer (computer science)") on computers,<sup id="cite_ref-1"><a href="https://en.wikipedia.org/wiki/Two%27s_complement#cite_note-1">[1]</a></sup> and more generally, [fixed point binary](https://en.wikipedia.org/wiki/Fixed-point_arithmetic "Fixed-point arithmetic") values. When the [most significant bit](https://en.wikipedia.org/wiki/Most_significant_bit "Most significant bit") is _1_, the number is signed as negative; and when the most significant bit is _0_ the number is signed as positive (see [Converting from two's complement representation](https://en.wikipedia.org/wiki/Two%27s_complement#Converting_from_two's_complement_representation), below).

## Procedure\[[edit](https://en.wikipedia.org/w/index.php?title=Two%27s_complement&action=edit&section=1 "Edit section: Procedure")\]

Two's complement is achieved by:

-   Step 1: starting with the equivalent positive number.
-   Step 2: inverting (or flipping) all bits – changing every 0 to 1, and every 1 to 0;
-   Step 3: adding 1 to the entire inverted number, ignoring any [overflow](https://en.wikipedia.org/wiki/Integer_overflow "Integer overflow"). Failing to ignore overflow will produce the wrong value for the result.

For example, to calculate the [decimal](https://en.wikipedia.org/wiki/Decimal "Decimal") number **−6** in binary:

-   Step 1: _+6_ in decimal is _0110_ in binary; the leftmost significant bit (the first 0) is the [sign](https://en.wikipedia.org/wiki/Sign_(mathematics) "Sign (mathematics)"). _+6_ is not _110_, because _110_ in binary is _−2_ in decimal.

-   Step 2: flip all bits in _0110_, giving _1001_.
-   Step 3: add the place value 1 to the flipped number _1001_, giving _1010_.

To verify that _1010_ indeed has a value of _−6_, add the place values together, but _subtracting_ the sign from the final calculation. Because that the first significant digit is the number sign it must be subtracted to produce the correct result: **1010** = (**1**×−2<sup>3</sup>) + (**0**×2<sup>2</sup>) + (**1**×2<sup>1</sup>) + (**0**×2<sup>0</sup>) = **1**×−8 + **0** + **1**×2 + **0** = −6.

<table><tbody><tr><td>Bits:</td><td>1</td><td>0</td><td>1</td><td>0</td></tr><tr><td>Decimal bit value:</td><td>−8</td><td>4</td><td>2</td><td>1</td></tr><tr><td>Binary calculation:</td><td>(<b>1</b>×−2<sup>3</sup>)</td><td>(<b>0</b>×2<sup>2</sup>)</td><td>(<b>1</b>×2<sup>1</sup>)</td><td>(<b>0</b>×2<sup>0</sup>)</td></tr><tr><td>Decimal calculation:</td><td><b>1</b>×−8</td><td><b>0</b></td><td><b>1</b>×2</td><td><b>0</b></td></tr></tbody></table>

## Theory\[[edit](https://en.wikipedia.org/w/index.php?title=Two%27s_complement&action=edit&section=2 "Edit section: Theory")\]

Two's complement is an example of a [radix complement](https://en.wikipedia.org/wiki/Method_of_complements "Method of complements"). The 'two' in the name refers to the term which, expanded fully in an N\-bit system, is actually "two to the power of N" - 2<sup><i>N</i></sup> (the only case where exactly 'two' would be produced in this term is _N_ = 1, so for a 1-bit system, but these don't have capacity for both a sign and a zero), and it is only this full term in respect to which the [complement](https://en.wikipedia.org/wiki/Method_of_complements "Method of complements") is calculated. As such, the precise definition of the _Two's complement_ of an N\-bit number is the [complement](https://en.wikipedia.org/wiki/Method_of_complements "Method of complements") of that number with respect to 2<sup><i>N</i></sup>.

The defining property of being a _complement to a number with respect to 2<sup>N</sup>_ is simply that the summation of this number with the original produce 2<sup><i>N</i></sup>. For example, using binary with numbers up to three-bits (so _N_ = 3 and 2<sup><i>N</i></sup> = 2<sup>3</sup> = 8 = 1000<sub>2</sub>, where '<sub>2</sub>' indicates a binary representation), a two's complement for the number 3 (011<sub>2</sub>) is 5 (101<sub>2</sub>), because summed to the original it gives 2<sup>3</sup> = 1000<sub>2</sub> = 011<sub>2</sub> + 101<sub>2</sub>. Where this correspondence is employed for representing negative numbers, it effectively means, using an analogy with decimal digits and a number-space only allowing eight non-negative numbers 0 through 7, dividing the number-space in two sets: the first four of the numbers 0 1 2 3 remain the same, while the remaining four encode negative numbers, maintaining their growing order, so making 4 encode -4, 5 encode -3, 6 encode -2 and 7 encode -1. A binary representation has an additional utility however, because the most significant bit also indicates the group (and the sign): it is 0 for the first group of non-negatives, and 1 for the second group of negatives. The tables at right illustrate this property.

Three-bit integers
| Bits | Unsigned value | Signed value  
(Two's complement) |
| --- | --- | --- |
| 000 | 0 | 0 |
| 001 | 1 | 1 |
| 010 | 2 | 2 |
| 011 | 3 | 3 |
| 100 | 4 | −4 |
| 101 | 5 | −3 |
| 110 | 6 | −2 |
| 111 | 7 | −1 |

Eight-bit integers
| Bits | Unsigned value | Signed value  
(Two's complement) |
| --- | --- | --- |
| 0000 0000 | 0 | 0 |
| 0000 0001 | 1 | 1 |
| 0000 0010 | 2 | 2 |
| 0111 1110 | 126 | 126 |
| 0111 1111 | 127 | 127 |
| 1000 0000 | 128 | −128 |
| 1000 0001 | 129 | −127 |
| 1000 0010 | 130 | −126 |
| 1111 1110 | 254 | −2 |
| 1111 1111 | 255 | −1 |

Calculation of the binary two's complement of a positive number essentially means subtracting the number from the 2<sup><i>N</i></sup>. But as can be seen for the three-bit example and the four-bit 1000<sub>2</sub> (2<sup>3</sup>), the number 2<sup><i>N</i></sup> will not itself be representable in a system limited to _N_ bits, as it is just outside the _N_ bits space (the number is nevertheless the reference point of the "Two's complement" in an _N_\-bit system). Because of this, systems with maximally _N_\-bits must break the subtraction into two operations: first subtract from the maximum number in the _N_\-bit system, that is 2<sup><i>N</i></sup>\-1 (this term in binary is actually a simple number consisting of 'all 1s', and a subtraction from it can be done simply by inverting all bits in the number also known as [the bitwise NOT operation](https://en.wikipedia.org/wiki/Bitwise_operation#NOT "Bitwise operation")) and then adding the one. Coincidentally, that intermediate number before adding the one is also used in computer science as another method of signed number representation and is called a [Ones' complement](https://en.wikipedia.org/wiki/Ones%27_complement "Ones' complement") (named that because summing such a number with the original gives the 'all 1s').

Compared to other systems for representing signed numbers (_e.g.,_ [ones' complement](https://en.wikipedia.org/wiki/Ones%27_complement "Ones' complement")), the two's complement has the advantage that the fundamental arithmetic operations of [addition](https://en.wikipedia.org/wiki/Addition "Addition"), [subtraction](https://en.wikipedia.org/wiki/Subtraction "Subtraction"), and [multiplication](https://en.wikipedia.org/wiki/Multiplication "Multiplication") are identical to those for unsigned binary numbers (as long as the inputs are represented in the same number of bits as the output, and any [overflow](https://en.wikipedia.org/wiki/Integer_overflow "Integer overflow") beyond those bits is discarded from the result). This property makes the system simpler to implement, especially for higher-precision arithmetic. Additionally, unlike ones' complement systems, two's complement has no representation for [negative zero](https://en.wikipedia.org/wiki/Signed_zero "Signed zero"), and thus does not suffer from its associated difficulties. Otherwise, both schemes have the desired property that the sign of integers can be reversed by taking the complement of its binary representation, but Two's component has an exception - the lowest negative, as can be seen in the tables.<sup id="cite_ref-2"><a href="https://en.wikipedia.org/wiki/Two%27s_complement#cite_note-2">[2]</a></sup>

## History\[[edit](https://en.wikipedia.org/w/index.php?title=Two%27s_complement&action=edit&section=3 "Edit section: History")\]

The [method of complements](https://en.wikipedia.org/wiki/Method_of_complements "Method of complements") had long been used to perform subtraction in decimal [adding machines](https://en.wikipedia.org/wiki/Adding_machine "Adding machine") and [mechanical calculators](https://en.wikipedia.org/wiki/Mechanical_calculator "Mechanical calculator"). [John von Neumann](https://en.wikipedia.org/wiki/John_von_Neumann "John von Neumann") suggested use of two's complement binary representation in his 1945 _[First Draft of a Report on the EDVAC](https://en.wikipedia.org/wiki/First_Draft_of_a_Report_on_the_EDVAC "First Draft of a Report on the EDVAC")_ proposal for an electronic stored-program digital computer.<sup id="cite_ref-von_Neumann_1945_3-0"><a href="https://en.wikipedia.org/wiki/Two%27s_complement#cite_note-von_Neumann_1945-3">[3]</a></sup> The 1949 [EDSAC](https://en.wikipedia.org/wiki/EDSAC "EDSAC"), which was inspired by the _First Draft_, used two's complement representation of negative binary integers.

Many early computers, including the [CDC 6600](https://en.wikipedia.org/wiki/CDC_6600 "CDC 6600"), the [LINC](https://en.wikipedia.org/wiki/LINC "LINC"), the [PDP-1](https://en.wikipedia.org/wiki/PDP-1 "PDP-1"), and the UNIVAC 1107, use [ones' complement](https://en.wikipedia.org/wiki/Ones%27_complement "Ones' complement") notation; the descendants of the UNIVAC 1107, the [UNIVAC 1100/2200 series](https://en.wikipedia.org/wiki/UNIVAC_1100/2200_series "UNIVAC 1100/2200 series"), continued to do so. The [IBM 700/7000 series](https://en.wikipedia.org/wiki/IBM_700/7000_series "IBM 700/7000 series") scientific machines use sign/magnitude notation, except for the index registers which are two's complement. Early commercial computers storing negative values in two's complement form include the [English Electric DEUCE](https://en.wikipedia.org/wiki/English_Electric_DEUCE "English Electric DEUCE") (1955), [Digital Equipment Corporation](https://en.wikipedia.org/wiki/Digital_Equipment_Corporation "Digital Equipment Corporation") [PDP-5](https://en.wikipedia.org/wiki/PDP-5 "PDP-5") and the 1963 [PDP-6](https://en.wikipedia.org/wiki/PDP-6 "PDP-6"). The [System/360](https://en.wikipedia.org/wiki/IBM_System/360 "IBM System/360"), introduced in 1964 by [IBM](https://en.wikipedia.org/wiki/IBM "IBM"), then the dominant player in the computer industry, made two's complement the most widely used binary representation in the computer industry. The first minicomputer, the [PDP-8](https://en.wikipedia.org/wiki/PDP-8 "PDP-8") introduced in 1965, uses two's complement arithmetic as do the 1969 [Data General Nova](https://en.wikipedia.org/wiki/Data_General_Nova "Data General Nova"), the 1970 [PDP-11](https://en.wikipedia.org/wiki/PDP-11 "PDP-11"), and almost all subsequent minicomputers and microcomputers.

## Converting from two's complement representation\[[edit](https://en.wikipedia.org/w/index.php?title=Two%27s_complement&action=edit&section=4 "Edit section: Converting from two's complement representation")\]

A two's-complement number system encodes positive and negative numbers in a binary number representation. The weight of each bit is a power of two, except for the [most significant bit](https://en.wikipedia.org/wiki/Most_significant_bit "Most significant bit"), whose weight is the negative of the corresponding power of two.

The value w of an N\-bit integer ![a_{N-1} a_{N-2} \dots a_0](https://wikimedia.org/api/rest_v1/media/math/render/svg/6733b85a0ac623ae6aaa53d4a52b97b9a737611d) is given by the following formula:

![{\displaystyle w=-a_{N-1}2^{N-1}+\sum _{i=0}^{N-2}a_{i}2^{i}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/c38008e13c25e778052edcb0f43814ab0528cc1a)

The most significant bit determines the sign of the number and is sometimes called the [sign bit](https://en.wikipedia.org/wiki/Sign_bit "Sign bit"). Unlike in [sign-and-magnitude](https://en.wikipedia.org/wiki/Sign-and-magnitude "Sign-and-magnitude") representation, the sign bit also has the weight −(2<sup><i>N</i> − 1</sup>) shown above. Using N bits, all integers from −(2<sup><i>N</i> − 1</sup>) to 2<sup><i>N</i> − 1</sup> − 1 can be represented.

## Converting to two's complement representation\[[edit](https://en.wikipedia.org/w/index.php?title=Two%27s_complement&action=edit&section=5 "Edit section: Converting to two's complement representation")\]

In two's complement notation, a _non-negative_ number is represented by its ordinary [binary representation](https://en.wikipedia.org/wiki/Binary_numeral_system "Binary numeral system"); in this case, the most significant bit is 0. Though, the range of numbers represented is not the same as with unsigned binary numbers. For example, an 8-bit unsigned number can represent the values 0 to 255 (11111111). However a two's complement 8-bit number can only represent non-negative integers from 0 to 127 (01111111), because the rest of the bit combinations with the most significant bit as '1' represent the negative integers −1 to −128.

The two's complement operation is the [additive inverse](https://en.wikipedia.org/wiki/Additive_inverse "Additive inverse") operation, so negative numbers are represented by the two's complement of the [absolute value](https://en.wikipedia.org/wiki/Absolute_value "Absolute value").

### From the ones' complement\[[edit](https://en.wikipedia.org/w/index.php?title=Two%27s_complement&action=edit&section=6 "Edit section: From the ones' complement")\]

To get the two's complement of a negative binary number, all [bits](https://en.wikipedia.org/wiki/Bit "Bit") are inverted, or "flipped", by using the [bitwise NOT](https://en.wikipedia.org/wiki/Bitwise_NOT "Bitwise NOT") operation; the value of 1 is then added to the resulting value, ignoring the overflow which occurs when taking the two's complement of 0.

For example, using 1 byte (=8 bits), the decimal number 5 is represented by

0000 0101<sub>2</sub>

The most significant bit (the leftmost bit in this case) is 0, so the pattern represents a non-negative value. To convert to −5 in two's-complement notation, first, all bits are inverted, that is: 0 becomes 1 and 1 becomes 0:

1111 1010<sub>2</sub>

At this point, the representation is the [ones' complement](https://en.wikipedia.org/wiki/Ones%27_complement "Ones' complement") of the decimal value −5. To obtain the two's complement, 1 is added to the result, giving:

1111 1011<sub>2</sub>

The result is a signed binary number representing the decimal value −5 in two's-complement form. The most significant bit is 1, so the value represented is negative.

The two's complement of a negative number is the corresponding positive value, except in the special case of the [most negative number](https://en.wikipedia.org/wiki/Most_negative_number "Most negative number"). For example, inverting the bits of −5 (above) gives:

0000 0100<sub>2</sub>

And adding one gives the final value:

0000 0101<sub>2</sub>

Likewise, the two's complement of zero is zero: inverting gives all ones, and adding one changes the ones back to zeros (since the overflow is ignored).

The two's complement of the most negative number representable (e.g. a one as the most-significant bit and all other bits zero) is itself. Hence, there is an 'extra' negative number for which two's complement does not give the negation, see [§ Most negative number](https://en.wikipedia.org/wiki/Two%27s_complement#Most_negative_number) below.

### Subtraction from 2<sup><i>N</i></sup>\[[edit](https://en.wikipedia.org/w/index.php?title=Two%27s_complement&action=edit&section=7 "Edit section: Subtraction from 2N")\]

The sum of a number and its ones' complement is an N\-bit word with all 1 bits, which is (reading as an unsigned binary number) 2<sup><i>N</i></sup> − 1. Then adding a number to its two's complement results in the N lowest bits set to 0 and the carry bit 1, where the latter has the weight (reading it as an unsigned binary number) of 2<sup><i>N</i></sup>. Hence, in the unsigned binary arithmetic the value of two's-complement negative number _x_\* of a positive x satisfies the equality _x_\* = 2<sup><i>N</i></sup> − _x_.<sup id="cite_ref-4"><a href="https://en.wikipedia.org/wiki/Two%27s_complement#cite_note-4">[a]</a></sup>

For example, to find the four-bit representation of −5 (subscripts denote the [base of the representation](https://en.wikipedia.org/wiki/Radix "Radix")):

_x_ = 5<sub>10</sub> therefore _x_ = 0101<sub>2</sub>

Hence, with _N_ = 4:

_x_\* = 2<sup><i>N</i></sup> − _x_ = 2<sup>4</sup> − 5<sub>10</sub> = 16<sub>10</sub> - 5<sub>10</sub> = 10000<sub>2</sub> − 0101<sub>2</sub> = 1011<sub>2</sub>

The calculation can be done entirely in base 10, converting to base 2 at the end:

_x_\* = 2<sup><i>N</i></sup> − _x_ = 2<sup>4</sup> − 5<sub>10</sub> = 11<sub>10</sub> = 1011<sub>2</sub>

### Working from LSB towards MSB\[[edit](https://en.wikipedia.org/w/index.php?title=Two%27s_complement&action=edit&section=8 "Edit section: Working from LSB towards MSB")\]

A shortcut to manually convert a [binary number](https://en.wikipedia.org/wiki/Binary_number "Binary number") into its two's complement is to start at the [least significant bit](https://en.wikipedia.org/wiki/Least_significant_bit "Least significant bit") (LSB), and copy all the zeros, working from LSB toward the most significant bit (MSB) until the first 1 is reached; then copy that 1, and flip all the remaining bits (Leave the MSB as a 1 if the initial number was in sign-and-magnitude representation). This shortcut allows a person to convert a number to its two's complement without first forming its ones' complement. For example: in two's complement representation, the negation of "0011 1100" is "1100 0100", where the underlined digits were unchanged by the copying operation (while the rest of the digits were flipped).

In computer circuitry, this method is no faster than the "complement and add one" method; both methods require working sequentially from right to left, propagating logic changes. The method of complementing and adding one can be sped up by a standard [carry look-ahead adder](https://en.wikipedia.org/wiki/Carry_look-ahead_adder "Carry look-ahead adder") circuit; the LSB towards MSB method can be sped up by a similar logic transformation.

## Sign extension\[[edit](https://en.wikipedia.org/w/index.php?title=Two%27s_complement&action=edit&section=9 "Edit section: Sign extension")\]

<table><caption>Sign-bit repetition in 7- and 8-bit integers using two's complement</caption><tbody><tr><th>Decimal</th><th>7-bit notation</th><th>8-bit notation</th></tr><tr><td>−42 </td><td>1010110</td><td>1101 0110</td></tr><tr><td>42 </td><td>0101010</td><td>0010 1010</td></tr></tbody></table>

When turning a two's-complement number with a certain number of bits into one with more bits (e.g., when copying from a one-byte variable to a two-byte variable), the most-significant bit must be repeated in all the extra bits. Some processors do this in a single instruction; on other processors, a conditional must be used followed by code to set the relevant bits or bytes.

Similarly, when a number is shifted to the right, the most-significant bit, which contains the sign information, must be maintained. However, when shifted to the left, a bit is shifted out. These rules preserve the common semantics that left shifts multiply the number by two and right shifts divide the number by two. However, if the most-significant bit changes from 0 to 1 (and vice versa), overflow is said to occur in the case that the value represents a signed integer.

Both shifting and doubling the precision are important for some multiplication algorithms. Note that unlike addition and subtraction, width extension and right shifting are done differently for signed and unsigned numbers.

## Most negative number\[[edit](https://en.wikipedia.org/w/index.php?title=Two%27s_complement&action=edit&section=10 "Edit section: Most negative number")\]

With only one exception, starting with any number in two's-complement representation, if all the bits are flipped and 1 added, the two's-complement representation of the negative of that number is obtained. Positive 12 becomes negative 12, positive 5 becomes negative 5, zero becomes zero(+overflow), etc.

<table><caption>The two's complement of −128 results in the same 8-bit binary number.</caption><tbody><tr><td>−128</td><td>1000 0000</td></tr><tr><td>invert bits</td><td>0111 1111</td></tr><tr><td>add one</td><td>1000 0000</td></tr></tbody></table>

Taking the two's complement of the minimum number in the range will not have the desired effect of negating the number. For example, the two's complement of −128 in an eight-bit system is −128. Although the expected result from negating −128 is +128, there is no representation of +128 with an eight-bit two's complement system and thus it is in fact impossible to represent the negation. Note that the two's complement being the same number is detected as an overflow condition since there was a carry into but not out of the most-significant bit.

This phenomenon is fundamentally about the mathematics of binary numbers, not the details of the representation as two's complement.<sup>[<i><a href="https://en.wikipedia.org/wiki/Wikipedia:Citation_needed" title="Wikipedia:Citation needed"><span title="This phenomenon seems to be about the details of two's complement, since one's complement binary numbers and sign-magnitude binary numbers can easily negate their most-negative number -- they do not have such a 'weird number' as the minimum number. (August 2021)">citation needed</span></a></i>]</sup> Mathematically, this is complementary to the fact that the negative of 0 is again 0. For a given number of bits k there is an even number of binary numbers 2<sup><span>k</span></sup>, taking negatives is a [group action](https://en.wikipedia.org/wiki/Group_action_(mathematics) "Group action (mathematics)") (of the group of order 2) on binary numbers, and since the [orbit](https://en.wikipedia.org/wiki/Orbit_(group_theory) "Orbit (group theory)") of zero has order 1, at least one other number must have an orbit of order 1 for the orders of the orbits to add up to the order of the set. Thus some other number must be invariant under taking negatives (formally, by the [orbit-stabilizer theorem](https://en.wikipedia.org/wiki/Orbit-stabilizer_theorem "Orbit-stabilizer theorem")). Geometrically, one can view the k\-bit binary numbers as the [cyclic group](https://en.wikipedia.org/wiki/Cyclic_group "Cyclic group") ![{\displaystyle \mathbb {Z} /2^{k}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/29da1a8b0f667d6eccba6eb4bd240e0801f53d29), which can be visualized as a circle (or properly a regular 2<sup><span>k</span></sup>\-gon), and taking negatives is a reflection, which fixes the elements of order dividing 2: 0 and the opposite point, or visually the zenith and nadir.

The presence of the most negative number can lead to unexpected programming bugs where the result has an unexpected sign, or leads to an unexpected overflow exception, or leads to completely strange behaviors. For example,

-   the unary negation operator may not change the sign of a nonzero number. e.g., −(−128) → −128.

-   an implementation of [absolute value](https://en.wikipedia.org/wiki/Absolute_value "Absolute value") may return a negative number.<sup id="cite_ref-5"><a href="https://en.wikipedia.org/wiki/Two%27s_complement#cite_note-5">[4]</a></sup> e.g., abs(−128) → −128.

-   Likewise, multiplication by −1 may fail to function as expected. e.g., (−128) × (−1) → −128.

-   Division by −1 may cause an exception (like that caused by dividing by 0).<sup id="cite_ref-6"><a href="https://en.wikipedia.org/wiki/Two%27s_complement#cite_note-6">[5]</a></sup> Even calculating the remainder (or modulo) by −1 can trigger this exception.<sup id="cite_ref-int32-c_7-0"><a href="https://en.wikipedia.org/wiki/Two%27s_complement#cite_note-int32-c-7">[6]</a></sup> e.g., (−128) ÷ (−1) → crash, (−128) % (−1) → crash.

In the [C](https://en.wikipedia.org/wiki/C_(programming_language) "C (programming language)") and [C++](https://en.wikipedia.org/wiki/C%2B%2B "C++") programming languages, the above behaviours are [undefined](https://en.wikipedia.org/wiki/Undefined_behavior "Undefined behavior") and not only may they return strange results, but the compiler is free to assume that the programmer has ensured that undefined computations never happen, and make inferences from that assumption.<sup id="cite_ref-int32-c_7-1"><a href="https://en.wikipedia.org/wiki/Two%27s_complement#cite_note-int32-c-7">[6]</a></sup> This enables a number of optimizations, but also leads to a number of strange bugs in such undefined programs.

The most negative number in two's complement is sometimes called "the weird number", because it is the only exception.<sup id="cite_ref-8"><a href="https://en.wikipedia.org/wiki/Two%27s_complement#cite_note-8">[7]</a></sup><sup id="cite_ref-9"><a href="https://en.wikipedia.org/wiki/Two%27s_complement#cite_note-9">[8]</a></sup> Although the number is an exception, it is a valid number in regular two's complement systems. All arithmetic operations work with it both as an operand and (unless there was an overflow) a result.

## Why it works\[[edit](https://en.wikipedia.org/w/index.php?title=Two%27s_complement&action=edit&section=11 "Edit section: Why it works")\]

Given a set of all possible N\-bit values, we can assign the lower (by the binary value) half to be the integers from 0 to (2<sup><i>N</i> − 1</sup> − 1) inclusive and the upper half to be −2<sup><i>N</i> − 1</sup> to −1 inclusive. The upper half (again, by the binary value) can be used to represent negative integers from −2<sup><i>N</i> − 1</sup> to −1 because, under addition modulo 2<sup><i>N</i></sup> they behave the same way as those negative integers. That is to say that because _i_ + _j_ mod 2<sup><i>N</i></sup> = _i_ + (_j_ + 2<sup><i>N</i></sup>) mod 2<sup><i>N</i></sup> any value in the set { _j_ + _k_ 2<sup><i>N</i></sup> | _k_ is an integer }  can be used in place of j.<sup id="cite_ref-10"><a href="https://en.wikipedia.org/wiki/Two%27s_complement#cite_note-10">[9]</a></sup>

For example, with eight bits, the unsigned bytes are 0 to 255. Subtracting 256 from the top half (128 to 255) yields the signed bytes −128 to −1.

The relationship to two's complement is realised by noting that 256 = 255 + 1, and (255 − _x_) is the [ones' complement](https://en.wikipedia.org/wiki/Ones%27_complement "Ones' complement") of x.

<table><caption>Some special numbers to note</caption><tbody><tr><th>Decimal</th><th>Binary</th></tr><tr><td>127 </td><td>0111 1111</td></tr><tr><td>64 </td><td>0100 0000</td></tr><tr><td>1  </td><td>0000 0001</td></tr><tr><td>0  </td><td>0000 0000</td></tr><tr><td>−1 </td><td>1111 1111</td></tr><tr><td>−64 </td><td>1100 0000</td></tr><tr><td>−127 </td><td>1000 0001</td></tr><tr><td>−128 </td><td>1000 0000</td></tr></tbody></table>

### Example\[[edit](https://en.wikipedia.org/w/index.php?title=Two%27s_complement&action=edit&section=12 "Edit section: Example")\]

_In this subsection, decimal numbers are suffixed with a decimal point "."_

For example, an 8 bit number can only represent every integer from −128. to 127., inclusive, since (2<sup>8 − 1</sup> = 128.). −95. modulo 256. is equivalent to 161. since

−95. + 256.

\= −95. + 255. + 1

\= 255. − 95. + 1

\= 160. + 1.

\= 161.

```
   1111 1111                       255.
 − 0101 1111                     −  95.
 ===========                     =====
   1010 0000  (ones' complement)   160.
 +         1                     +   1
 ===========                     =====
   1010 0001  (two's complement)   161.

```

<table><caption>Two's complement 4&nbsp;bit integer values</caption><tbody><tr><th>Two's complement</th><th>Decimal</th></tr><tr><td>0111</td><td>7. </td></tr><tr><td>0110</td><td>6. </td></tr><tr><td>0101</td><td>5. </td></tr><tr><td>0100</td><td>4. </td></tr><tr><td>0011</td><td>3. </td></tr><tr><td>0010</td><td>2. </td></tr><tr><td>0001</td><td>1. </td></tr><tr><td>0000</td><td>0. </td></tr><tr><td>1111</td><td>−1. </td></tr><tr><td>1110</td><td>−2. </td></tr><tr><td>1101</td><td>−3. </td></tr><tr><td>1100</td><td>−4. </td></tr><tr><td>1011</td><td>−5. </td></tr><tr><td>1010</td><td>−6. </td></tr><tr><td>1001</td><td>−7. </td></tr><tr><td>1000</td><td>−8. </td></tr></tbody></table>

Fundamentally, the system represents negative integers by counting backward and [wrapping around](https://en.wikipedia.org/wiki/Modular_arithmetic "Modular arithmetic"). The boundary between positive and negative numbers is arbitrary, but by [convention](https://en.wikipedia.org/wiki/Convention_(norm) "Convention (norm)") all negative numbers have a left-most bit ([most significant bit](https://en.wikipedia.org/wiki/Most_significant_bit "Most significant bit")) of one. Therefore, the most positive four-bit number is 0111 (7.) and the most negative is 1000 (−8.). Because of the use of the left-most bit as the sign bit, the absolute value of the most negative number (|−8.| = 8.) is too large to represent. Negating a two's complement number is simple: Invert all the bits and add one to the result. For example, negating 1111, we get 0000 + 1 = 1. Therefore, 1111 in binary must represent −1 in decimal.<sup id="cite_ref-11"><a href="https://en.wikipedia.org/wiki/Two%27s_complement#cite_note-11">[10]</a></sup>

The system is useful in simplifying the implementation of arithmetic on computer hardware. Adding 0011 (3.) to 1111 (−1.) at first seems to give the incorrect answer of 10010. However, the hardware can simply ignore the left-most bit to give the correct answer of 0010 (2.). Overflow checks still must exist to catch operations such as summing 0100 and 0100.

The system therefore allows addition of negative operands without a subtraction circuit or a circuit that detects the sign of a number. Moreover, that addition circuit can also perform subtraction by taking the two's complement of a number (see below), which only requires an additional cycle or its own adder circuit. To perform this, the circuit merely operates as if there were an extra left-most bit of 1.

## Arithmetic operations\[[edit](https://en.wikipedia.org/w/index.php?title=Two%27s_complement&action=edit&section=13 "Edit section: Arithmetic operations")\]

### Addition\[[edit](https://en.wikipedia.org/w/index.php?title=Two%27s_complement&action=edit&section=14 "Edit section: Addition")\]

Adding two's complement numbers requires no special processing even if the operands have opposite signs; the sign of the result is determined automatically. For example, adding 15 and −5:

```
   0000 1111  (15)
 + 1111 1011  (−5)
 ===========
   0000 1010  (10)

```

Or the computation of 5 − 15 = 5 + (−15):

```
   0000 0101  (  5)
 + 1111 0001  (−15)
 ===========
   1111 0110  (−10)

```

This process depends upon restricting to 8 bits of precision; a carry to the (nonexistent) 9th most significant bit is ignored, resulting in the arithmetically correct result of 10<sub>10</sub>.

The last two bits of the [carry](https://en.wikipedia.org/wiki/Carry_flag "Carry flag") row (reading right-to-left) contain vital information: whether the calculation resulted in an [arithmetic overflow](https://en.wikipedia.org/wiki/Arithmetic_overflow "Arithmetic overflow"), a number too large for the binary system to represent (in this case greater than 8 bits). An overflow condition exists when these last two bits are different from one another. As mentioned above, the sign of the number is encoded in the MSB of the result.

In other terms, if the left two carry bits (the ones on the far left of the top row in these examples) are both 1s or both 0s, the result is valid; if the left two carry bits are "1 0" or "0 1", a sign overflow has occurred. Conveniently, an [XOR](https://en.wikipedia.org/wiki/XOR "XOR") operation on these two bits can quickly determine if an overflow condition exists. As an example, consider the signed 4-bit addition of 7 and 3:

```
  0111   (carry)
   0111  (7)
 + 0011  (3)
 ======
   1010  (−6)  invalid!

```

In this case, the far left two (MSB) carry bits are "01", which means there was a two's-complement addition overflow. That is, 1010<sub>2</sub> = 10<sub>10</sub> is outside the permitted range of −8 to 7. The result would be correct if treated as unsigned integer.

In general, any two N\-bit numbers may be added _without_ overflow, by first sign-extending both of them to _N_ + 1 bits, and then adding as above. The _N_ + 1 bits result is large enough to represent any possible sum (_N_ = 5 two's complement can represent values in the range −16 to 15) so overflow will never occur. It is then possible, if desired, to 'truncate' the result back to N bits while preserving the value if and only if the discarded bit is a proper sign extension of the retained result bits. This provides another method of detecting overflow—which is equivalent to the method of comparing the carry bits—but which may be easier to implement in some situations, because it does not require access to the internals of the addition.

### Subtraction\[[edit](https://en.wikipedia.org/w/index.php?title=Two%27s_complement&action=edit&section=15 "Edit section: Subtraction")\]

Computers usually use the [method of complements](https://en.wikipedia.org/wiki/Method_of_complements "Method of complements") to implement subtraction. Using complements for subtraction is closely related to using complements for representing negative numbers, since the combination allows all signs of operands and results; direct subtraction works with two's-complement numbers as well. Like addition, the advantage of using two's complement is the elimination of examining the signs of the operands to determine whether addition or subtraction is needed. For example, subtracting −5 from 15 is really adding 5 to 15, but this is hidden by the two's-complement representation:

```
  11110 000   (borrow)
   0000 1111  (15)
 − 1111 1011  (−5)
 ===========
   0001 0100  (20)

```

Overflow is detected the same way as for addition, by examining the two leftmost (most significant) bits of the borrows; overflow has occurred if they are different.

Another example is a subtraction operation where the result is negative: 15 − 35 = −20:

```
  11100 000   (borrow)
   0000 1111  (15)
 − 0010 0011  (35)
 ===========
   1110 1100  (−20)

```

As for addition, overflow in subtraction may be avoided (or detected after the operation) by first sign-extending both inputs by an extra bit.

### Multiplication\[[edit](https://en.wikipedia.org/w/index.php?title=Two%27s_complement&action=edit&section=16 "Edit section: Multiplication")\]

The product of two N\-bit numbers requires 2_N_ bits to contain all possible values.<sup id="cite_ref-12"><a href="https://en.wikipedia.org/wiki/Two%27s_complement#cite_note-12">[11]</a></sup>

If the precision of the two operands using two's complement is doubled before the multiplication, direct multiplication (discarding any excess bits beyond that precision) will provide the correct result.<sup id="cite_ref-13"><a href="https://en.wikipedia.org/wiki/Two%27s_complement#cite_note-13">[12]</a></sup> For example, take 6 × (−5) = −30. First, the precision is extended from four bits to eight. Then the numbers are multiplied, discarding the bits beyond the eighth bit (as shown by "x"):

```
     00000110  (6)
 *   11111011  (−5)
 ============
          110
         1100
        00000
       110000
      1100000
     11000000
    x10000000
 + xx00000000
 ============
   xx11100010

```

This is very inefficient; by doubling the precision ahead of time, all additions must be double-precision and at least twice as many partial products are needed than for the more efficient algorithms actually implemented in computers. Some multiplication algorithms are designed for two's complement, notably [Booth's multiplication algorithm](https://en.wikipedia.org/wiki/Booth%27s_multiplication_algorithm "Booth's multiplication algorithm"). Methods for multiplying sign-magnitude numbers don't work with two's-complement numbers without adaptation. There isn't usually a problem when the multiplicand (the one being repeatedly added to form the product) is negative; the issue is setting the initial bits of the product correctly when the multiplier is negative. Two methods for adapting algorithms to handle two's-complement numbers are common:

-   First check to see if the multiplier is negative. If so, negate (_i.e._, take the two's complement of) both operands before multiplying. The multiplier will then be positive so the algorithm will work. Because both operands are negated, the result will still have the correct sign.
-   Subtract the partial product resulting from the MSB (pseudo sign bit) instead of adding it like the other partial products. This method requires the multiplicand's sign bit to be extended by one position, being preserved during the shift right actions.<sup id="cite_ref-14"><a href="https://en.wikipedia.org/wiki/Two%27s_complement#cite_note-14">[13]</a></sup>

As an example of the second method, take the common add-and-shift algorithm for multiplication. Instead of shifting partial products to the left as is done with pencil and paper, the accumulated product is shifted right, into a second register that will eventually hold the least significant half of the product. Since the [least significant bits](https://en.wikipedia.org/wiki/Least_significant_bit "Least significant bit") are not changed once they are calculated, the additions can be single precision, accumulating in the register that will eventually hold the most significant half of the product. In the following example, again multiplying 6 by −5, the two registers and the extended sign bit are separated by "|":

```
  0 0110  (6)  (multiplicand with extended sign bit)
  × 1011 (−5)  (multiplier)
  =|====|====
  0|0110|0000  (first partial product (rightmost bit is 1))
  0|0011|0000  (shift right, preserving extended sign bit)
  0|1001|0000  (add second partial product (next bit is 1))
  0|0100|1000  (shift right, preserving extended sign bit)
  0|0100|1000  (add third partial product: 0 so no change)
  0|0010|0100  (shift right, preserving extended sign bit)
  1|1100|0100  (subtract last partial product since it's from sign bit)
  1|1110|0010  (shift right, preserving extended sign bit)
   |1110|0010  (discard extended sign bit, giving the final answer, −30)

```

### Comparison (ordering)\[[edit](https://en.wikipedia.org/w/index.php?title=Two%27s_complement&action=edit&section=17 "Edit section: Comparison (ordering)")\]

[Comparison](https://en.wikipedia.org/wiki/Comparison_(computer_programming) "Comparison (computer programming)") is often implemented with a dummy subtraction, where the flags in the computer's [status register](https://en.wikipedia.org/wiki/Status_register "Status register") are checked, but the main result is ignored. The [zero flag](https://en.wikipedia.org/wiki/Zero_flag "Zero flag") indicates if two values compared equal. If the exclusive-or of the [sign](https://en.wikipedia.org/wiki/Sign_flag "Sign flag") and [overflow](https://en.wikipedia.org/wiki/Overflow_flag "Overflow flag") flags is 1, the subtraction result was less than zero, otherwise the result was zero or greater. These checks are often implemented in computers in [conditional branch](https://en.wikipedia.org/wiki/Conditional_branch "Conditional branch") instructions.

Unsigned binary numbers can be ordered by a simple [lexicographic ordering](https://en.wikipedia.org/wiki/Lexicographic_ordering "Lexicographic ordering"), where the bit value 0 is defined as less than the bit value 1. For two's complement values, the meaning of the most significant bit is reversed (i.e. 1 is less than 0).

The following algorithm (for an n\-bit two's complement architecture) sets the result register R to −1 if A < B, to +1 if A > B, and to 0 if A and B are equal:

```
// reversed comparison of the sign bit

if A(n-1) == 0 and B(n-1) == 1 then
    return +1
else if A(n-1) == 1 and B(n-1) == 0 then
    return -1
end
 
// comparison of remaining bits

for i = n-2...0 do
    if A(i) == 0 and B(i) == 1 then
        return -1
    else if A(i) == 1 and B(i) == 0 then
        return +1 
    end
end
 
return 0

```

## Two's complement and 2-adic numbers\[[edit](https://en.wikipedia.org/w/index.php?title=Two%27s_complement&action=edit&section=18 "Edit section: Two's complement and 2-adic numbers")\]

In a classic _[HAKMEM](https://en.wikipedia.org/wiki/HAKMEM "HAKMEM")_ published by the [MIT AI Lab](https://en.wikipedia.org/wiki/MIT_AI_Lab "MIT AI Lab") in 1972, [Bill Gosper](https://en.wikipedia.org/wiki/Bill_Gosper "Bill Gosper") noted that whether or not a machine's internal representation was two's-complement could be determined by summing the successive powers of two. In a flight of fancy, he noted that the result of doing this algebraically indicated that "algebra is run on a machine (the universe) which is two's-complement."<sup id="cite_ref-15"><a href="https://en.wikipedia.org/wiki/Two%27s_complement#cite_note-15">[14]</a></sup>

Gosper's end conclusion is not necessarily meant to be taken seriously, and it is akin to a [mathematical joke](https://en.wikipedia.org/wiki/Mathematical_joke "Mathematical joke"). The critical step is "...110 = ...111 − 1", i.e., "2_X_ = _X_ − 1", and thus _X_ = ...111 = −1. This presupposes a method by which an infinite string of 1s is considered a number, which requires an extension of the finite place-value concepts in elementary arithmetic. It is meaningful either as part of a two's-complement notation for all integers, as a typical [2-adic number](https://en.wikipedia.org/wiki/P-adic_number "P-adic number"), or even as one of the generalized sums defined for the [divergent series](https://en.wikipedia.org/wiki/Divergent_series "Divergent series") of real numbers [1 + 2 + 4 + 8 + ···](https://en.wikipedia.org/wiki/1_%2B_2_%2B_4_%2B_8_%2B_%E2%80%A6 "1 + 2 + 4 + 8 + …").<sup id="cite_ref-16"><a href="https://en.wikipedia.org/wiki/Two%27s_complement#cite_note-16">[15]</a></sup> Digital arithmetic circuits, idealized to operate with infinite (extending to positive powers of 2) bit strings, produce 2-adic addition and multiplication compatible with two's complement representation.<sup id="cite_ref-17"><a href="https://en.wikipedia.org/wiki/Two%27s_complement#cite_note-17">[16]</a></sup> [Continuity](https://en.wikipedia.org/wiki/Continuous_function "Continuous function") of binary arithmetical and [bitwise operations](https://en.wikipedia.org/wiki/Bitwise_operation "Bitwise operation") in 2-adic [metric](https://en.wikipedia.org/wiki/Metric_space "Metric space") also has some use in cryptography.<sup id="cite_ref-18"><a href="https://en.wikipedia.org/wiki/Two%27s_complement#cite_note-18">[17]</a></sup>

## Fraction conversion\[[edit](https://en.wikipedia.org/w/index.php?title=Two%27s_complement&action=edit&section=19 "Edit section: Fraction conversion")\]

To convert a number with a fractional part, such as .0101, one must convert starting from right to left the 1s to decimal as in a normal conversion. In this example 0101 is equal to 5 in decimal. Each digit after the floating point represents a fraction where the denominator is a multiplier of 2. So, the first is 1/2, the second is 1/4 and so on. Having already calculated the decimal value as mentioned above, only the denominator of the LSB (LSB = starting from right) is used. The final result of this conversion is 5/16.

For instance, having the floating value of .0110 for this method to work, one should not consider the last 0 from the right. Hence, instead of calculating the decimal value for 0110, we calculate the value 011, which is 3 in decimal (by leaving the 0 in the end, the result would have been 6, together with the denominator 2<sup>4</sup> = 16, which reduces to 3/8). The denominator is 8, giving a final result of 3/8.

## See also\[[edit](https://en.wikipedia.org/w/index.php?title=Two%27s_complement&action=edit&section=20 "Edit section: See also")\]

-   [Division algorithm](https://en.wikipedia.org/wiki/Division_algorithm "Division algorithm"), including restoring and non-restoring division in two's-complement representations
-   [Offset binary](https://en.wikipedia.org/wiki/Offset_binary "Offset binary")
-   [_p_\-adic number](https://en.wikipedia.org/wiki/P-adic_number "P-adic number")
-   [Method of complements](https://en.wikipedia.org/wiki/Method_of_complements "Method of complements"), generalisation to other number bases, used on mechanical calculators

## Notes\[[edit](https://en.wikipedia.org/w/index.php?title=Two%27s_complement&action=edit&section=21 "Edit section: Notes")\]

1.  **[^](https://en.wikipedia.org/wiki/Two%27s_complement#cite_ref-4 "Jump up")** For _x_ = 0 we have 2<sup><i>N</i></sup> − 0 = 2<sup><i>N</i></sup>, which is equivalent to 0\* = 0 modulo 2<sup><i>N</i></sup> (i.e. after restricting to N least significant bits).

## References\[[edit](https://en.wikipedia.org/w/index.php?title=Two%27s_complement&action=edit&section=22 "Edit section: References")\]

1.  **[^](https://en.wikipedia.org/wiki/Two%27s_complement#cite_ref-1 "Jump up")** E.g. "Signed integers are two's complement binary values that can be used to represent both positive and negative integer values.", Section 4.2.1 in Intel 64 and IA-32 Architectures Software Developer's Manual, Volume 1: Basic Architecture, November 2006
2.  **[^](https://en.wikipedia.org/wiki/Two%27s_complement#cite_ref-2 "Jump up")** David J. Lilja; Sachin S. Sapatnekar (2005). [_Designing Digital Computer Systems with Verilog_](https://books.google.com/books?id=5BvW0hYhxkQC&dq=%22two%27s+complement+arithmetic%22&pg=PA37). Cambridge University Press.
3.  **[^](https://en.wikipedia.org/wiki/Two%27s_complement#cite_ref-von_Neumann_1945_3-0 "Jump up")** [von Neumann, John](https://en.wikipedia.org/wiki/John_von_Neumann "John von Neumann") (1945), [_First Draft of a Report on the EDVAC_](http://web.mit.edu/STS.035/www/PDFs/edvac.pdf) (PDF), retrieved February 20, 2021
4.  **[^](https://en.wikipedia.org/wiki/Two%27s_complement#cite_ref-5 "Jump up")** ["Math"](http://docs.oracle.com/javase/7/docs/api/java/lang/Math.html). Java Platform SE 7 API specification.
5.  **[^](https://en.wikipedia.org/wiki/Two%27s_complement#cite_ref-6 "Jump up")** Regehr, John (2013). ["Nobody Expects the Spanish Inquisition, or INT\_MIN to be Divided by -1"](https://blog.regehr.org/archives/887). _Regehr.org_ (blog).
6.  ^ [Jump up to: <sup><i><b>a</b></i></sup>](https://en.wikipedia.org/wiki/Two%27s_complement#cite_ref-int32-c_7-0) [<sup><i><b>b</b></i></sup>](https://en.wikipedia.org/wiki/Two%27s_complement#cite_ref-int32-c_7-1) Seacord, Robert C. (2020). ["Rule INT32-C. Ensure that operations on signed integers do not result in overflow"](https://wiki.sei.cmu.edu/confluence/display/c/INT32-C.+Ensure+that+operations+on+signed+integers+do+not+result+in+overflow). _wiki.sei.cmu.edu_. SEI CERT C Coding Standard.
7.  **[^](https://en.wikipedia.org/wiki/Two%27s_complement#cite_ref-8 "Jump up")** Affeldt, Reynald & Marti, Nicolas. ["Formal Verification of Arithmetic Functions in SmartMIPS Assembly"](https://web.archive.org/web/20110722080531/http://www.ipl.t.u-tokyo.ac.jp/jssst2006/papers/Affeldt.pdf) (PDF). Archived from [the original](http://www.ipl.t.u-tokyo.ac.jp/jssst2006/papers/Affeldt.pdf) (PDF) on 2011-07-22.
8.  **[^](https://en.wikipedia.org/wiki/Two%27s_complement#cite_ref-9 "Jump up")** Harris, David Money; Harris, Sarah L. (2007). [_Digital Design and Computer Architecture_](https://books.google.com/books?id=5X7JV5-n0FIC&q=%22weird+number%22+binary&pg=PA19). p. 18 – via Google Books.
9.  **[^](https://en.wikipedia.org/wiki/Two%27s_complement#cite_ref-10 "Jump up")** ["3.9. Two's Complement"](https://web.archive.org/web/20131031093811/http://www.cs.uwm.edu/~cs151/Bacon/Lecture/HTML/ch03s09.html). _Chapter 3. Data Representation_. cs.uwm.edu. 2012-12-03. Archived from [the original](http://www.cs.uwm.edu/~cs151/Bacon/Lecture/HTML/ch03s09.html) on 31 October 2013. Retrieved 2014-06-22.
10.  **[^](https://en.wikipedia.org/wiki/Two%27s_complement#cite_ref-11 "Jump up")** Finley, Thomas (April 2000). ["Two's Complement"](http://www.cs.cornell.edu/~tomf/notes/cps104/twoscomp.html). Computer Science. Class notes for CS 104. Ithaca, NY: Cornell University. Retrieved 2014-06-22.
11.  **[^](https://en.wikipedia.org/wiki/Two%27s_complement#cite_ref-12 "Jump up")** Bruno Paillard. _An Introduction To Digital Signal Processors_, Sec. 6.4.2. Génie électrique et informatique Report, Université de Sherbrooke, April 2004.
12.  **[^](https://en.wikipedia.org/wiki/Two%27s_complement#cite_ref-13 "Jump up")** Karen Miller (August 24, 2007). ["Two's Complement Multiplication"](https://web.archive.org/web/20150213203512/http://pages.cs.wisc.edu/~cs354-1/beyond354/int.mult.html). _cs.wisc.edu_. Archived from [the original](http://pages.cs.wisc.edu/~cs354-1/beyond354/int.mult.html) on February 13, 2015. Retrieved April 13, 2015.
13.  **[^](https://en.wikipedia.org/wiki/Two%27s_complement#cite_ref-14 "Jump up")** Wakerly, John F. (2000). _Digital Design Principles & Practices_ (3rd ed.). Prentice Hall. p. 47. [ISBN](https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)") [0-13-769191-2](https://en.wikipedia.org/wiki/Special:BookSources/0-13-769191-2 "Special:BookSources/0-13-769191-2").
14.  **[^](https://en.wikipedia.org/wiki/Two%27s_complement#cite_ref-15 "Jump up")** ["Programming Hacks"](http://www.inwap.com/pdp10/hbaker/hakmem/hacks.html#item154). _HAKMEM_. ITEM 154 (Gosper).
15.  **[^](https://en.wikipedia.org/wiki/Two%27s_complement#cite_ref-16 "Jump up")** For the summation of 1 + 2 + 4 + 8 + ··· without recourse to the 2-adic metric, see [Hardy, G.H.](https://en.wikipedia.org/wiki/G._H._Hardy "G. H. Hardy") (1949). _Divergent Series_. Clarendon Press. [LCC](https://en.wikipedia.org/wiki/LCC_(identifier) "LCC (identifier)") [QA295 .H29 1967](https://catalog.loc.gov/vwebv/search?searchCode=CALL%2B&searchArg=QA295+.H29+1967&searchType=1&recCount=25). (pp. 7–10)
16.  **[^](https://en.wikipedia.org/wiki/Two%27s_complement#cite_ref-17 "Jump up")** Vuillemin, Jean (1993). [_On circuits and numbers_](https://hplabs.itcs.hp.com/techreports/Compaq-DEC/PRL-RR-25.pdf) (PDF). Paris: [Digital Equipment Corp.](https://en.wikipedia.org/wiki/Digital_Equipment_Corp. "Digital Equipment Corp.") p. 19. Retrieved 2023-03-29., Chapter 7, especially 7.3 for multiplication.
17.  **[^](https://en.wikipedia.org/wiki/Two%27s_complement#cite_ref-18 "Jump up")** Anashin, Vladimir; Bogdanov, Andrey; Kizhvatov, Ilya (2007). ["ABC Stream Cipher"](http://crypto.rsuh.ru/). [Russian State University for the Humanities](https://en.wikipedia.org/wiki/Russian_State_University_for_the_Humanities "Russian State University for the Humanities"). Retrieved 24 January 2012.

## Further reading\[[edit](https://en.wikipedia.org/w/index.php?title=Two%27s_complement&action=edit&section=23 "Edit section: Further reading")\]

-   [Two's Complement Explanation, (Thomas Finley, 2000)](https://www.cs.cornell.edu/~tomf/notes/cps104/twoscomp.html)

-   Koren, Israel (2002). _Computer Arithmetic Algorithms_. A.K. Peters. [ISBN](https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)") [1-56881-160-8](https://en.wikipedia.org/wiki/Special:BookSources/1-56881-160-8 "Special:BookSources/1-56881-160-8").
-   Flores, Ivan (1963). _The Logic of Computer Arithmetic_. Prentice-Hall.

## External links\[[edit](https://en.wikipedia.org/w/index.php?title=Two%27s_complement&action=edit&section=24 "Edit section: External links")\]

-   [Two's complement array multiplier JavaScript simulator](http://www.ecs.umass.edu/ece/koren/arith/simulator/ArrMlt/)
