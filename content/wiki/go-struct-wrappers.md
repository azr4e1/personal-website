+++
toc = true
hideReply = true
title = "Go struct wrappers"
author = "Lorenzo Drumond"
date = "2024-01-22T17:44:41"
tags = ["golang",  "types",  "methods",  "wrapper",  "non_local",  "programming",  "receiver",  "struct"]
+++


When we create a new type from an existing one, the new type doesn't inherit the methods of the parent one.

What we can do instead is a technique called _wrapping_: we create a `struct` where one of the fields is of the type we want to inherit from.

This means that that field will have all the methods of the old type. Moreover, since this struct is local, we can define methods on top of it.

## References
- John Arundel, For the Love of Go
