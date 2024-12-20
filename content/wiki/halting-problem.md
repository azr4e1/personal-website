+++
title = "halting problem"
author = "Lorenzo Drumond"
date = "2024-08-17T00:48:56"
tags = ["halting",  "programming",  "turing",  "algorithm",  "computer_science",  "problem",  "machine"]
+++



In computability theory, the halting problem is the problem of determining, from a description of an arbitrary computer program and an input, whether the program will finish running, or continue to run forever. The halting problem is undecidable, meaning that no general algorithm exists that solves the halting problem for all possible program–input pairs.

A key part of the formal statement of the problem is a mathematical definition of a computer and program, usually via a Turing machine. The proof then shows, for any program f that might determine whether programs halt, that a "pathological" program g exists for which f makes an incorrect determination. Specifically, g is the program that, when called with some input, passes its own source and its input to f and does the opposite of what f predicts g will do. The behavior of f on g shows undecidability as it means no program f will solve the halting problem in every possible case.

# References

- https://en.wikipedia.org/wiki/Halting_problem
