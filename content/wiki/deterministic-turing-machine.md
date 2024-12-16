+++
title = "Deterministic Turing Machine"
author = "Lorenzo Drumond"
date = "2024-08-17T00:41:08"
tags = ["turing",  "deterministic",  "machine",  "programming"]
+++


# Deterministic Turing Machine

A Turing machine is a mathematical model of computation describing an abstract machine that manipulates symbols on a strip of tape according to a table of rules.

The machine operates on an infinite memory tape divided into discrete
cells, each of which can hold a single symbol drawn from a finite set of
symbols called the alphabet of the machine. It has a "head" that, at any point
in the machine's operation, is positioned over one of these cells, and a
"state" selected from a finite set of states. At each step of its operation,
the head reads the symbol in its cell. Then, based on the symbol and the
machine's own present state, the machine writes a symbol into the same cell,
and moves the head one step to the left or the right, or halts the
computation. The choice of which replacement symbol to write, which direction
to move the head, and whether to halt is based on a finite table that specifies
what to do for each combination of the current state and the symbol that is
read. Like a real computer program, it is possible for a Turing machine to go
into an infinite loop which will never halt.

The Turing machine can equivalently be defined as a model that recognises valid input strings, rather than enumerating output strings.

Given a Turing machine M and an arbitrary string s, it is generally not possible to decide whether M will eventually produce s. This is due to the fact that the halting problem [halting-problem](/wiki/halting-problem/) is unsolvable, which has major implications for the theoretical limits of computing.

# References

- https://en.wikipedia.org/wiki/Turing_machine
