+++
title = "One behaviour, one test"
author = "Lorenzo Drumond"
date = "2024-01-19T14:34:48"
tags = ["table",  "for_the_love_of_go",  "programming",  "golang"]
+++


Programming tests should be simple.

When what we want to test has multiple behaviours depending on the input, we should follow the following principle:

__One behaviour, one test__.

Multiple test cases for a single behavior in order to test a single behaviour. To test another behaviour, create a separate test.

# References
- John Arundel, For the Love of Go
