+++
toc = true
title = "selection sort algorithm"
author = "Lorenzo Drumond"
date = "2024-08-15T11:05:49"
tags = ["computer_science",  "algorithm",  "notation",  "sorting",  "binary_search",  "programming",  "boot_dev",  "big_o"]
+++



It's similar to bubble sort in that it works by repeatedly swapping items in a list. However, it's slightly more efficient than bubble sort because it only makes one swap per iteration.

## Pseudocode

1. For each index:
  1. Set smallest_idx to the current index
  2. For each index from smallest_idx+1 to the end of the list:
	1. If the number at the inner index is smaller than the number at smallest_idx, set smallest_idx to the inner index
  3. Swap the number at the current index with the number at smallest_idx

## References

- boot.dev
