+++
toc = true
title = "Dynamic Programming"
author = "Lorenzo Drumond"
date = "2024-03-01T12:51:30"
tags = ["strategy",  "coding",  "optimal",  "computer_science",  "caching",  "memory",  "pattern",  "optimization",  "dynamic",  "memoization",  "programming",  "cache",  "recursion"]
+++


In a nutshell, dynamic programming is optimal decision making through solving overlapping subproblems.

Dynamic programming is an algorithm optimization technique that breaks down a complicated problem into smaller overlapping subproblems in a recursive manner. It uses the solutions of these subproblems to construct a solution to the original problem.

The term _dynamic programming_ was coined by mathematician Richard Bellman in the 50s. Programming refers to planning and decision making (not coding), and dynamic refers to the everchanging nature of these problems.

A problem is a dynamic programming problem if it satisfies two conditions:

1. __Optimal substructures__: it can be divided into subproblems, and the solution can be constructed from the solution of the subproblems.
2. __Overlapping subproblems__: the subproblems overlap with each other.

## Optimal substructure example
If you want to find the shortest path between two cities, e.g. San Francisco and San Diego, you can divide this problem into two smaller subproblems: since the path must go through Los Angeles, we can focus on finding the shortest path between San Francisco and Los Angeles, and between Los Angeles and San Diego.

A problem exhibits optimal substructure if its optimal solution can be constructed by efficiently combining the optimal solutions of its subproblems.

## Overlapping subproblems example
When we calculate the fibonacci sequence using recursion, we calculate the same numbers over and over again. Those repeating calculations are the overlap between the subproblems.

In a recursive strategy for the Fibonacci sequence, we divide the problem in to:

for the n-th element of the sequence, calculate n-1th and n-2th elements, and sum them together.

You can proceed recursively like this to find the edge case, and then get the final result. However in this process, we will calculate the same numbers over and over again. In this sense, these subproblems overlap.

You can then optimize the process by caching results so that calculation is performed only once.

## References
- https://www.youtube.com/watch?v=oNoILrFOx2k
- https://stackoverflow.blog/2022/01/31/the-complete-beginners-guide-to-dynamic-programming/
- [Memoization](/wiki/Memoization/)
