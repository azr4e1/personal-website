+++
toc = true
hideReply = true
title = "Referential transparency"
author = "Lorenzo Drumond"
date = "2024-07-29T01:34:01"
tags = ["programming",  "speed",  "cache",  "optimal",  "efficient",  "algorithm",  "referential",  "expensive",  "optimization",  "store",  "function",  "transparent",  "boot_dev",  "dynamic",  "memoization"]
+++



Referential transparency is a property of a function that allows it to be replaced by its equivalent output. In simpler terms, if you call the function a second time with the same arguments, you’re guaranteed to get the same returning value.

Pure functions are always referentially transparent.

"Referential transparency" is a fancy way of saying that a function call can be replaced by its would-be return value because it's the same every time. Referentially transparent functions can be safely memoized [memoization](/wiki/memoization/).

The great thing about pure functions is that they can always be safely memoized. Impure functions can't be because they might do something in addition to returning a static value, or they might return different values given the same arguments.

## References

- https://www.baeldung.com/cs/referential-transparency#referential-transparency
- boot.dev

Next -> [closures](/wiki/closures/)
