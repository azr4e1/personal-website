+++
title = "Pointers to struct"
author = "Lorenzo Drumond"
date = "2024-02-23T13:44:08"
tags = ["golang",  "reference",  "pointer",  "value",  "pass_by",  "stack",  "programming",  "heap",  "for_the_love_of_go"]
+++


# Pointers to struct
Struct fields can be accessed through a struct pointer.

To access the field `X` of a struct when we have the struct pointer `p` we could write `(*p).X`. However, that notation is cumbersome, so the language permits us instead to write just `p.X`, without the explicit dereference.

That is called `automatic dereference` [pointer-methods-in-go](/wiki/pointer-methods-in-go/)

# References
- https://go.dev/tour/moretypes/4
- [pointer-methods-in-go](/wiki/pointer-methods-in-go/)
