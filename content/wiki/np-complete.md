+++
toc = true
title = "NP complete"
author = "Lorenzo Drumond"
date = "2024-08-17T15:56:24"
tags = ["deterministic",  "decision",  "notation",  "polynomial",  "hard",  "computer_science",  "big_o",  "time",  "reducible",  "algorithm",  "boot_dev",  "programming",  "non",  "complete"]
+++



A problem in NP is also NP-complete if every other problem in NP can be reduced into it in polynomial time.

A problem is NP-complete when:

1. It is a decision problem, meaning that for any input to the problem, the output is either "yes" or "no".
2. When the answer is "yes", this can be demonstrated through the existence of a short (polynomial length) solution.
3. The correctness of each solution can be verified quickly (namely, in polynomial time) and a brute-force search algorithm can find a solution by trying all possible solutions.
4. The problem can be used to simulate every other problem for which we can verify quickly that a solution is correct. In this sense, NP-complete problems are the hardest of the problems to which solutions can be verified quickly. If we could find solutions of some NP-complete problem quickly, we could quickly find the solutions of every other problem to which a given solution can be easily verified.

## Formal definition

A decision problem C is NP-complete if:

1. C is in NP, and
2. every problem in NP is reducible to C in polynomial time.

A problem satisfying condition 2 is said to be NP-hard, whether or not it satisfies condition 1.

A consequence of this definition is that if we had a polynomial time algorithm for C, we could solve all problems in NP in polynomial time.

## Reducible

Any problem, let's call it Problem A, can be reduced to a different problem, Problem B, if there is an algorithm (called a reducer) that changes an algorithm that solves Problem B into an algorithm that solves Problem A.

Algorithm to solve B -> reducer -> Algorithm to solve A

We say that "Problem A is reducible to problem B" if the reducer from the above can be run in polynomial time.

### Formal definition

Suppose A and B are formal languages over the alphabets Σ and Γ, respectively. A many-one reduction from A to B is a total computable function f : Σ ∗ → Γ ∗ that has the property that each word w is in A if and only if f(w) is in B.

If such a function f exists, one says that A is many-one reducible or m-reducible to B and writes

```
A ≤m B. (A\leq_{\mathrm{m}}B.)
```

A many-one reduction (also called mapping reduction[1]) is a reduction that
converts instances of one decision problem [decision-problem](/wiki/decision-problem/) (whether an instance is in L1) to
another decision problem (whether an instance is in L2) using a computable
function. The reduced instance is in the language L2 if and only if the initial
instance is in its language L1. Thus if we can decide whether L2 instances are
in the language L2, we can decide whether L1 instances are in its language by
applying the reduction and solving for L2. Thus, reductions can be used to
measure the relative computational difficulty of two problems. It is said that
L1 reduces to L2 if, in layman's terms L2 is at least as hard to solve as L1.

## References
- [nondeterministic-turing-machine](/wiki/nondeterministic-turing-machine/)
- [merge-sort-algorithm](/wiki/merge-sort-algorithm/)
- [quicksort-algorithm](/wiki/quicksort-algorithm/)
- [big-o-notation-formal-definition](/wiki/big-o-notation-formal-definition/)

Next -> [decision-problem](/wiki/decision-problem/)
