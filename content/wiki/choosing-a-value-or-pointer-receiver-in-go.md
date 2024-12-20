+++
toc = true
title = "Choosing a value or pointer receiver in Go"
author = "Lorenzo Drumond"
date = "2024-02-27T13:20:29"
tags = ["golang",  "stack",  "programming",  "reference",  "pass_by",  "heap",  "for_the_love_of_go",  "value",  "pointer",  "methods"]
+++



In Go, arguments are always passed by value. This means that values are always copied.

If you pass a pointer, the value of the pointer will be passed by copy, but the method will be able to access the value the pointers points at without copying.

There are two reasons to use a pointer receiver:

1. The method can modify the value that its receiver points to
2. Avoid copying the value on each method call. This can be more efficient if the receiver is a large struct.

In general, all methods on a given type should have either value or pointer receiver, but not a mixture of both


## References
- [go-types-and-methods](/wiki/go-types-and-methods/)

Next -> [interfaces-in-go](/wiki/interfaces-in-go/)
