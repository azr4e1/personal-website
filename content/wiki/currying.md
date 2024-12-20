+++
toc = true
title = "Currying"
author = "Lorenzo Drumond"
date = "2024-07-29T21:35:23"
tags = ["cache",  "expensive",  "referential",  "optimal",  "transparent",  "memoization",  "store",  "function",  "dynamic",  "efficient",  "boot_dev",  "speed",  "optimization",  "algorithm",  "programming"]
+++



Function currying is a specific kind of function transformation where we
translate a single function that accepts multiple arguments into multiple
functions that each accept a single argument.

e.g.:

```python
def sum(a):
  def inner_sum(b):
    return a + b
  return inner_sum

print(sum(1)(2))
```

```python
final_volume = box_volume(3, 4, 5)
print(final_volume)

def box_volume(length):
  def box_volume_with_len(width):
    def box_volume_with_len_width(height):
      return length * width * height
    return box_volume_with_len_width
  return box_volume_with_len

final_volume = box_volume(3)(4)(5)
print(final_volume)
```

The sum function only takes a single input, a. It returns a new function that
takes a single input, b. This new function when called with a value for b will
return the sum of a and b.

Currying is a technique in functional programming where a function that takes multiple arguments is transformed into a sequence of functions, each taking a single argument. Instead of taking all arguments at once, a curried function takes the first argument and returns a new function that takes the second argument, and so on, until all arguments are provided.

## Key Concepts of Currying

- Transformation: Currying transforms a function with multiple parameters into a series of nested functions, each with a single parameter.
- Partial Application: Currying facilitates partial application, where you can fix a few arguments of the function and get a new function that takes the remaining arguments.

## References
