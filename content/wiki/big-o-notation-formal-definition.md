+++
title = "Big O Notation Formal Definition"
author = "Lorenzo Drumond"
date = "2024-08-13T22:29:55"
tags = ["computer_science",  "algorithm",  "notation",  "programming",  "boot_dev",  "big_o"]
+++



Big O notation is a mathematical notation that describes the limiting behavior of a function when the argument tends towards a particular value or infinity.

In computer science, big O notation is used to classify algorithms according to how their run time or space requirements grow as the input size grows.

Big O notation characterizes functions according to their growth rates: different functions with the same asymptotic growth rate may be represented using the same O notation. The letter O is used because the growth rate of a function is also referred to as the order of the function. A description of a function in terms of big O notation usually only provides an upper bound on the growth rate of the function.

# Formal Definition

Let f, the function to be estimated, be a real or complex valued function, and
let g, the comparison function, be a real valued function. Let both functions
be defined on some unbounded subset of the positive real numbers, and g(x) be
strictly positive for all large enough values of x. One writes

```
f(x) = O(g(x))
```

and it is read "f(x) is big O of g(x)" if the absolute value of f(x) is at most a positive constant multiple of g(x) for all sufficiently large values of x. That is:

```
f(x) = O(g(x))
```

if and only if there is a positive real number `M` and a real number x0 such that

```
|f(x)| <= M g(x)
```

for all `x >= x0`.

In computer science, a slightly more restrictive definition is common: f and g are both required to be functions from some unbounded subset of the positive integers to the nonnegative real numbers; then `f(x) = O(g(x))` if and only if there exists positive integer numbers M and n0 such that `f(n) <= M g(n)` for every `n >= n0`

# References

- https://en.wikipedia.org/wiki/Big_O_notation

Next -> [binary-search-algorithm](/wiki/binary-search-algorithm/)

Next -> [polynomial-vs-exponential-time](/wiki/polynomial-vs-exponential-time/)
