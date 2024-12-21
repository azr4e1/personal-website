+++
toc = true
hideReply = true
title = "Writing tests"
author = "Lorenzo Drumond"
date = "2024-01-18T13:56:08"
tags = ["programming",  "golang",  "for_the_love_of_go",  "snippet",  "tests",  "excerpt"]
+++


One way to improve our confidence in the program’s correctness is to write tests for it.

A test is also a program, but it’s a program specifically designed to run another program with various different inputs, and check its result. The test verifies that the program actually behaves the way it’s supposed to.

It’s a good idea to write the test even before you start writing the function it tests. By writing the test first, you are forced to think about what the program actually needs to do. You also have to design its interface (the way users interact with the program). If it’s really awkward to call your function, or it has a name that doesn’t make sense in the context where it’s used, all of these things will be obvious when you write your test.

Writing tests is not just about gaining confidence that your code is correct, although that’s definitely useful. It’s also a powerful process for designing well-structured programs with good APIs. A phrase I like that describes this process is “development, guided by tests”.

## References
- John Arundel, For the Love of Go
