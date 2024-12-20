+++
toc = true
title = "Backus Naur Form (BNF)"
author = "Lorenzo Drumond"
date = "2024-02-13T10:10:44"
tags = ["syntax",  "grammar",  "naur",  "code",  "form",  "backus",  "notation",  "theory",  "computer_science",  "programming"]
+++


BNF is a notation used to describe the syntax of programming languages or other formal languages.

BNF can be described as a metasyntax notation for context-free grammars.

A BNF specification is a set of derivation rules, written as

```bnf
<symbol> ::= __expression__
```

where:

1. `<symbol>` is a nonterminal variable, always enclosed in `<>`
2. `::=` means that the symbol on the left must be replaced with the expression on the right.
3. `__expression__` consists of one or more sequences of either terminal or nonterminal symbols where each sequence is separated by a vertical bar `|` indicating a choice, the whole being a possible substitution for the symbol on the left.
4. terminal symbols are characters enclosed in `""` and are meant to be used literally

## References
- https://en.wikipedia.org/wiki/Backus%E2%80%93Naur_form
- https://realpython.com/preview/python-bnf-notation/
