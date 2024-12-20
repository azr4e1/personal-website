+++
title = "The init function in Go"
author = "Lorenzo Drumond"
date = "2024-01-29T11:08:05"
tags = ["package",  "golang",  "main",  "go_tools",  "programming",  "compiler",  "compilation",  "build"]
+++


`main` function is not necessarily the first thing run.

If there is a function name `init`, that will run first.

If your `main` package imports other packages, and they have `init` functions, they will also be run before your `main` function starts.

`init` is a bit of black magic, and there are other ways to initialise resource that are more clear to the control flow. Like declaring variable at package scope with functions.

# References
- John Arundel, For the Love of Go
