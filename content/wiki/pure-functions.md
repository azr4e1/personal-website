+++
title = "Pure Functions"
author = "Lorenzo Drumond"
date = "2024-07-29T01:06:16"
tags = ["declarative",  "computer_science",  "paradigm",  "boot_dev",  "programming",  "recursion",  "immutable",  "haskell",  "pure",  "side",  "fp",  "effect",  "functional"]
+++



Pure functions are functions that:

1. always return the same value given the same arguments.
2. do not produce side effects

Pure functions don't do anything with anything that exists outside of their scope.

Pure functions have a lot of benefits. Whenever possible, good developers try to use pure functions instead of impure functions. Pure functions:

1. Return the same result if given the same arguments. They are deterministic.
2. Do not change the external state of the program. For example, they do not change any variables outside of their scope.
3. Do not perform any I/O operations (like reading from disk, accessing the internet, or writing from the console).

These properties result in pure functions being easier to test, debug, and think about.

# References
- [object-oriented-programming](/wiki/object-oriented-programming/)

Next -> [memoization](/wiki/memoization/)
