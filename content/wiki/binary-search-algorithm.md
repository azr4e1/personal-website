+++
toc = true
hideReply = true
title = "binary search algorithm"
author = "Lorenzo Drumond"
date = "2024-08-13T23:14:59"
tags = ["notation",  "boot_dev",  "computer_science",  "algorithm",  "big_o",  "binary_search",  "programming"]
+++



A binary search algorithm is a common example of an O(log(n)) algorithm. Binary searches work on a sorted list of elements.

## Pseudocode

Given an array of n elements sorted from least to greatest, and a target value:

- Set low = 0 and high = n - 1.
- While low <= high:
  - Set median (the position of the middle element) to (low + high) // 2, which is the greatest integer less than or equal to (low + high) / 2
  - If array[median] == target, return True
  - Else if array[median] < target, set low to median + 1
  - Otherwise set high to median - 1
- Return False

Because at each iteration of the search we are halving the size of the search space, the algorithm has a complexity of log2, or O(log(n)).

In other words, to add another step to the runtime, we need to double the size of the input. Binary searches are fast.

## References

- boot.dev

Next -> [bubble-sort-algorithm](/wiki/bubble-sort-algorithm/)
