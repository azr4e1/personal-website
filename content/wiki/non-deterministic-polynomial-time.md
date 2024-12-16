+++
title = "Non deterministic polynomial time"
author = "Lorenzo Drumond"
date = "2024-08-17T00:25:07"
tags = ["algorithm",  "boot_dev",  "non",  "deterministic",  "computer_science",  "time",  "polynomial",  "big_o",  "notation",  "programming"]
+++


# Non deterministic polynomial time

NP (which stands for nondeterministic polynomial time) is the set of problems whose solutions can be verified in polynomial time, but not necessarily solved in polynomial time.

NP is the set of decision problems for which the problem instances, where the answer is "yes", have proofs verifiable in polynomial time by a deterministic Turing machine, or alternatively the set of problems that can be solved in polynomial time by a nondeterministic Turing machine.

We have two equivalent definitions:

1. NP is the set of decision problems solvable in polynomial time by a nondeterministic Turing machine ([nondeterministic-turing-machine](/wiki/nondeterministic-turing-machine/)).
2. NP is the set of decision problems verifiable in polynomial time by a deterministic Turing machine.

These two definitions are equivalents because the algorithm based on the Turing machine consists of two phases, the first of which consists of a guess about the solution, which is generated in a nondeterministic way, while the second phase consists of a deterministic algorithm that verifies whether the guess is a solution to the problem.

P is a subclass of NP, because every problem that can be solved in polynomial time can also be verified in polynomial time.

In order to explain the verifier-based definition of NP, consider the subset sum problem: Assume that we are given some integers, and we wish to know whether some of these integers sum up to zero.

To answer whether some of the integers add to zero we can create an algorithm that obtains all the possible subsets. As the number of integers that we feed into the algorithm becomes larger, both the number of subsets and the computation time grows exponentially.

But notice that if we are given a particular subset, we can efficiently verify whether the subset sum is zero, by summing the integers of the subset. If the sum is zero, that subset is a proof or witness for the answer is "yes". An algorithm that verifies whether a given subset has sum zero is a verifier. Clearly, summing the integers of a subset can be done in polynomial time, and the subset sum problem is therefore in NP.

The above example can be generalized for any decision problem. Given any instance I of problem Π and witness W, if there exists a verifier V so that given the ordered pair (I, W) as input, V returns "yes" in polynomial time if the witness proves that the answer is "yes" or "no" in polynomial time otherwise, then Π is in NP.


There is no formal proof that P != NP. Sometimes a solution in polynomial time comes along for problems that were thought to be just NP, so we don't know if P and NP are actually distinct.


## Verified and Solved

Let's say we want to sort a list. We know some algorithms like mergesore [merge-sort-algorithm]] or quicksort [[quicksort-algorithm](/wiki/merge-sort-algorithm]] or quicksort [[quicksort-algorithm/) that can get us a sorted list in O(nlogn) time, so in polynomial time. This means they can _solve_ the problem in polynomial time, so sorting is part of P.

We can verify that any given list is sorted in O(n) time (just by iterating over it), so sorting a list is also part of NP.

## Example of NP problem

One example of a problem that is NP but not P is the **Travelling Salesman Problem**: given a set of cities connected by roads. Each road has a given length. Given starting city S and destination city D, is there a path between S and D of length less than X, with X being a given number.

The big O of this problem is O(n!), so it cannot be solved in polynomial time. However, verifying that an asnwer is correct is O(n), so it's polynomial time, which makes this a NP problem.

# References
- [big-o-notation-formal-definition](/wiki/big-o-notation-formal-definition/)

Next -> [np-complete](/wiki/np-complete/)
