
# Compiler Principles and Technology 
This repository contains notes and materials related to compilers and compiler technology. It aims to summarize important concepts and keywords for school exams or learning compilers. 

## Table of Contents 
- Lexing and Parsing 
- Context-Free grammars 
- LL(1) parsers 
- Recursive Descent parsers 
- Bottom-Up parsers 
- LR parsers 
- SLR parsers 
- LALR parsers
- Parser generators (LEX, YACC) 

## Semantic Analysis 
- Symbol tables 
- Abstract syntax trees 
- Type checking 
- Scope management 
- Semantic Errors 

## Intermediate Representations 
- Three-address code 
- Static single assignment form 
- Register allocation 

## Code Generation 
- Assembly code generation 
- Machine instructions 
- Optimizations (dead code elimination, constant folding, etc.)

## Other topics 
- Compiler Construction tools 
- Compiler Optimization techniques 
- Run-time environments 
- Assembly to High-level language conversion 
- Optimizing compilers 

## References 
- Compilers: Principles, Techniques, and Tools by Alfred V. Aho, Monica S. Lam, Ravi Sethi, Jeffrey D. Ullman 
- Compiler Design by Walter Savitch 
- Architectural support for compilers by Avinash Sodani

I hope this helps! Let me know if you have any other questions.


---
created: 2023-04-25T13:14:58 (UTC +08:00)
tags: []
source: https://en.wikipedia.org/wiki/Context-free_grammar
author: Contributors to Wikimedia projects
---

# Context-free grammar - Wikipedia

> ## Excerpt
> 

---
## External links\[[edit](https://en.wikipedia.org/w/index.php?title=Context-free_grammar&action=edit&section=40 "Edit section: External links")\]

-   Computer programmers may find the [stack exchange answer](https://stackoverflow.com/questions/6713240/what-is-a-context-free-grammar) to be useful.
-   [CFG Developer](https://web.stanford.edu/class/archive/cs/cs103/cs103.1156/tools/cfg/) created by Christopher Wong at Stanford University in 2014; modified by Kevin Gibbons in 2015.

.mw-parser-output .hlist dl,.mw-parser-output .hlist ol,.mw-parser-output .hlist ul{margin:0;padding:0}.mw-parser-output .hlist dd,.mw-parser-output .hlist dt,.mw-parser-output .hlist li{margin:0;display:inline}.mw-parser-output .hlist.inline,.mw-parser-output .hlist.inline dl,.mw-parser-output .hlist.inline ol,.mw-parser-output .hlist.inline ul,.mw-parser-output .hlist dl dl,.mw-parser-output .hlist dl ol,.mw-parser-output .hlist dl ul,.mw-parser-output .hlist ol dl,.mw-parser-output .hlist ol ol,.mw-parser-output .hlist ol ul,.mw-parser-output .hlist ul dl,.mw-parser-output .hlist ul ol,.mw-parser-output .hlist ul ul{display:inline}.mw-parser-output .hlist .mw-empty-li{display:none}.mw-parser-output .hlist dt::after{content:": "}.mw-parser-output .hlist dd::after,.mw-parser-output .hlist li::after{content:" · ";font-weight:bold}.mw-parser-output .hlist dd:last-child::after,.mw-parser-output .hlist dt:last-child::after,.mw-parser-output .hlist li:last-child::after{content:none}.mw-parser-output .hlist dd dd:first-child::before,.mw-parser-output .hlist dd dt:first-child::before,.mw-parser-output .hlist dd li:first-child::before,.mw-parser-output .hlist dt dd:first-child::before,.mw-parser-output .hlist dt dt:first-child::before,.mw-parser-output .hlist dt li:first-child::before,.mw-parser-output .hlist li dd:first-child::before,.mw-parser-output .hlist li dt:first-child::before,.mw-parser-output .hlist li li:first-child::before{content:" (";font-weight:normal}.mw-parser-output .hlist dd dd:last-child::after,.mw-parser-output .hlist dd dt:last-child::after,.mw-parser-output .hlist dd li:last-child::after,.mw-parser-output .hlist dt dd:last-child::after,.mw-parser-output .hlist dt dt:last-child::after,.mw-parser-output .hlist dt li:last-child::after,.mw-parser-output .hlist li dd:last-child::after,.mw-parser-output .hlist li dt:last-child::after,.mw-parser-output .hlist li li:last-child::after{content:")";font-weight:normal}.mw-parser-output .hlist ol{counter-reset:listitem}.mw-parser-output .hlist ol>li{counter-increment:listitem}.mw-parser-output .hlist ol>li::before{content:" "counter(listitem)"\\a0 "}.mw-parser-output .hlist dd ol>li:first-child::before,.mw-parser-output .hlist dt ol>li:first-child::before,.mw-parser-output .hlist li ol>li:first-child::before{content:" ("counter(listitem)"\\a0 "}.mw-parser-output .plainlist ol,.mw-parser-output .plainlist ul{line-height:inherit;list-style:none;margin:0;padding:0}.mw-parser-output .plainlist ol li,.mw-parser-output .plainlist ul li{margin-bottom:0}.mw-parser-output .navbox{box-sizing:border-box;border:1px solid #a2a9b1;width:100%;clear:both;font-size:88%;text-align:center;padding:1px;margin:1em auto 0}.mw-parser-output .navbox .navbox{margin-top:0}.mw-parser-output .navbox+.navbox,.mw-parser-output .navbox+.navbox-styles+.navbox{margin-top:-1px}.mw-parser-output .navbox-inner,.mw-parser-output .navbox-subgroup{width:100%}.mw-parser-output .navbox-group,.mw-parser-output .navbox-title,.mw-parser-output .navbox-abovebelow{padding:0.25em 1em;line-height:1.5em;text-align:center}.mw-parser-output .navbox-group{white-space:nowrap;text-align:right}.mw-parser-output .navbox,.mw-parser-output .navbox-subgroup{background-color:#fdfdfd}.mw-parser-output .navbox-list{line-height:1.5em;border-color:#fdfdfd}.mw-parser-output .navbox-list-with-group{text-align:left;border-left-width:2px;border-left-style:solid}.mw-parser-output tr+tr>.navbox-abovebelow,.mw-parser-output tr+tr>.navbox-group,.mw-parser-output tr+tr>.navbox-image,.mw-parser-output tr+tr>.navbox-list{border-top:2px solid #fdfdfd}.mw-parser-output .navbox-title{background-color:#ccf}.mw-parser-output .navbox-abovebelow,.mw-parser-output .navbox-group,.mw-parser-output .navbox-subgroup .navbox-title{background-color:#ddf}.mw-parser-output .navbox-subgroup .navbox-group,.mw-parser-output .navbox-subgroup .navbox-abovebelow{background-color:#e6e6ff}.mw-parser-output .navbox-even{background-color:#f7f7f7}.mw-parser-output .navbox-odd{background-color:transparent}.mw-parser-output .navbox .hlist td dl,.mw-parser-output .navbox .hlist td ol,.mw-parser-output .navbox .hlist td ul,.mw-parser-output .navbox td.hlist dl,.mw-parser-output .navbox td.hlist ol,.mw-parser-output .navbox td.hlist ul{padding:0.125em 0}.mw-parser-output .navbox .navbar{display:block;font-size:100%}.mw-parser-output .navbox-title .navbar{float:left;text-align:left;margin-right:0.5em}

| hide.mw-parser-output .navbar{display:inline;font-size:88%;font-weight:normal}.mw-parser-output .navbar-collapse{float:left;text-align:left}.mw-parser-output .navbar-boxtext{word-spacing:0}.mw-parser-output .navbar ul{display:inline-block;white-space:nowrap;line-height:inherit}.mw-parser-output .navbar-brackets::before{margin-right:-0.125em;content:"\[ "}.mw-parser-output .navbar-brackets::after{margin-left:-0.125em;content:" \]"}.mw-parser-output .navbar li{word-spacing:-0.125em}.mw-parser-output .navbar a>span,.mw-parser-output .navbar a>abbr{text-decoration:inherit}.mw-parser-output .navbar-mini abbr{font-variant:small-caps;border-bottom:none;text-decoration:none;cursor:inherit}.mw-parser-output .navbar-ct-full{font-size:114%;margin:0 7em}.mw-parser-output .navbar-ct-mini{font-size:114%;margin:0 4em}
-   [v](https://en.wikipedia.org/wiki/Template:Formal_languages_and_grammars "Template:Formal languages and grammars")
-   [t](https://en.wikipedia.org/wiki/Template_talk:Formal_languages_and_grammars "Template talk:Formal languages and grammars")
-   [e](https://en.wikipedia.org/w/index.php?title=Template:Formal_languages_and_grammars&action=edit)

[Automata theory](https://en.wikipedia.org/wiki/Automata_theory "Automata theory"): [formal languages](https://en.wikipedia.org/wiki/Formal_language "Formal language") and [formal grammars](https://en.wikipedia.org/wiki/Formal_grammar "Formal grammar")

 |
| --- |
| 

<table class="navbox-columns-table" style="border-spacing: 0px; text-align:left;width:100%;"><tbody><tr><td class="navbox-abovebelow" colspan="1" style="font-weight:bold;"><a href="https://en.wikipedia.org/wiki/Chomsky_hierarchy" title="Chomsky hierarchy">Chomsky hierarchy</a></td><td class="navbox-abovebelow" colspan="1" style="border-left: 2px solid rgb(253, 253, 253); font-weight: bold; --darkreader-inline-border-left:#2d3133;" data-darkreader-inline-border-left=""><a href="https://en.wikipedia.org/wiki/Formal_grammar" title="Formal grammar">Grammars</a></td><td class="navbox-abovebelow" colspan="1" style="border-left: 2px solid rgb(253, 253, 253); font-weight: bold; --darkreader-inline-border-left:#2d3133;" data-darkreader-inline-border-left=""><a href="https://en.wikipedia.org/wiki/Formal_language" title="Formal language">Languages</a></td><td class="navbox-abovebelow" colspan="1" style="border-left: 2px solid rgb(253, 253, 253); font-weight: bold; --darkreader-inline-border-left:#2d3133;" data-darkreader-inline-border-left=""><a href="https://en.wikipedia.org/wiki/Abstract_machine" title="Abstract machine">Abstract machines</a></td></tr><tr style="vertical-align:top;"><td class="navbox-list" style="padding:0px;;;text-align: center;;width:10em;"><div><ul><li>Type-0</li><li>—</li><li>Type-1</li><li>—</li><li>—</li><li>—</li><li>—</li><li>—</li><li>Type-2</li><li>—</li><li>—</li><li>Type-3</li><li>—</li><li>—</li></ul></div></td><td class="navbox-list" style="border-left: 2px solid rgb(253, 253, 253); padding: 0px; width: 10em; --darkreader-inline-border-left:#2d3133;" data-darkreader-inline-border-left=""><div><ul><li><a href="https://en.wikipedia.org/wiki/Unrestricted_grammar" title="Unrestricted grammar">Unrestricted</a></li><li>(no common name)</li><li><a href="https://en.wikipedia.org/wiki/Context-sensitive_grammar" title="Context-sensitive grammar">Context-sensitive</a></li><li><span style="white-space:nowrap;">Positive <a href="https://en.wikipedia.org/wiki/Range_concatenation_grammars" class="mw-redirect" title="Range concatenation grammars">range concatenation</a></span></li><li><a href="https://en.wikipedia.org/wiki/Indexed_grammar" title="Indexed grammar">Indexed</a></li><li>—</li><li><a href="https://en.wikipedia.org/wiki/Linear_context-free_rewriting_system" class="mw-redirect" title="Linear context-free rewriting system">Linear context-free rewriting systems</a></li><li><a href="https://en.wikipedia.org/wiki/Tree-adjoining_grammar" title="Tree-adjoining grammar">Tree-adjoining</a></li><li><a class="mw-selflink selflink">Context-free</a></li><li><a href="https://en.wikipedia.org/wiki/Deterministic_context-free_grammar" title="Deterministic context-free grammar">Deterministic context-free</a></li><li><a href="https://en.wikipedia.org/wiki/Nested_word" title="Nested word">Visibly pushdown</a></li><li><a href="https://en.wikipedia.org/wiki/Regular_grammar" title="Regular grammar">Regular</a></li><li>—</li><li><a href="https://en.wikipedia.org/wiki/Non-recursive_grammar" class="mw-redirect" title="Non-recursive grammar">Non-recursive</a></li></ul></div></td><td class="navbox-list" style="border-left: 2px solid rgb(253, 253, 253); padding: 0px; width: 10em; --darkreader-inline-border-left:#2d3133;" data-darkreader-inline-border-left=""><div><ul><li><a href="https://en.wikipedia.org/wiki/Recursively_enumerable_language" title="Recursively enumerable language">Recursively enumerable</a></li><li><a href="https://en.wikipedia.org/wiki/Recursive_language" title="Recursive language">Decidable</a></li><li><a href="https://en.wikipedia.org/wiki/Context-sensitive_language" title="Context-sensitive language">Context-sensitive</a></li><li><span style="white-space:nowrap;">Positive <a href="https://en.wikipedia.org/wiki/Range_concatenation_language" class="mw-redirect" title="Range concatenation language">range concatenation</a><sup>*</sup></span></li><li><a href="https://en.wikipedia.org/wiki/Indexed_language" title="Indexed language">Indexed</a><sup>*</sup></li><li>—</li><li><a href="https://en.wikipedia.org/wiki/Linear_context-free_rewriting_language" class="mw-redirect" title="Linear context-free rewriting language">Linear context-free rewriting language</a></li><li><a href="https://en.wikipedia.org/wiki/Tree-adjoining_grammar" title="Tree-adjoining grammar">Tree-adjoining</a></li><li><a href="https://en.wikipedia.org/wiki/Context-free_language" title="Context-free language">Context-free</a></li><li><a href="https://en.wikipedia.org/wiki/Deterministic_context-free_language" title="Deterministic context-free language">Deterministic context-free</a></li><li><a href="https://en.wikipedia.org/wiki/Nested_word" title="Nested word">Visibly pushdown</a></li><li><a href="https://en.wikipedia.org/wiki/Regular_language" title="Regular language">Regular</a></li><li><a href="https://en.wikipedia.org/wiki/Star-free_language" title="Star-free language">Star-free</a></li><li><a href="https://en.wikipedia.org/wiki/Finite_language" class="mw-redirect" title="Finite language">Finite</a></li></ul></div></td><td class="navbox-list" style="border-left: 2px solid rgb(253, 253, 253); padding: 0px; width: 10em; --darkreader-inline-border-left:#2d3133;" data-darkreader-inline-border-left=""><div><ul><li><a href="https://en.wikipedia.org/wiki/Turing_machine" title="Turing machine">Turing machine</a></li><li><a href="https://en.wikipedia.org/wiki/Decider_(Turing_machine)" title="Decider (Turing machine)">Decider</a></li><li><a href="https://en.wikipedia.org/wiki/Linear_bounded_automaton" title="Linear bounded automaton">Linear-bounded</a></li><li><a href="https://en.wikipedia.org/wiki/PTIME" class="mw-redirect" title="PTIME">PTIME</a> Turing Machine</li><li><a href="https://en.wikipedia.org/wiki/Nested_stack_automaton" title="Nested stack automaton">Nested stack</a></li><li><a href="https://en.wikipedia.org/wiki/Thread_automaton" title="Thread automaton">Thread automaton</a></li><li>restricted <a href="https://en.wikipedia.org/wiki/Tree_stack_automaton" title="Tree stack automaton">Tree stack automaton</a></li><li><a href="https://en.wikipedia.org/wiki/Embedded_pushdown_automaton" title="Embedded pushdown automaton">Embedded pushdown</a></li><li><a href="https://en.wikipedia.org/wiki/Pushdown_automaton" title="Pushdown automaton">Nondeterministic pushdown</a></li><li><a href="https://en.wikipedia.org/wiki/Deterministic_pushdown_automaton" title="Deterministic pushdown automaton">Deterministic pushdown</a></li><li><a href="https://en.wikipedia.org/wiki/Nested_word" title="Nested word">Visibly pushdown</a></li><li><a href="https://en.wikipedia.org/wiki/Finite-state_machine" title="Finite-state machine">Finite</a></li><li><a href="https://en.wikipedia.org/wiki/Aperiodic_finite_state_automaton" title="Aperiodic finite state automaton">Counter-free (with aperiodic finite monoid)</a></li><li><a href="https://en.wikipedia.org/wiki/Deterministic_acyclic_finite_state_automaton" title="Deterministic acyclic finite state automaton">Acyclic finite</a></li></ul></div></td></tr></tbody></table>



 |
| 

Each category of languages, except those marked by a <sup>*</sup>, is a [proper subset](https://en.wikipedia.org/wiki/Proper_subset "Proper subset") of the category directly above it. Any language in each category is generated by a grammar and by an automaton in the category in the same line.

 |

![](https://en.wikipedia.org//en.wikipedia.org/wiki/Special:CentralAutoLogin/start?type=1x1)

Retrieved from "[https://en.wikipedia.org/w/index.php?title=Context-free\_grammar&oldid=1142429919](https://en.wikipedia.org/w/index.php?title=Context-free_grammar&oldid=1142429919)"

[Categories](https://en.wikipedia.org/wiki/Help:Category "Help:Category"):

-   [1956 in computing](https://en.wikipedia.org/wiki/Category:1956_in_computing "Category:1956 in computing")
-   [Compiler construction](https://en.wikipedia.org/wiki/Category:Compiler_construction "Category:Compiler construction")
-   [Formal languages](https://en.wikipedia.org/wiki/Category:Formal_languages "Category:Formal languages")
-   [Programming language topics](https://en.wikipedia.org/wiki/Category:Programming_language_topics "Category:Programming language topics")
