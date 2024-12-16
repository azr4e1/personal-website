+++
title = "Exported Identifiers in Go"
author = "Lorenzo Drumond"
date = "2024-01-20T18:21:16"
tags = ["programming",  "type",  "golang",  "composite",  "struct",  "github",  "for_the_love_of_go",  "capital_letter",  "packages",  "documentation",  "modules"]
+++


# Exported Identifiers in Go
Names with initial capital letters have a special meaning in Go.

Anything with such a name is available outside the package where it's defined (it's _exported_).

If you define a type, function, variable or anything else whose name starts with a lowercase letter, it is _unexported_ and you won't be able to refer to it in code that's outside this package.

Exported names are things that the package intends to be _public_, while unexported names are things meant to be _private_ (the package is going to use internally)

# References
- John Arundel, For the Love of Go
