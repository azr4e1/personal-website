+++
title = "Polynomial VS Exponential time"
author = "Lorenzo Drumond"
date = "2024-08-15T11:18:23"
tags = ["computer_science",  "algorithm",  "notation",  "programming",  "boot_dev",  "big_o"]
+++



Broadly speaking, algorithms can be classified into two categories:

- "Polynomial time": O(1), O(n), O(n^2), O(n*log(n)), O(n^3), ...
- "Exponential time": O(2^n), O(3^n), O(n^n), O(n!)

There is also factorial time, but let's lump it in together with exponential.

An algorithm runs in "Polynomial time" if its runtime does not grow faster than n^k, where k is any constant and n is the size of the input.

To put it simply, polynomial time algorithms can be useful. Exponential time algorithms are almost always too slow to ever be practical.

# References
- [binary-search-algorithm](/wiki/binary-search-algorithm/)

Next -> [p-algorithms](/wiki/p-algorithms/)
