+++
toc = true
hideReply = true
title = "Garbage collectors"
author = "Lorenzo Drumond"
date = "2023-12-21T18:17:58"
tags = ["memory",  "programming",  "heap",  "computer_science"]
+++


A garbage collector is a routine in many programming languages
whose purpose is to free up space in the heap.

When programs run, they use two types of memories: stack (for local and short
lived variables and functions) and heap (for longer lived values) [heap-and-stack](/wiki/heap-and-stack/)

Since reference type variables values (variables that only store a pointer to the actual
value) are always stored in the heap, if a pointer is created in the stack, when
that's gone, the actual value is left unreferenced in the heap, occupying space.

The garbage collector will go through the heap and find values that aren't being used
anymore and clean them up.

## References
