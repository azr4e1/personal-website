+++
toc = true
hideReply = true
title = "Building an executable in Go"
author = "Lorenzo Drumond"
date = "2024-01-29T11:10:17"
tags = ["package",  "cross_compilation",  "golang",  "go_tools",  "main",  "programming",  "compiler",  "executable",  "compilation",  "build"]
+++


We can run the `main` package with `go run main.go`.

To build a binary, we can instead use `go build` inside our project folder.

The executable produced will correspond to the operating system and architecture of our PC.

If we want to produce executable for different operating system, we can use the `GOOS` environment variable to set it to a different os, and run `go build`. (e.g.: `GOOS=windows go build`)

If we want to produce executable for different CPU architecture, we can use the `GOARCH` environment variable to set it to a different architecture, and run `go build` (e.g.: `GOARCH=arm go build`)

## References
- John Arundel, For the Love of Go
- [the-init-function-in-go](/wiki/the-init-function-in-go/)
