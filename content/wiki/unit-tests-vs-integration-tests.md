+++
title = "Unit tests VS Integration tests"
author = "Lorenzo Drumond"
date = "2024-02-09T15:08:39"
tags = ["integration",  "external",  "dependencies",  "unit",  "software",  "programming",  "safe",  "tests"]
+++


A __unit test__ tests some _unit_ of your code, such as a function, usually in isolation. Its job is to verify that the function's _logic_ is correct, so it tries to avoid using any external dependencies such as commands.

They need to be fast and lightweight, because we run them very often, and the only time they should fail is when something's wrong with the code.

An __integration test__, on the other hand, has the job to test what happens when we _do_ use those external dependencies. It validates our assumptions about how they work: for example, that we execute the right command in the right way.

Integration tests are not run as often as unit tests, because the only way they could break is if something external changed.


Unit tests check a program's behavior given certain assumptions about external dependencies. Integration tests check those assumptions are still correct.

# References
- John Arundel, The Power of Go: Tools
