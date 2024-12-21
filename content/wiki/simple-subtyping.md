+++
toc = true
hideReply = true
title = "Simple subtyping"
author = "Lorenzo Drumond"
date = "2023-11-07T01:28:42"
tags = ["programming",  "computer_science",  "typing"]
+++



A type T is a subtype of type U if:
- every value from T is also in the set of values of U.
- every function from U type is also in the set of functions of T type

These two conditions guarantee that even if type T is different from U, variables of type T can always pretend to be U
