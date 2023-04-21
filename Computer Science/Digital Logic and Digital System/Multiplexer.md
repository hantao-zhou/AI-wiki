

---
created: 2023-04-21T16:35:19 (UTC +08:00)
tags: []
source: https://en.wikipedia.org/wiki/Multiplexer
author: Contributors to Wikimedia projects
---

# Multiplexer - Wikipedia

> ## Excerpt
> From Wikipedia, the free encyclopedia

---
From Wikipedia, the free encyclopedia

This article is about electronics switching. For telecommunications, see [multiplexing](https://en.wikipedia.org/wiki/Multiplexing "Multiplexing").

[![](https://upload.wikimedia.org/wikipedia/commons/thumb/1/16/Multiplexer2.svg/300px-Multiplexer2.svg.png)](https://en.wikipedia.org/wiki/File:Multiplexer2.svg)

Schematic of a 2-to-1 multiplexer. It can be equated to a controlled switch.

[![](https://upload.wikimedia.org/wikipedia/commons/thumb/4/48/Demultiplexer.png/270px-Demultiplexer.png)](https://en.wikipedia.org/wiki/File:Demultiplexer.png)

Schematic of a 1-to-2 demultiplexer. Like a multiplexer, it can be equated to a controlled switch.

In [electronics](https://en.wikipedia.org/wiki/Electronics "Electronics"), a **multiplexer** (or **mux**; spelled sometimes as **multiplexor**), also known as a **data selector**, is a device that selects between several [analog](https://en.wikipedia.org/wiki/Analog_signal "Analog signal") or [digital](https://en.wikipedia.org/wiki/Digital_signal_(electronics) "Digital signal (electronics)") input signals and forwards the selected input to a single output line.<sup id="cite_ref-Network+_Guide_to_Networks_1-0"><a href="https://en.wikipedia.org/wiki/Multiplexer#cite_note-Network+_Guide_to_Networks-1">[1]</a></sup> The selection is directed by a separate set of digital inputs known as select lines. A multiplexer of ![2^{n}](https://wikimedia.org/api/rest_v1/media/math/render/svg/8226f30650ee4fe4e640c6d2798127e80e9c160d) inputs has ![n](https://wikimedia.org/api/rest_v1/media/math/render/svg/a601995d55609f2d9f5e233e36fbe9ea26011b3b) select lines, which are used to select which input line to send to the output.<sup id="cite_ref-2"><a href="https://en.wikipedia.org/wiki/Multiplexer#cite_note-2">[2]</a></sup>

A multiplexer makes it possible for several input signals to share one device or resource, for example, one [analog-to-digital converter](https://en.wikipedia.org/wiki/Analog-to-digital_converter "Analog-to-digital converter")<sup id="cite_ref-3"><a href="https://en.wikipedia.org/wiki/Multiplexer#cite_note-3">[3]</a></sup> or one communications [transmission medium](https://en.wikipedia.org/wiki/Transmission_medium "Transmission medium"), instead of having one device per input signal. Multiplexers can also be used to implement [Boolean functions](https://en.wikipedia.org/wiki/Boolean_algebra "Boolean algebra") of multiple variables.

Conversely, a **demultiplexer** (or **demux**) is a device taking a single input and selecting signals of the output of the compatible **mux**, which is connected to the single input, and a shared selection line. A multiplexer is often used with a complementary demultiplexer on the receiving end.<sup id="cite_ref-Network+_Guide_to_Networks_1-1"><a href="https://en.wikipedia.org/wiki/Multiplexer#cite_note-Network+_Guide_to_Networks-1">[1]</a></sup>

An electronic multiplexer can be considered as a [multiple-input, single-output](https://en.wikipedia.org/wiki/System_analysis#Characterization_of_systems "System analysis") switch, and a demultiplexer as a [single-input, multiple-output](https://en.wikipedia.org/wiki/System_analysis#Characterization_of_systems "System analysis") switch.<sup id="cite_ref-4"><a href="https://en.wikipedia.org/wiki/Multiplexer#cite_note-4">[4]</a></sup> The schematic symbol for a multiplexer is an [isosceles trapezoid](https://en.wikipedia.org/wiki/Isosceles_trapezoid "Isosceles trapezoid") with the longer parallel side containing the input pins and the short parallel side containing the output pin.<sup id="cite_ref-5"><a href="https://en.wikipedia.org/wiki/Multiplexer#cite_note-5">[5]</a></sup> The schematic on the right shows a 2-to-1 multiplexer on the left and an equivalent switch on the right. The ![sel](https://wikimedia.org/api/rest_v1/media/math/render/svg/53b59f85a4d1b9bea89918f54d3fcd7170980911) wire connects the desired input to the output.

## Applications\[[edit](https://en.wikipedia.org/w/index.php?title=Multiplexer&action=edit&section=1 "Edit section: Applications")\]

Multiplexers are part of computer systems to select data from a specific source, be it a memory chip or a hardware peripheral. A computer uses multiplexers to control the data and address buses, allowing the processor to select data from multiple data sources

[![](https://upload.wikimedia.org/wikipedia/commons/thumb/e/e0/Telephony_multiplexer_system.gif/300px-Telephony_multiplexer_system.gif)](https://en.wikipedia.org/wiki/File:Telephony_multiplexer_system.gif)

The basic function of a multiplexer: combining multiple inputs into a single data stream. On the receiving side, a demultiplexer splits the single data stream into the original multiple signals.

In digital communications, multiplexers allow several connections over a single channel, by connecting the multiplexer's single output to the demultiplexer's single input ([Time-Division Multiplexing](https://en.wikipedia.org/wiki/Time-division_multiplexing "Time-division multiplexing")). The image to the right demonstrates this benefit. In this case, the cost of implementing separate channels for each data source is higher than the cost and inconvenience of providing the multiplexing/demultiplexing functions.

At the receiving end of the [data link](https://en.wikipedia.org/wiki/Data_link "Data link") a complementary _demultiplexer_ is usually required to break the single data stream back down into the original streams. In some cases, the far end system may have functionality greater than a simple demultiplexer; and while the demultiplexing still occurs technically, it may never be implemented discretely. This would be the case when, for instance, a multiplexer serves a number of [IP](https://en.wikipedia.org/wiki/Internet_Protocol "Internet Protocol") network users; and then feeds directly into a [router](https://en.wikipedia.org/wiki/Router_(computing) "Router (computing)"), which immediately reads the content of the entire link into its [routing](https://en.wikipedia.org/wiki/Routing "Routing") processor; and then does the demultiplexing in memory from where it will be converted directly into IP sections.

Often, a multiplexer and demultiplexer are combined into a single piece of equipment, which is simply referred to as a _multiplexer_. Both circuit elements are needed at both ends of a transmission link because most communications systems transmit in [both directions](https://en.wikipedia.org/wiki/Duplex_(telecommunications) "Duplex (telecommunications)").

In [analog circuit](https://en.wikipedia.org/wiki/Analog_circuit "Analog circuit") design, a multiplexer is a special type of analog switch that connects one signal selected from several inputs to a single output.

## Digital multiplexers\[[edit](https://en.wikipedia.org/w/index.php?title=Multiplexer&action=edit&section=2 "Edit section: Digital multiplexers")\]

In [digital circuit](https://en.wikipedia.org/wiki/Digital_circuit "Digital circuit") design, the selector wires are of digital value. In the case of a 2-to-1 multiplexer, a logic value of 0 would connect ![{\displaystyle I_{0}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/893d08e90ea73781dc133414d661529d0651ca80) to the output while a logic value of 1 would connect ![{\displaystyle I_{1}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/03f18d041b2df30adef07164dbf285878893dedc) to the output. In larger multiplexers, the number of selector pins is equal to ![{\displaystyle \left\lceil \log _{2}(n)\right\rceil }](https://wikimedia.org/api/rest_v1/media/math/render/svg/12082efb8a0367653757c4ce8f6675ebd9bf297e) where ![n](https://wikimedia.org/api/rest_v1/media/math/render/svg/a601995d55609f2d9f5e233e36fbe9ea26011b3b) is the number of inputs.

For example, 9 to 16 inputs would require no fewer than 4 selector pins and 17 to 32 inputs would require no fewer than 5 selector pins. The binary value expressed on these selector pins determines the selected input pin.

A 2-to-1 multiplexer has a [boolean equation](https://en.wikipedia.org/wiki/Boolean_equation "Boolean equation") where ![A](https://wikimedia.org/api/rest_v1/media/math/render/svg/7daff47fa58cdfd29dc333def748ff5fa4c923e3) and ![B](https://wikimedia.org/api/rest_v1/media/math/render/svg/47136aad860d145f75f3eed3022df827cee94d7a) are the two inputs, ![{\displaystyle S_{0}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/ebe0ac45a38c4437bd2689a14ec434cd499e7e49) is the selector input, and ![ Z](https://wikimedia.org/api/rest_v1/media/math/render/svg/1cc6b75e09a8aa3f04d8584b11db534f88fb56bd) is the output:

![{\displaystyle Z=(A\wedge \neg S_{0})\vee (B\wedge S_{0})}](https://wikimedia.org/api/rest_v1/media/math/render/svg/0c325e85e0a3e66adc732761b5b277c56f6c116d)

[![](https://upload.wikimedia.org/wikipedia/commons/thumb/3/39/Multiplexer_2-to-1.svg/175px-Multiplexer_2-to-1.svg.png)](https://en.wikipedia.org/wiki/File:Multiplexer_2-to-1.svg)

Which can be expressed as a [truth table](https://en.wikipedia.org/wiki/Truth_table "Truth table"):

| ![{\displaystyle S_{0}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/ebe0ac45a38c4437bd2689a14ec434cd499e7e49) | ![A](https://wikimedia.org/api/rest_v1/media/math/render/svg/7daff47fa58cdfd29dc333def748ff5fa4c923e3) | ![B](https://wikimedia.org/api/rest_v1/media/math/render/svg/47136aad860d145f75f3eed3022df827cee94d7a) | ![ Z](https://wikimedia.org/api/rest_v1/media/math/render/svg/1cc6b75e09a8aa3f04d8584b11db534f88fb56bd) |
| --- | --- | --- | --- |
| 0 | 0 | 0 | 0 |
| 0 | 0 | 1 | 0 |
| 0 | 1 | 0 | 1 |
| 0 | 1 | 1 | 1 |
| 1 | 0 | 0 | 0 |
| 1 | 0 | 1 | 1 |
| 1 | 1 | 0 | 0 |
| 1 | 1 | 1 | 1 |

Or, in simpler notation:

| ![{\displaystyle S_{0}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/ebe0ac45a38c4437bd2689a14ec434cd499e7e49) | ![ Z](https://wikimedia.org/api/rest_v1/media/math/render/svg/1cc6b75e09a8aa3f04d8584b11db534f88fb56bd) |
| --- | --- |
| 0 | A |
| 1 | B |

These tables show that when ![{\displaystyle S_{0}=0}](https://wikimedia.org/api/rest_v1/media/math/render/svg/a60c168417a797edeccbb2990524bf29c0bd0acc) then ![{\displaystyle Z=A}](https://wikimedia.org/api/rest_v1/media/math/render/svg/c10dfebcc373528d31a7b76ac13f681db00ec575) but when ![{\displaystyle S_{0}=1}](https://wikimedia.org/api/rest_v1/media/math/render/svg/261e25d4953392baa666e1c5f3dec3db1bbd94f4) then ![{\displaystyle Z=B}](https://wikimedia.org/api/rest_v1/media/math/render/svg/e3a221ab2bd8ddf4c8e4bae02f6d76fd552693da). A straightforward realization of this 2-to-1 multiplexer would need 2 AND gates, an OR gate, and a NOT gate. While this is mathematically correct, a direct physical implementation would be prone to [race conditions](https://en.wikipedia.org/wiki/Race_condition "Race condition") that require additional gates to suppress.<sup id="cite_ref-6"><a href="https://en.wikipedia.org/wiki/Multiplexer#cite_note-6">[6]</a></sup>

Larger multiplexers are also common and, as stated above, require ![{\displaystyle \left\lceil \log _{2}(n)\right\rceil }](https://wikimedia.org/api/rest_v1/media/math/render/svg/12082efb8a0367653757c4ce8f6675ebd9bf297e) selector pins for ![n](https://wikimedia.org/api/rest_v1/media/math/render/svg/a601995d55609f2d9f5e233e36fbe9ea26011b3b) inputs. Other common sizes are 4-to-1, 8-to-1, and 16-to-1. Since digital logic uses binary values, powers of 2 are used (4, 8, 16) to maximally control a number of inputs for the given number of selector inputs.

-   [![4-to-1 mux](https://upload.wikimedia.org/wikipedia/commons/thumb/7/75/Multiplexer_4-to-1.svg/120px-Multiplexer_4-to-1.svg.png)](https://en.wikipedia.org/wiki/File:Multiplexer_4-to-1.svg "4-to-1 mux")
    
    4-to-1 mux
    
-   [![8-to-1 mux](https://upload.wikimedia.org/wikipedia/commons/thumb/e/e4/Multiplexer_8-to-1.svg/120px-Multiplexer_8-to-1.svg.png)](https://en.wikipedia.org/wiki/File:Multiplexer_8-to-1.svg "8-to-1 mux")
    
    8-to-1 mux
    
-   [![16-to-1 mux](https://upload.wikimedia.org/wikipedia/commons/thumb/1/1c/Multiplexer_16-to-1.svg/120px-Multiplexer_16-to-1.svg.png)](https://en.wikipedia.org/wiki/File:Multiplexer_16-to-1.svg "16-to-1 mux")
    
    16-to-1 mux
    

The boolean equation for a 4-to-1 multiplexer is:

![{\displaystyle Z=(A\wedge \neg {S_{0}}\wedge \neg S_{1})\vee (B\wedge S_{0}\wedge \neg S_{1})\vee (C\wedge \neg S_{0}\wedge S_{1})\vee (D\wedge S_{0}\wedge S_{1})}](https://wikimedia.org/api/rest_v1/media/math/render/svg/62a582066715146c263bf03c5c89cb2f5ba3bdd5)

The following 4-to-1 multiplexer is constructed from [3-state buffers](https://en.wikipedia.org/wiki/3-state_buffers "3-state buffers") and AND gates (the AND gates are acting as the decoder):

[![4:1 MUX circuit using 3 input AND and other gates](https://upload.wikimedia.org/wikipedia/commons/thumb/9/95/4to1_MUX_using_basic_gates.jpg/396px-4to1_MUX_using_basic_gates.jpg)](https://en.wikipedia.org/wiki/File:4to1_MUX_using_basic_gates.jpg)

A 4:1 MUX circuit using 3 input AND and other gates

[![Mux from 3 state buffers.png](https://upload.wikimedia.org/wikipedia/commons/thumb/3/37/Mux_from_3_state_buffers.png/200px-Mux_from_3_state_buffers.png)](https://en.wikipedia.org/wiki/File:Mux_from_3_state_buffers.png)

The subscripts on the ![I_{n}](https://wikimedia.org/api/rest_v1/media/math/render/svg/aba34f081d776e30204f3458e4f50b403b09e5c6) inputs indicate the decimal value of the binary control inputs at which that input is let through.

### Chaining multiplexers\[[edit](https://en.wikipedia.org/w/index.php?title=Multiplexer&action=edit&section=3 "Edit section: Chaining multiplexers")\]

Larger Multiplexers can be constructed by using smaller multiplexers by chaining them together. For example, an 8-to-1 multiplexer can be made with two 4-to-1 and one 2-to-1 multiplexers. The two 4-to-1 multiplexer outputs are fed into the 2-to-1 with the selector pins on the 4-to-1's put in parallel giving a total number of selector inputs to 3, which is equivalent to an 8-to-1.

### List of ICs which provide multiplexing\[[edit](https://en.wikipedia.org/w/index.php?title=Multiplexer&action=edit&section=4 "Edit section: List of ICs which provide multiplexing")\]

[![](https://upload.wikimedia.org/wikipedia/commons/thumb/d/d5/54S157_Signetics_8014_package_top.jpg/220px-54S157_Signetics_8014_package_top.jpg)](https://en.wikipedia.org/wiki/File:54S157_Signetics_8014_package_top.jpg)

For [7400 series](https://en.wikipedia.org/wiki/7400_series "7400 series") part numbers in the following table, "x" is the logic family.

| IC No. | Function | Output State |
| --- | --- | --- |
| 74x157 | Quad 2:1 mux. | Output same as input given |
| 74x158 | Quad 2:1 mux. | Output is inverted input |
| 74x153 | Dual 4:1 mux. | Output same as input |
| 74x352 | Dual 4:1 mux. | Output is inverted input |
| 74x151A | 8:1 mux. | Both outputs available (i.e., complementary outputs) |
| 74x151 | 8:1 mux. | Output is inverted input |
| 74x150 | 16:1 mux. | Output is inverted input |

## Digital demultiplexers\[[edit](https://en.wikipedia.org/w/index.php?title=Multiplexer&action=edit&section=5 "Edit section: Digital demultiplexers")\]

Demultiplexers take one data input and a number of selection inputs, and they have several outputs. They forward the data input to one of the outputs depending on the values of the selection inputs. Demultiplexers are sometimes convenient for designing general-purpose logic because if the demultiplexer's input is always true, the demultiplexer acts as a [binary decoder](https://en.wikipedia.org/wiki/Binary_decoder "Binary decoder"). This means that any function of the selection bits can be constructed by logically OR-ing the correct set of outputs.

If X is the input and S is the selector, and A and B are the outputs:

![{\displaystyle A=(X\wedge \neg S)}](https://wikimedia.org/api/rest_v1/media/math/render/svg/c34482dbe933e0626b339939df8c22fee82f91e3)

![{\displaystyle B=(X\wedge S)}](https://wikimedia.org/api/rest_v1/media/math/render/svg/49498cee051c0cdfa00e6e44d479cc0ce522583a)

[![](https://upload.wikimedia.org/wikipedia/commons/thumb/1/15/Demultiplexer_Example01.svg/450px-Demultiplexer_Example01.svg.png)](https://en.wikipedia.org/wiki/File:Demultiplexer_Example01.svg)

Example: A Single Bit 1-to-4 Line Demultiplexer

### List of ICs which provide demultiplexing\[[edit](https://en.wikipedia.org/w/index.php?title=Multiplexer&action=edit&section=6 "Edit section: List of ICs which provide demultiplexing")\]

[![](https://upload.wikimedia.org/wikipedia/commons/thumb/3/3a/ROCKY-518HV_-_Fairchild_74F138-2387.jpg/220px-ROCKY-518HV_-_Fairchild_74F138-2387.jpg)](https://en.wikipedia.org/wiki/File:ROCKY-518HV_-_Fairchild_74F138-2387.jpg)

For [7400 series](https://en.wikipedia.org/wiki/7400_series "7400 series") part numbers in the following table, "x" is the logic family.

| IC No. (7400) | IC No. (4000) | Function | Output State |
| --- | --- | --- | --- |
| 74x139 |  | Dual 1:4 demux. | Output is inverted input |
| 74x156 |  | Dual 1:4 demux. | Output is [open collector](https://en.wikipedia.org/wiki/Open_collector "Open collector") |
| 74x138 |  | 1:8 demux. | Output is inverted input |
| 74x238 |  | 1:8 demux. |  |
| 74x154 |  | 1:16 demux. | Output is inverted input |
| 74x159 | CD4514/15 | 1:16 demux. | Output is open collector and same as input |

## Multiplexers as PLDs\[[edit](https://en.wikipedia.org/w/index.php?title=Multiplexer&action=edit&section=7 "Edit section: Multiplexers as PLDs")\]

Multiplexers can also be used as [programmable logic devices](https://en.wikipedia.org/wiki/Programmable_logic_device "Programmable logic device"), to implement Boolean functions. Any Boolean function of _n_ variables and one result can be implemented with a multiplexer with _n_ selector inputs. The variables are connected to the selector inputs, and the function result, 0 or 1, for each possible combination of selector inputs is connected to the corresponding data input. If one of the variables (for example, _D_) is also available inverted, a multiplexer with _n_\-1 selector inputs is sufficient; the data inputs are connected to 0, 1, _D_, or ~_D_, according to the desired output for each combination of the selector inputs.<sup id="cite_ref-7"><a href="https://en.wikipedia.org/wiki/Multiplexer#cite_note-7">[7]</a></sup>

## See also\[[edit](https://en.wikipedia.org/w/index.php?title=Multiplexer&action=edit&section=8 "Edit section: See also")\]

-   [Digital subscriber line access multiplexer](https://en.wikipedia.org/wiki/Digital_subscriber_line_access_multiplexer "Digital subscriber line access multiplexer") (DSLAM)
-   [Inverse multiplexer](https://en.wikipedia.org/wiki/Inverse_multiplexer "Inverse multiplexer")
-   [Multiplexing](https://en.wikipedia.org/wiki/Multiplexing "Multiplexing")
    -   [Code-division multiplexing](https://en.wikipedia.org/wiki/CDMA "CDMA")
    -   [Frequency-division multiplexing](https://en.wikipedia.org/wiki/Frequency-division_multiplexing "Frequency-division multiplexing")
    -   [Time-division multiplexing](https://en.wikipedia.org/wiki/Time-division_multiplexing "Time-division multiplexing")
    -   [Wavelength-division multiplexing](https://en.wikipedia.org/wiki/Wavelength-division_multiplexing "Wavelength-division multiplexing")
    -   [Statistical multiplexing](https://en.wikipedia.org/wiki/Statistical_multiplexing "Statistical multiplexing")
    -   [Charlieplexing](https://en.wikipedia.org/wiki/Charlieplexing "Charlieplexing")
-   [Priority encoder](https://en.wikipedia.org/wiki/Priority_encoder "Priority encoder")
-   [Rule 184](https://en.wikipedia.org/wiki/Rule_184 "Rule 184"), a [cellular automaton](https://en.wikipedia.org/wiki/Cellular_automaton "Cellular automaton") in which each cell acts as a multiplexer for the values from the two adjacent cells
-   [Statistical multiplexer](https://en.wikipedia.org/wiki/Statistical_multiplexer "Statistical multiplexer")

## References\[[edit](https://en.wikipedia.org/w/index.php?title=Multiplexer&action=edit&section=9 "Edit section: References")\]

1.  ^ [Jump up to: <sup><i><b>a</b></i></sup>](https://en.wikipedia.org/wiki/Multiplexer#cite_ref-Network+_Guide_to_Networks_1-0) [<sup><i><b>b</b></i></sup>](https://en.wikipedia.org/wiki/Multiplexer#cite_ref-Network+_Guide_to_Networks_1-1) Dean, Tamara (2010). [_Network+ Guide to Networks_](https://books.google.com/books?id=UD0h_GqgbHgC&q=network%2B+guide+to+networks). Delmar. pp. 82–85. [ISBN](https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)") [978-1423902454](https://en.wikipedia.org/wiki/Special:BookSources/978-1423902454 "Special:BookSources/978-1423902454").
2.  **[^](https://en.wikipedia.org/wiki/Multiplexer#cite_ref-2 "Jump up")** Debashis, De (2010). [_Basic Electronics_](https://books.google.com/books?id=mT_j4F1bJx4C&q=Basic+Electronics+By+De+Debashis). Dorling Kindersley. p. 557. [ISBN](https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)") [9788131710685](https://en.wikipedia.org/wiki/Special:BookSources/9788131710685 "Special:BookSources/9788131710685").
3.  **[^](https://en.wikipedia.org/wiki/Multiplexer#cite_ref-3 "Jump up")** ["What is Analog to Digital Converter?"](https://www.icrfq.net/what-is-analog-to-digital-converter/). 2022-05-12. Retrieved 2023-02-20.
4.  **[^](https://en.wikipedia.org/wiki/Multiplexer#cite_ref-4 "Jump up")** Lipták, Béla (2002). [_Instrument engineers' handbook: Process software and digital networks_](https://books.google.com/books?id=KPjLAyA7HgoC&q=instrument+engineers%27+handbook:+Process+software+and+digital+networks+By+B%C3%A9la+G.+Lipt%C3%A1k). CRC Press. p. 343. [ISBN](https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)") [9781439863442](https://en.wikipedia.org/wiki/Special:BookSources/9781439863442 "Special:BookSources/9781439863442").
5.  **[^](https://en.wikipedia.org/wiki/Multiplexer#cite_ref-5 "Jump up")** Harris, David (2007). [_Digital Design and Computer Architecture_](https://books.google.com/books?id=5X7JV5-n0FIC&q=Digital+design+and+computer+architecture+By+David+Money+Harris,+Sarah+L.+Harris). Penrose. p. 79. [ISBN](https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)") [9780080547060](https://en.wikipedia.org/wiki/Special:BookSources/9780080547060 "Special:BookSources/9780080547060").
6.  **[^](https://en.wikipedia.org/wiki/Multiplexer#cite_ref-6 "Jump up")** Crowe, John; Hayes-Gill, Barrie (1998). ["The multiplexer hazard"](https://books.google.com/books?id=97w8luwEIAsC&pg=PA111). _Introduction to Digital Electronics_. Elsevier. pp. 111–3. [ISBN](https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)") [9780080534992](https://en.wikipedia.org/wiki/Special:BookSources/9780080534992 "Special:BookSources/9780080534992").
7.  **[^](https://en.wikipedia.org/wiki/Multiplexer#cite_ref-7 "Jump up")** Lancaster, Donald E. (1974). _The TTL Cookbook_. H.W. Sams. pp. 140–3. [ISBN](https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)") [9780672210358](https://en.wikipedia.org/wiki/Special:BookSources/9780672210358 "Special:BookSources/9780672210358").

## Further reading\[[edit](https://en.wikipedia.org/w/index.php?title=Multiplexer&action=edit&section=10 "Edit section: Further reading")\]

-   Mano, M. Morris; Kime, Charles R. (2008). _Logic and Computer Design Fundamentals_ (4th ed.). [Prentice Hall](https://en.wikipedia.org/wiki/Prentice_Hall "Prentice Hall"). [ISBN](https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)") [978-0-13-198926-9](https://en.wikipedia.org/wiki/Special:BookSources/978-0-13-198926-9 "Special:BookSources/978-0-13-198926-9").

## External links\[[edit](https://en.wikipedia.org/w/index.php?title=Multiplexer&action=edit&section=11 "Edit section: External links")\]

-   [![](https://upload.wikimedia.org/wikipedia/commons/thumb/9/99/Wiktionary-logo-en-v2.svg/16px-Wiktionary-logo-en-v2.svg.png)](https://en.wikipedia.org/wiki/File:Wiktionary-logo-en-v2.svg) The dictionary definition of [_multiplexer_](https://en.wiktionary.org/wiki/multiplexer "wiktionary:multiplexer") at Wiktionary
