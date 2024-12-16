+++
title = "Go tests"
author = "Lorenzo Drumond"
date = "2024-01-18T14:41:06"
tags = ["computer_science",  "programming",  "testing",  "golang"]
+++


# Go tests
Go provides the built-in `testing` package for tests.

Each test in Go is a function, with some special requirements:
- it must be in a file whose name ends in `_test.go`;
- the name of a test function must begin with the word `Test`;
- it has to accept a parameter whose type is `*testing.T`;
- they don't return anything.

When all this requirements are satisfied, you can run the tests from the terminal with: `go test`

# References
