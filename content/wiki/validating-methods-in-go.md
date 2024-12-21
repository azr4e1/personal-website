+++
toc = true
hideReply = true
title = "Validating methods in Go"
author = "Lorenzo Drumond"
date = "2024-01-28T13:54:07"
tags = ["exported",  "programming",  "for_the_love_of_go",  "values",  "struct",  "golang",  "variables",  "methods",  "validation",  "accessor",  "unexported"]
+++


When we want to make sure that a field of a struct we've defined is not arbitrarily set by the user of our library, but is validated against allowed values, we have some options.

One option is to make that field unexported (lowercase initial, [exported-identifiers-in-go](/wiki/exported-identifiers-in-go/)), and then creating _accessor methods_ for the struct to set and get the field.

Another option is to make the whole struct unexported. This will make it impossible for users of our library to interact directly with the object. Then we can export a set of constructor functions and methods that will allow the user to interact with th eobject in a controlled manner, because these functions and methods will contain validation.

## References
- John Arundel, For the Love of Go

Next -> [unexported-fields-and-cmpequal-in-go](/wiki/unexported-fields-and-cmpequal-in-go/)
