+++
toc = true
title = "Test coverage in Go"
author = "Lorenzo Drumond"
date = "2024-01-21T13:01:56"
tags = ["programming",  "golang",  "for_the_love_of_go",  "testing",  "command",  "coverage"]
+++


Test coverage refers to the portion of 'system' code which should be executed - _covered_ - by some test.

Go toolchain provides a command to check this:
```bash
go test -cover

```

If we want to see what statements are uncovered:
```bash
go test -coverprofile=coverage.out
go tool cover -html=coverage.out
```

This will generate an HTML output that will open the browser automatically. The covered code is highlighted in green, uncovered in red, and ignored in grey.

Definitions, constants and so on are just instructions to the compiler, and don't result in any generated object code in your program binary, so the coverage tool ignores them.

## References
- John Arundel, For the Love of Go
