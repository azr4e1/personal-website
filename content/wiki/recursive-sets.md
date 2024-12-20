+++
title = "Recursive Sets"
author = "Lorenzo Drumond"
date = "2024-08-17T16:12:22"
tags = ["deterministic",  "reducible",  "notation",  "algorithm",  "programming",  "boot_dev",  "non",  "complete",  "computer_science",  "polynomial",  "decision",  "time",  "big_o"]
+++



A set of natural numbers is called computable, recursive, or decidable if there is an algorithm which takes a number as input, terminates after a finite amount of time (possibly depending on the given number) and correctly decides whether the number belongs to the set or not.

A set which is not computable is called noncomputable or undecidable.

# Formal definition

A subset S of the natural numbers is called computable if there exists a total computable function (algorithm) f such that f(x) = 1 if x in S, and f(x) = 0 if x not in S.

# References
- [nondeterministic-turing-machine](/wiki/nondeterministic-turing-machine/)
- [merge-sort-algorithm](/wiki/merge-sort-algorithm/)
- [big-o-notation-formal-definition](/wiki/big-o-notation-formal-definition/)
- [quicksort-algorithm](/wiki/quicksort-algorithm/)
- [decision-problem](/wiki/decision-problem/)
