+++
title = "Compilation in Go"
author = "Lorenzo Drumond"
date = "2024-01-29T11:04:09"
tags = ["package",  "golang",  "go_tools",  "main",  "programming",  "compiler",  "compilation",  "build"]
+++


Go uses a program called _compiler_, which reads Go source code and translates it into machine code.

In order for Go code to produce an executable, there has to be some code ina special package called `main`.

Since you can't have more than one package in the same folder (except for test packages), you need to put `main` package in a subfolder of the project. Because the `main` package produces a command (the executable), it's conventional to name this folder `cmd`.

The `main` package also needs to contain the `main` function, which is where the program will start.

# References

Next -> [the-init-function-in-go](/wiki/the-init-function-in-go/)

Next -> [building-an-executable-in-go](/wiki/building-an-executable-in-go/)

Next -> [exiting-in-go](/wiki/exiting-in-go/)
