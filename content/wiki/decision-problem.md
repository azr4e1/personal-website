+++
toc = true
title = "Decision Problem"
author = "Lorenzo Drumond"
date = "2024-08-17T16:08:45"
tags = ["deterministic",  "reducible",  "notation",  "programming",  "algorithm",  "boot_dev",  "non",  "complete",  "computer_science",  "polynomial",  "decision",  "time",  "big_o"]
+++



A decision problem is a computational problem that can be posed as a yes–no question of the input values.

An example of a decision problem is deciding by means of an algorithm whether a given natural number is prime. Another is the problem "given two numbers x and y, does x evenly divide y?". The answer is either 'yes' or 'no' depending upon the values of x and y.

A method for solving a decision problem, given in the form of an algorithm, is called a *decision procedure* for that problem.

## Formal definition

A decision problem is a yes-or-no question on an infinite set of inputs. It is traditional to define the decision problem as the set of possible inputs together with the set of inputs for which the answer is yes.

## Decidability

A decision problem is decidable or effectively solvable if the set of inputs (or natural numbers) for which the answer is yes is a recursive set. A problem is partially decidable, semidecidable, solvable, or provable if the set of inputs (or natural numbers) for which the answer is yes is a recursively enumerable set. Problems that are not decidable are undecidable. For those it is not possible to create an algorithm, efficient or otherwise, that solves them.

## Example

A classic example of a decidable decision problem is the set of prime numbers. It is possible to effectively decide whether a given natural number is prime by testing every possible nontrivial factor. Although much more efficient methods of primality testing are known, the existence of any effective method is enough to establish decidability.

## References

- [nondeterministic-turing-machine](/wiki/nondeterministic-turing-machine/)
- [decision-problem](/wiki/decision-problem/)
- [merge-sort-algorithm](/wiki/merge-sort-algorithm/)
- [quicksort-algorithm](/wiki/quicksort-algorithm/)
- [big-o-notation-formal-definition](/wiki/big-o-notation-formal-definition/)

Next -> [recursive-sets](/wiki/recursive-sets/)
