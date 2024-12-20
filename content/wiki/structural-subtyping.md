+++
toc = true
title = "Structural subtyping"
author = "Lorenzo Drumond"
date = "2023-11-07T02:02:21"
tags = ["typing",  "computer_science",  "programming"]
+++


One way to categorize type systems is by whether they are **nominal**
or **structural**:
- in a nominal system, comparison between types are based on names and declarations; The Python type system is mostly nominal, where an int can be used in place of a float because of their subtype relationship.
- in a structural system, comparisons between types are based on structure. You could define a structural type Sized that includes all instances that define `.__len__()`, irrespective of their nominal type.

## References
- https://realpython.com/python-type-checking/#type-theory
- [subtypes](/wiki/subtypes/)
- [types](/wiki/types/)
