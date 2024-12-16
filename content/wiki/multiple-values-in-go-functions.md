+++
title = "Multiple values in Go functions"
author = "Lorenzo Drumond"
date = "2024-01-19T14:29:05"
tags = ["values",  "golang",  "errors",  "programming",  "functions"]
+++


# Multiple values in Go functions
Go functions are not limited to returning just a single value.

It is very common for Go functions to return two values: the first being the result of the computation (the _data_ value), and the second being an _error_ value.

The error value indicates whether or not the data value is valid.

When the function receives valid input and return successfully, its error value should be set to `nil`. Otherwise, it should be something meaningful. The convention for the non error value is to return 0.

# References
