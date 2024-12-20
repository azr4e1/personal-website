+++
title = "Nil in Go"
author = "Lorenzo Drumond"
date = "2024-02-27T13:53:43"
tags = ["code",  "computer_science",  "values",  "zero",  "slice",  "channel",  "function",  "golang",  "interface",  "programming",  "nil",  "map"]
+++


In Go, nil is the zero value for pointers, interfaces, maps, slices, channels and function types, representing an uninitialized value.

nil doesn't mean some "undefined" state, it's a proper value in itself. An object in Go is nil simply if and only if its value is nil, which it can only be if it's of one of the aforementioned types.

An error is an interface, so nil is a valid value for one, unlike for a string. For obvious reasons a nil error represents no error.

# References
- https://stackoverflow.com/questions/35983118/what-does-nil-mean-in-golang
