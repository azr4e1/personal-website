+++
title = "Functional programming"
author = "Lorenzo Drumond"
date = "2024-07-28T14:57:03"
tags = ["declarative",  "computer_science",  "paradigm",  "boot_dev",  "programming",  "recursion",  "immutable",  "haskell",  "pure",  "side",  "fp",  "effect",  "functional"]
+++



Functional programming (FP) is a programming paradigm where programs are constructed by applying and composing functions. It emphasizes the use of pure functions, immutability, and higher-order functions:

1. **Pure Functions**: A pure function is a function that, given the same inputs, always returns the same output and has no side effects (i.e., it doesn't alter any state or interact with the outside world).

2. **Immutability**: In FP, data is immutable, meaning once a data structure is created, it cannot be changed. Instead of modifying data, new data structures are created by copying and modifying existing ones.

3. **First-Class and Higher-Order Functions**: Functions are first-class citizens in FP, meaning they can be assigned to variables, passed as arguments, and returned from other functions. Higher-order functions are functions that take other functions as arguments or return them as results.

4. **Function Composition**: Complex functions can be created by combining simpler ones. This allows for more modular and readable code.

5. **Declarative Style**: FP emphasizes what to do rather than how to do it. This is in contrast to imperative programming, which focuses on explicit steps to achieve a result.

6. **Recursion**: FP often relies on recursion as a primary mechanism for iteration, as opposed to looping constructs found in imperative programming.

7. **Avoiding Side Effects**: FP strives to minimize or avoid side effects (changes in state or interactions with outside systems), which makes reasoning about and debugging programs easier.

## Advantages of Functional Programming
- **Modularity**: Code can be more modular and easier to test.
- **Concurrency**: Easier to write concurrent and parallel programs because there are no side effects and mutable state to manage.
- **Predictability**: Pure functions and immutability make the code more predictable and easier to debug.

## Examples of Functional Programming Languages
- **Haskell**: A purely functional programming language with strong static typing.
- **Erlang**: Designed for concurrent and distributed systems.
- **Lisp**: One of the oldest programming languages, supporting functional programming.
- **Scala**: Combines functional and object-oriented programming features.
- **F#**: A functional-first language on the .NET platform.

## Functional Programming in Other Languages
Languages like JavaScript, Python, and Java also support functional programming principles, even though they are not purely functional languages. They provide features like first-class functions, higher-order functions, and libraries or modules that support FP practices.

# Cahracteristics of OOP that fit into FP

Functional programming is not at odd with [object-oriented-programming](/wiki/object-oriented-programming/). Of the four main pillars of OOP, only inheritance doesn't fit into functional programming.

Encapsulation, abstraction and polymorphism are all part of FP.

# References

Next -> [pure-functions](/wiki/pure-functions/)
