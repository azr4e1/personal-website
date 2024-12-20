+++
toc = true
title = "Non-existent keys in Go maps"
author = "Lorenzo Drumond"
date = "2024-01-22T14:45:54"
tags = ["nil",  "programming",  "golang",  "struct",  "map",  "element"]
+++


In Go maps, looking up a non-existent key doesn't cause an error; instead, it returns the zero value ([zero-values-and-default-values-in-go](/wiki/zero-values-and-default-values-in-go/)) of the element type.

## References

Next -> [sorting-a-slice-in-go](/wiki/sorting-a-slice-in-go/)
