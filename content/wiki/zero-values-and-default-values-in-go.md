+++
toc = true
title = "Zero values and default values in Go"
author = "Lorenzo Drumond"
date = "2024-01-20T17:44:43"
tags = ["programming",  "type",  "golang",  "zero",  "for_the_love_of_go",  "default",  "variables"]
+++


Variables that get declared but not assigned have a default value.

That default value depends on the type of the variable.

Each type in Go has a _zero value_; for `int` and any numeric type, the default value is 0.

Zero value for `string` is the empty string "".

Booleans default to `false`.

## References
- John Arundel, For the Love of Go

Next -> [shorthand-assignment-in-go](/wiki/shorthand-assignment-in-go/)
