+++
title = "Go main package"
author = "Lorenzo Drumond"
date = "2024-01-19T15:46:44"
tags = ["golang",  "main",  "control",  "programming",  "executable",  "start",  "flow",  "run"]
+++


# Go main package
Go is a compiled, statically typed language.

Go uses a compiler to turn a text file containing go code into an executable binary file. The compiler translates Go programs into machine code, producing an executable binary that we can then run.

In order for this to happen, there has to be at least some code in a special package named `main`.

N.B.: We can't have more than one package into the same folder.

Because the `main` package produces a command (executable), it's conventional to name this folder `cmd`,

A program needs to start somewhere. The way we tell it is by defining a special function, also named `main`

The flow of control in a go program begins at the beginning of the `main` function, and works through it in statement order. When it reaches the end (if) of the `main` function, the program stops.

# References
- John Arundel, For the Love of Go

Next -> [compilation-in-go](/wiki/compilation-in-go/)
