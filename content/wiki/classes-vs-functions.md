+++
title = "Classes VS Functions"
author = "Lorenzo Drumond"
date = "2024-07-28T16:05:24"
tags = ["computer_science",  "boot_dev",  "programming",  "classes",  "functions",  "fp",  "oop"]
+++


# Classes VS Functions

**Classes** encourage you to think about the world as a hierarchical collection of objects. Objects bundle behavior, data, and state together in a way that draws boundaries between instances of things, like chess pieces on a board.

**Functions** encourage you to think about the world as a series of data transformations. Functions take data as input and return a transformed output. For example, a function might take the entire state of a chess board and a move as inputs, and return the new state of the board as output.

## Classes or Functions?

If you're unsure, default to functions. Reach for classes when you need something long-lived and stateful that would be easier to model if you could share behavior and data structure via inheritance. This is often the case for:

- Video games
- Simulations
- GUIs


# References

- boot.dev
