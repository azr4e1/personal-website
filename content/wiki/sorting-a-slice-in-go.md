+++
toc = true
hideReply = true
title = "Sorting a slice in Go"
author = "Lorenzo Drumond"
date = "2024-01-22T15:26:28"
tags = ["programming",  "nil",  "map",  "struct",  "golang",  "element"]
+++


A slice is an _ordered_ collection of elements. A map is a random collection of elements. This means that when we want to compare the elements of a map (not the _keys_) agains a slice, we should make sure that both are sorted to avoid errors due to the fact that map is not ordered.

We can use the `slice.Slice` function, which takes a slice, and a comparison function that explains how any two elements of the slice should be ordered; this functions will order the slice _in place_.

## References
- [zero-values-and-default-values-in-go](/wiki/zero-values-and-default-values-in-go/)
