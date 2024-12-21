+++
toc = true
hideReply = true
title = "Test cases"
author = "Lorenzo Drumond"
date = "2024-01-19T13:19:54"
tags = ["table",  "for_the_love_of_go",  "programming",  "golang"]
+++


If a function or feature we are developing can expect edge cases or change behaviour depending on the input, we need to be able to test these values to make sure it's bug-free.

We could write separate tests for each input values. However this can become tedious quickly.

Test cases allow us to test for many inputs as a single test: we define a list of inputs, together with the corresponding expected output, and then loop over them, calling the function and checking the output. If _any_ test case fails, the whole test fails.

These are also called _table tests_, because they represent the test data as a table of inputs and outputs.

## References
- John Arundel, For the Love of Go

Next -> [one-behaviour-one-test](/wiki/one-behaviour-one-test/)
