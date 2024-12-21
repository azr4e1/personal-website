+++
toc = true
hideReply = true
title = "Named result parameters in Go"
author = "Lorenzo Drumond"
date = "2024-01-29T10:43:28"
tags = ["parameters",  "body",  "signature",  "functions",  "type",  "result",  "named",  "bad_practice",  "variadic",  "golang",  "tuple",  "list",  "expression",  "naked",  "declare",  "programming",  "return",  "naked_return"]
+++


Besides giving name to parameters of a function, we can assign names to the results of a function, in its signature.

One reason to do so is documentation.

A side-effect of doing this is that the parameters are automatically _declared_ ([declaration-in-go]]) inside the function, so they can be assigned ([[assignment-statement-in-go](/wiki/declaration-in-go]]) inside the function, so they can be assigned ([[assignment-statement-in-go/)).

Go allow us to omit the names from the return statments in the case all the named result values are assigned; in this case, the values of these names would be implicitly returned. These style is called _naked returns_.

This is generally considered bad practice because it makes it more difficult to follow the logic flow.

## References
- [multiple-values-in-go-functions](/wiki/multiple-values-in-go-functions/)
- [functions-as-values-in-go](/wiki/functions-as-values-in-go/)
