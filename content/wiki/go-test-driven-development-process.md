+++
toc = true
title = "Go test driven development process"
author = "Lorenzo Drumond"
date = "2024-01-19T15:08:21"
tags = ["programming",  "golang",  "for_the_love_of_go",  "testing",  "development",  "red_green_refactor"]
+++


1. Start by writing a test for the function (even though it doesn't exist yet)
2. see the test fail with a compilation error because the function doesn't exist yet
3. write the minimum code necessary to make the test compile and fail
4. make sure that the test fails for the reason we expected, and check that the failure message is accurate and informative
5. write the minimum code necessary to make the test pass
6. optionally, tweak and improve the code, preferably without breaking the test
7. commit!

This is also known as the __red, green, refactor__ cycle.

## References
- John Arundel, For the Love of Go
