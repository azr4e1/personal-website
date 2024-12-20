+++
title = "Closures"
author = "Lorenzo Drumond"
date = "2024-07-29T21:08:11"
tags = ["cache",  "referential",  "expensive",  "optimal",  "transparent",  "memoization",  "store",  "function",  "dynamic",  "boot_dev",  "speed",  "programming",  "optimization",  "algorithm",  "efficient"]
+++



In programming languages, a closure, also lexical closure or function closure, is a technique for implementing lexically scoped name binding in a language with first-class functions. Operationally, a closure is a record storing a function together with an environment. The environment is a mapping associating each free variable of the function (variables that are used locally, but defined in an enclosing scope) with the value or reference to which the name was bound when the closure was created. Unlike a plain function, a closure allows the function to access those captured variables through the closure's copies of their values or references, even when the function is invoked outside their scope.

A closure is a function that references variables from outside its own function body. The function definition and its environment are bundled together into a single entity.

Put simply, a closure is just a function that keeps track of some values from the place where it was defined, no matter where it is executed later on.

The whole point of a closure is that it's stateful. It's a function that "remembers" the values from the enclosing scope even after the enclosing scope has finished executing.

That means that in many cases, closures are not pure functions. They can mutate state outside of their scope and have side effects.

# References

- https://en.wikipedia.org/wiki/Closure_(computer_programming)
- boot.dev

Next -> [currying](/wiki/currying/)
