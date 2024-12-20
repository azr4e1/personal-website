+++
title = "Exiting in Go"
author = "Lorenzo Drumond"
date = "2024-01-29T11:13:57"
tags = ["package",  "golang",  "main",  "go_tools",  "code",  "panic",  "programming",  "exit",  "compiler",  "compilation",  "build"]
+++


A Go program automatically exits once it reaches the end of `main`. If we want to exit before that, we can use the `os.Exit` function.

We need to pass it a parameter called the `exit code`, which is just a number. Conventionally, a zero exit status indicates that everything's fine, while non-zero means some error occurred.

There is also `log.Fatal` and the `panic` function to exit early. Both of these will terminate immediatly with non-zero exit status.

# References
- John Arundel, For the Love of Go
- [the-init-function-in-go](/wiki/the-init-function-in-go/)
- [building-an-executable-in-go](/wiki/building-an-executable-in-go/)
