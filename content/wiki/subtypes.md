+++
title = "Subtypes"
author = "Lorenzo Drumond"
date = "2023-11-07T01:38:06"
tags = ["programming",  "computer_science",  "typing"]
+++


# Subtypes

The subtype relationship arises from the question: if `first_var` has type `first_type`, and `second_var` has type `second_type`, is it safe to assign `first_var = second_var`?

A criterion is the following:
- every value from `second_type` is also in the set of values of `first_type`;
- every function from `first_type` is also in the set of functions of `second_type`

This relation is thus called a subtype relation: `second_type` is a subtype of `first_type`

Example: integers are subtypes of real numbers. Integers are of course real numbers, but there are less of them. Also, every function that works on real numbers, works on integers, but integers support more operations, like _bitwise shifts_.

# References
- https://peps.python.org/pep-0483/
- [types](/wiki/types/)
