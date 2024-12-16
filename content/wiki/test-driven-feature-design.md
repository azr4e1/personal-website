+++
title = "Test driven feature design"
author = "Lorenzo Drumond"
date = "2024-01-19T13:16:34"
tags = ["implementation",  "programming",  "null",  "golang",  "for_the_love_of_go",  "testing"]
+++


# Test driven feature design
When designing new features and functions, we start by writing a test for that function.

We then write a _null implementation_ of that function: that is, an implementation that does nothing; for example, it always return 0.

This is so that we can test that our test fails. This will give us some confidence about the fact that our tests can detect bugs.

Last step is to write the correct implementation of the function and test it.

# References
- John Arundel, For the Love of Go

Next -> [go-test-driven-development-process](/wiki/go-test-driven-development-process/)
